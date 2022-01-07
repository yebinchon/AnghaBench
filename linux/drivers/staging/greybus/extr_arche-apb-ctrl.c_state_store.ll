; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-apb-ctrl.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.platform_device = type { i32 }
%struct.arche_apb_ctrl_drvdata = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ARCHE_PLATFORM_STATE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@ARCHE_PLATFORM_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@ARCHE_PLATFORM_STATE_STANDBY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"fw_flashing\00", align 1
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"unknown state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca %struct.arche_apb_ctrl_drvdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %10, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %17 = call %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.arche_apb_ctrl_drvdata* %17, %struct.arche_apb_ctrl_drvdata** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @sysfs_streq(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %23 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %5, align 8
  br label %111

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %31 = call i32 @poweroff_seq(%struct.platform_device* %30)
  br label %101

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @sysfs_streq(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %38 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %111

44:                                               ; preds = %36
  %45 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %46 = call i32 @poweroff_seq(%struct.platform_device* %45)
  %47 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %48 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %51 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %53 = call i32 @coldboot_seq(%struct.platform_device* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %59 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %44
  br label %100

61:                                               ; preds = %32
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @sysfs_streq(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %67 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ARCHE_PLATFORM_STATE_STANDBY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %111

73:                                               ; preds = %65
  %74 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %75 = call i32 @standby_boot_seq(%struct.platform_device* %74)
  store i32 %75, i32* %12, align 4
  br label %99

76:                                               ; preds = %61
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @sysfs_streq(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.arche_apb_ctrl_drvdata*, %struct.arche_apb_ctrl_drvdata** %11, align 8
  %82 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, %struct.arche_apb_ctrl_drvdata* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %5, align 8
  br label %111

88:                                               ; preds = %80
  %89 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %90 = call i32 @poweroff_seq(%struct.platform_device* %89)
  %91 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %92 = call i32 @fw_flashing_seq(%struct.platform_device* %91)
  store i32 %92, i32* %12, align 4
  br label %98

93:                                               ; preds = %76
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %73
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %29
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  br label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %9, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i64 [ %106, %104 ], [ %108, %107 ]
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %109, %86, %71, %42, %27
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.arche_apb_ctrl_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @poweroff_seq(%struct.platform_device*) #1

declare dso_local i32 @coldboot_seq(%struct.platform_device*) #1

declare dso_local i32 @standby_boot_seq(%struct.platform_device*) #1

declare dso_local i32 @fw_flashing_seq(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
