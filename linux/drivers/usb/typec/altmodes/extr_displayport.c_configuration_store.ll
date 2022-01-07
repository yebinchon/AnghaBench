; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_configuration_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_configuration_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dp_altmode = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@configurations = common dso_local global i32 0, align 4
@DP_STATE_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DP_CONF_DFP_D = common dso_local global i32 0, align 4
@DP_CAP_DFP_D = common dso_local global i32 0, align 4
@DP_CONF_UFP_D = common dso_local global i32 0, align 4
@DP_CAP_UFP_D = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DP_CONF_DUAL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @configuration_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configuration_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dp_altmode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.dp_altmode* @dev_get_drvdata(%struct.device* %15)
  store %struct.dp_altmode* %16, %struct.dp_altmode** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @configurations, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sysfs_match_string(i32 %17, i8* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %107

24:                                               ; preds = %4
  %25 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %26 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %29 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DP_STATE_IDLE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %93

36:                                               ; preds = %24
  %37 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %38 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DP_CAP_CAPABILITY(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @DP_CONF_DFP_D, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @DP_CAP_DFP_D, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %36
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @DP_CONF_UFP_D, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @DP_CAP_UFP_D, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %46
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %93

63:                                               ; preds = %55, %51
  %64 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %65 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DP_CONF_DUAL_D, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %75 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %63
  %81 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @dp_altmode_configure_vdm(%struct.dp_altmode* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %93

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %91 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %86, %60, %33
  %94 = load %struct.dp_altmode*, %struct.dp_altmode** %10, align 8
  %95 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  br label %104

102:                                              ; preds = %93
  %103 = load i64, i64* %9, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i64 [ %101, %99 ], [ %103, %102 ]
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %22
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.dp_altmode* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DP_CAP_CAPABILITY(i32) #1

declare dso_local i32 @dp_altmode_configure_vdm(%struct.dp_altmode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
