; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_rate_mgmt_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_set_rate_mgmt_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_rate_policy_settings }
%struct.conf_rate_policy_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_acx_set_rate_mgmt_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"acx set rate mgmt params\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_RATE_MGMT_ALL_PARAMS = common dso_local global i32 0, align 4
@ACX_SET_RATE_MGMT_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"acx set rate mgmt params failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_set_rate_mgmt_params(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_acx_set_rate_mgmt_params*, align 8
  %5 = alloca %struct.conf_rate_policy_settings*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_acx_set_rate_mgmt_params* null, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.conf_rate_policy_settings* %9, %struct.conf_rate_policy_settings** %5, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl12xx_acx_set_rate_mgmt_params* @kzalloc(i32 88, i32 %12)
  store %struct.wl12xx_acx_set_rate_mgmt_params* %13, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %14 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %15 = icmp ne %struct.wl12xx_acx_set_rate_mgmt_params* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %119

19:                                               ; preds = %1
  %20 = load i32, i32* @ACX_RATE_MGMT_ALL_PARAMS, align 4
  %21 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %22 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  %23 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %24 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %28 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %27, i32 0, i32 14
  store i8* %26, i8** %28, align 8
  %29 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %30 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %34 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %36 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %40 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %39, i32 0, i32 12
  store i8* %38, i8** %40, align 8
  %41 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %42 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %46 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %45, i32 0, i32 11
  store i8* %44, i8** %46, align 8
  %47 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %48 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %52 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %51, i32 0, i32 10
  store i8* %50, i8** %52, align 8
  %53 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %54 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %57 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %59 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %62 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %64 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %67 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %69 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %72 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %74 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %77 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %79 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %82 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %84 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %87 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %89 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %92 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %94 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %97 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %99 = getelementptr inbounds %struct.wl12xx_acx_set_rate_mgmt_params, %struct.wl12xx_acx_set_rate_mgmt_params* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.conf_rate_policy_settings*, %struct.conf_rate_policy_settings** %5, align 8
  %102 = getelementptr inbounds %struct.conf_rate_policy_settings, %struct.conf_rate_policy_settings* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %100, i32 %103, i32 4)
  %105 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %106 = load i32, i32* @ACX_SET_RATE_MGMT_PARAMS, align 4
  %107 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %108 = call i32 @wl1271_cmd_configure(%struct.wl1271* %105, i32 %106, %struct.wl12xx_acx_set_rate_mgmt_params* %107, i32 88)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %19
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @wl1271_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %115

114:                                              ; preds = %19
  br label %115

115:                                              ; preds = %114, %111
  %116 = load %struct.wl12xx_acx_set_rate_mgmt_params*, %struct.wl12xx_acx_set_rate_mgmt_params** %4, align 8
  %117 = call i32 @kfree(%struct.wl12xx_acx_set_rate_mgmt_params* %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl12xx_acx_set_rate_mgmt_params* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl12xx_acx_set_rate_mgmt_params*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_acx_set_rate_mgmt_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
