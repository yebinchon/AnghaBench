; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.ax_drvdata = type { i32 }

@AX_SPR_BUSY = common dso_local global i32 0, align 4
@PARPORT_STATUS_BUSY = common dso_local global i32 0, align 4
@AX_SPR_ACK = common dso_local global i32 0, align 4
@PARPORT_STATUS_ACK = common dso_local global i32 0, align 4
@AX_SPR_ERR = common dso_local global i32 0, align 4
@PARPORT_STATUS_ERROR = common dso_local global i32 0, align 4
@AX_SPR_SLCT = common dso_local global i32 0, align 4
@PARPORT_STATUS_SELECT = common dso_local global i32 0, align 4
@AX_SPR_PE = common dso_local global i32 0, align 4
@PARPORT_STATUS_PAPEROUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*)* @parport_ax88796_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @parport_ax88796_read_status(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.ax_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %6 = load %struct.parport*, %struct.parport** %2, align 8
  %7 = call %struct.ax_drvdata* @pp_to_drv(%struct.parport* %6)
  store %struct.ax_drvdata* %7, %struct.ax_drvdata** %3, align 8
  %8 = load %struct.ax_drvdata*, %struct.ax_drvdata** %3, align 8
  %9 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readb(i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AX_SPR_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AX_SPR_ACK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @PARPORT_STATUS_ACK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @AX_SPR_ERR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @PARPORT_STATUS_ERROR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AX_SPR_SLCT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @PARPORT_STATUS_SELECT, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @AX_SPR_PE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @PARPORT_STATUS_PAPEROUT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %5, align 4
  %58 = trunc i32 %57 to i8
  ret i8 %58
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(%struct.parport*) #1

declare dso_local i32 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
