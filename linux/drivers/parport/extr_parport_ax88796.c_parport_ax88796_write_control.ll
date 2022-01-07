; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_write_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ax88796.c_parport_ax88796_write_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }
%struct.ax_drvdata = type { i32, i32 }

@AX_CPR_nDOE = common dso_local global i32 0, align 4
@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@AX_CPR_STRB = common dso_local global i32 0, align 4
@PARPORT_CONTROL_AUTOFD = common dso_local global i8 0, align 1
@AX_CPR_ATFD = common dso_local global i32 0, align 4
@PARPORT_CONTROL_INIT = common dso_local global i8 0, align 1
@AX_CPR_nINIT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_SELECT = common dso_local global i8 0, align 1
@AX_CPR_SLCTIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"write_control: ctrl=%02x, cpr=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"write_control: read != set (%02x, %02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*, i8)* @parport_ax88796_write_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_ax88796_write_control(%struct.parport* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ax_drvdata*, align 8
  %6 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.parport*, %struct.parport** %3, align 8
  %8 = call %struct.ax_drvdata* @pp_to_drv(%struct.parport* %7)
  store %struct.ax_drvdata* %8, %struct.ax_drvdata** %5, align 8
  %9 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %10 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readb(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @AX_CPR_nDOE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @AX_CPR_STRB, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @AX_CPR_ATFD, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @PARPORT_CONTROL_INIT, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @AX_CPR_nINIT, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @AX_CPR_SLCTIN, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %61 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8, i8* %4, align 1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 zeroext %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %68 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @writeb(i32 %66, i32 %69)
  %71 = load %struct.parport*, %struct.parport** %3, align 8
  %72 = call zeroext i8 @parport_ax88796_read_control(%struct.parport* %71)
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %59
  %78 = load %struct.ax_drvdata*, %struct.ax_drvdata** %5, align 8
  %79 = getelementptr inbounds %struct.ax_drvdata, %struct.ax_drvdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.parport*, %struct.parport** %3, align 8
  %82 = call zeroext i8 @parport_ax88796_read_control(%struct.parport* %81)
  %83 = load i8, i8* %4, align 1
  %84 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %82, i8 zeroext %83)
  br label %85

85:                                               ; preds = %77, %59
  ret void
}

declare dso_local %struct.ax_drvdata* @pp_to_drv(%struct.parport*) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local zeroext i8 @parport_ax88796_read_control(%struct.parport*) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
