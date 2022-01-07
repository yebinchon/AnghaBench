; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_ocelot-reset.c_ocelot_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_ocelot-reset.c_ocelot_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ocelot_reset_context = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mscc,ocelot-cpu-syscon\00", align 1
@ocelot_restart_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't register restart notifier (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ocelot_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ocelot_reset_context*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ocelot_reset_context* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.ocelot_reset_context* %13, %struct.ocelot_reset_context** %4, align 8
  %14 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %15 = icmp ne %struct.ocelot_reset_context* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %27 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %29 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %35 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %71

38:                                               ; preds = %19
  %39 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %41 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %43 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %49 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %38
  %53 = load i32, i32* @ocelot_restart_handle, align 4
  %54 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %55 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %58 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 192, i32* %59, align 4
  %60 = load %struct.ocelot_reset_context*, %struct.ocelot_reset_context** %4, align 8
  %61 = getelementptr inbounds %struct.ocelot_reset_context, %struct.ocelot_reset_context* %60, i32 0, i32 0
  %62 = call i32 @register_restart_handler(%struct.TYPE_2__* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %52
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %47, %33, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ocelot_reset_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
