; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_syscon-reboot-mode.c_syscon_reboot_mode_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_syscon-reboot-mode.c_syscon_reboot_mode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.syscon_reboot_mode = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@syscon_reboot_mode_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't register reboot mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @syscon_reboot_mode_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_reboot_mode_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.syscon_reboot_mode*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.syscon_reboot_mode* @devm_kzalloc(%struct.TYPE_7__* %7, i32 32, i32 %8)
  store %struct.syscon_reboot_mode* %9, %struct.syscon_reboot_mode** %5, align 8
  %10 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %11 = icmp ne %struct.syscon_reboot_mode* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %19 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %20, align 8
  %21 = load i32, i32* @syscon_reboot_mode_write, align 4
  %22 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %23 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %26 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @syscon_node_to_regmap(i32 %32)
  %34 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %35 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %37 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %43 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %15
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %52 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %51, i32 0, i32 1
  %53 = call i64 @of_property_read_u32(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %79

58:                                               ; preds = %46
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %64 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %63, i32 0, i32 0
  %65 = call i64 @of_property_read_u32(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.syscon_reboot_mode*, %struct.syscon_reboot_mode** %5, align 8
  %69 = getelementptr inbounds %struct.syscon_reboot_mode, %struct.syscon_reboot_mode* %68, i32 0, i32 2
  %70 = call i32 @devm_reboot_mode_register(%struct.TYPE_7__* %67, %struct.TYPE_8__* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(%struct.TYPE_7__* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %58
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %55, %41, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.syscon_reboot_mode* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @devm_reboot_mode_register(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
