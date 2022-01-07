; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284_ops.c_parport_ieee1284_epp_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_ieee1284_ops.c_parport_ieee1284_epp_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.parport*)* }

@PARPORT_CONTROL_STROBE = common dso_local global i32 0, align 4
@PARPORT_CONTROL_AUTOFD = common dso_local global i32 0, align 4
@PARPORT_CONTROL_SELECT = common dso_local global i32 0, align 4
@PARPORT_CONTROL_INIT = common dso_local global i32 0, align 4
@PARPORT_STATUS_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parport_ieee1284_epp_write_data(%struct.parport* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.parport* %0, %struct.parport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.parport*, %struct.parport** %5, align 8
  %13 = load i32, i32* @PARPORT_CONTROL_STROBE, align 4
  %14 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PARPORT_CONTROL_SELECT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PARPORT_CONTROL_STROBE, align 4
  %21 = load i32, i32* @PARPORT_CONTROL_INIT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @parport_frob_control(%struct.parport* %12, i32 %19, i32 %22)
  %24 = load %struct.parport*, %struct.parport** %5, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %27, align 8
  %29 = load %struct.parport*, %struct.parport** %5, align 8
  %30 = call i32 %28(%struct.parport* %29)
  br label %31

31:                                               ; preds = %61, %4
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load %struct.parport*, %struct.parport** %5, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @parport_write_data(%struct.parport* %35, i8 zeroext %37)
  %39 = load %struct.parport*, %struct.parport** %5, align 8
  %40 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %41 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %42 = call i32 @parport_frob_control(%struct.parport* %39, i32 %40, i32 %41)
  %43 = load %struct.parport*, %struct.parport** %5, align 8
  %44 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %45 = call i64 @parport_poll_peripheral(%struct.parport* %43, i32 %44, i32 0, i32 10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %66

48:                                               ; preds = %34
  %49 = load %struct.parport*, %struct.parport** %5, align 8
  %50 = load i32, i32* @PARPORT_CONTROL_AUTOFD, align 4
  %51 = call i32 @parport_frob_control(%struct.parport* %49, i32 %50, i32 0)
  %52 = load %struct.parport*, %struct.parport** %5, align 8
  %53 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %54 = load i32, i32* @PARPORT_STATUS_BUSY, align 4
  %55 = call i64 @parport_poll_peripheral(%struct.parport* %52, i32 %53, i32 %54, i32 5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %66

58:                                               ; preds = %48
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  br label %31

66:                                               ; preds = %57, %47, %31
  %67 = load %struct.parport*, %struct.parport** %5, align 8
  %68 = load i32, i32* @PARPORT_CONTROL_STROBE, align 4
  %69 = call i32 @parport_frob_control(%struct.parport* %67, i32 %68, i32 0)
  %70 = load i64, i64* %10, align 8
  ret i64 %70
}

declare dso_local i32 @parport_frob_control(%struct.parport*, i32, i32) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i8 zeroext) #1

declare dso_local i64 @parport_poll_peripheral(%struct.parport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
