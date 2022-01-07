; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_syscon-reboot.c_syscon_reboot_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_syscon-reboot.c_syscon_reboot_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.syscon_reboot_context = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"unable to read 'value' and 'mask'\00", align 1
@syscon_restart_handle = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"can't register restart notifier (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @syscon_reboot_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_reboot_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.syscon_reboot_context*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.syscon_reboot_context* @devm_kzalloc(%struct.device* %12, i32 24, i32 %13)
  store %struct.syscon_reboot_context* %14, %struct.syscon_reboot_context** %4, align 8
  %15 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %16 = icmp ne %struct.syscon_reboot_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %111

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @syscon_regmap_lookup_by_phandle(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %26 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %28 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %34 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %111

37:                                               ; preds = %20
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %43 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %42, i32 0, i32 0
  %44 = call i32 @of_property_read_u32(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %111

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %55 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %54, i32 0, i32 1
  %56 = call i32 @of_property_read_u32(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %62 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %61, i32 0, i32 2
  %63 = call i32 @of_property_read_u32(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %49
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %111

74:                                               ; preds = %66, %49
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %79 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %82 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %84 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %83, i32 0, i32 2
  store i32 -1, i32* %84, align 4
  br label %92

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %90 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %89, i32 0, i32 2
  store i32 -1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %77
  %93 = load i32, i32* @syscon_restart_handle, align 4
  %94 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %95 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  %97 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %98 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 192, i32* %99, align 4
  %100 = load %struct.syscon_reboot_context*, %struct.syscon_reboot_context** %4, align 8
  %101 = getelementptr inbounds %struct.syscon_reboot_context, %struct.syscon_reboot_context* %100, i32 0, i32 3
  %102 = call i32 @register_restart_handler(%struct.TYPE_2__* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %69, %46, %32, %17
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.syscon_reboot_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
