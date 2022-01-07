; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_coldboot_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_coldboot_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i64, i32, i64, i32, i32, i64, i64 }

@ARCHE_PLATFORM_STATE_ACTIVE = common dso_local global i64 0, align 8
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to enable core regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable IO regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @coldboot_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coldboot_seq(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.arche_apb_ctrl_drvdata* %10, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %11 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %12 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %17 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %100

22:                                               ; preds = %15
  %23 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %24 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @assert_reset(i32 %25)
  %27 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %28 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %34 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %40 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @devm_gpiod_put(%struct.device* %38, i64 %41)
  br label %43

43:                                               ; preds = %37, %32, %22
  %44 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %45 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @IS_ERR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regulator_enable(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %100

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %63 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IS_ERR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %69 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regulator_enable(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %100

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @apb_bootret_deassert(%struct.device* %80)
  %82 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %83 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %88 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @gpiod_set_value(i64 %89, i32 1)
  br label %91

91:                                               ; preds = %86, %79
  %92 = call i32 @usleep_range(i32 100, i32 200)
  %93 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %94 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @deassert_reset(i32 %95)
  %97 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %98 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %99 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %91, %74, %56, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @assert_reset(i32) #1

declare dso_local i32 @devm_gpiod_put(%struct.device*, i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @apb_bootret_deassert(%struct.device*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @deassert_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
