; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.arche_platform_drvdata = type { i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ARCHE_PLATFORM_STATE_OFF = common dso_local global i64 0, align 8
@apb_poweroff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@ARCHE_PLATFORM_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@ARCHE_PLATFORM_STATE_STANDBY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"standby state not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"fw_flashing\00", align 1
@ARCHE_PLATFORM_STATE_FW_FLASHING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"unknown state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.arche_platform_drvdata*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.arche_platform_drvdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.arche_platform_drvdata* %12, %struct.arche_platform_drvdata** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %14 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @sysfs_streq(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %4
  %20 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %21 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARCHE_PLATFORM_STATE_OFF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %108

26:                                               ; preds = %19
  %27 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %28 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @apb_poweroff, align 4
  %31 = call i32 @device_for_each_child(i32 %29, i32* null, i32 %30)
  %32 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %33 = call i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata* %32)
  br label %107

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @sysfs_streq(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %40 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ARCHE_PLATFORM_STATE_ACTIVE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %108

45:                                               ; preds = %38
  %46 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %47 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @apb_poweroff, align 4
  %50 = call i32 @device_for_each_child(i32 %48, i32* null, i32 %49)
  %51 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %52 = call i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata* %51)
  %53 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %54 = call i32 @arche_platform_wd_irq_en(%struct.arche_platform_drvdata* %53)
  %55 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %56 = call i32 @arche_platform_coldboot_seq(%struct.arche_platform_drvdata* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %108

60:                                               ; preds = %45
  br label %106

61:                                               ; preds = %34
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @sysfs_streq(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %67 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ARCHE_PLATFORM_STATE_STANDBY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %108

72:                                               ; preds = %65
  %73 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %74 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %105

77:                                               ; preds = %61
  %78 = load i8*, i8** %7, align 8
  %79 = call i64 @sysfs_streq(i8* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %83 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ARCHE_PLATFORM_STATE_FW_FLASHING, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %108

88:                                               ; preds = %81
  %89 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %90 = call i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata* %89)
  %91 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %92 = call i32 @arche_platform_fw_flashing_seq(%struct.arche_platform_drvdata* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %108

96:                                               ; preds = %88
  br label %104

97:                                               ; preds = %77
  %98 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %99 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %97, %96
  br label %105

105:                                              ; preds = %104, %72
  br label %106

106:                                              ; preds = %105, %60
  br label %107

107:                                              ; preds = %106, %26
  br label %108

108:                                              ; preds = %107, %95, %87, %71, %59, %44, %25
  %109 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %9, align 8
  %110 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  br label %119

117:                                              ; preds = %108
  %118 = load i64, i64* %8, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi i64 [ %116, %114 ], [ %118, %117 ]
  %121 = trunc i64 %120 to i32
  ret i32 %121
}

declare dso_local %struct.arche_platform_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @device_for_each_child(i32, i32*, i32) #1

declare dso_local i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @arche_platform_wd_irq_en(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @arche_platform_coldboot_seq(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @arche_platform_fw_flashing_seq(%struct.arche_platform_drvdata*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
