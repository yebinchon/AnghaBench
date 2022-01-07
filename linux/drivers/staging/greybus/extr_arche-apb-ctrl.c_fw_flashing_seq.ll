; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_fw_flashing_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_fw_flashing_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i64, i32, i64, i64, i32, i32, i64 }

@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to enable core regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable IO regulator\0A\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i64 0, align 8
@GPIOD_OUT_LOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"spi-en\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed requesting SPI bus en GPIO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fw_flashing_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_flashing_seq(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.arche_apb_ctrl_drvdata* %11, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %12 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %13 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %18 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %88

23:                                               ; preds = %16
  %24 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %25 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_enable(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %88

34:                                               ; preds = %23
  %35 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %36 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regulator_enable(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %88

45:                                               ; preds = %34
  %46 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %47 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %52 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @GPIOD_OUT_HIGH, align 8
  store i64 %56, i64* %7, align 8
  br label %59

57:                                               ; preds = %50
  %58 = load i64, i64* @GPIOD_OUT_LOW, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @devm_gpiod_get(%struct.device* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %64 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %66 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @IS_ERR(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %72 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @PTR_ERR(i64 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %88

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %82 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @assert_reset(i32 %83)
  %85 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %86 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %5, align 8
  %87 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %80, %70, %41, %30, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @devm_gpiod_get(%struct.device*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @assert_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
