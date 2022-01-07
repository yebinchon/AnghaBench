; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_poweroff_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_poweroff_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i64, i32, i32, i32, i64, i64, i64 }

@ARCHE_PLATFORM_STATE_OFF = common dso_local global i64 0, align 8
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @poweroff_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poweroff_seq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.arche_apb_ctrl_drvdata* %8, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %9 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %10 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %15 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %89

20:                                               ; preds = %13
  %21 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %22 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %28 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %34 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @devm_gpiod_put(%struct.device* %32, i64 %35)
  br label %37

37:                                               ; preds = %31, %26, %20
  %38 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %39 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %44 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @gpiod_set_value(i64 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %49 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @IS_ERR(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %55 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @regulator_is_enabled(i32 %56)
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %61 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @regulator_disable(i32 %62)
  br label %64

64:                                               ; preds = %59, %53, %47
  %65 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %66 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @IS_ERR(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %64
  %71 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %72 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @regulator_is_enabled(i32 %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %78 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @regulator_disable(i32 %79)
  br label %81

81:                                               ; preds = %76, %70, %64
  %82 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %83 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @assert_reset(i32 %84)
  %86 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %87 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %4, align 8
  %88 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %19
  ret void
}

declare dso_local %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @devm_gpiod_put(%struct.device*, i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i64 @regulator_is_enabled(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @assert_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
