; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_nvmem-reboot-mode.c_nvmem_reboot_mode_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_nvmem-reboot-mode.c_nvmem_reboot_mode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.nvmem_reboot_mode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmem_reboot_mode_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reboot-mode\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to get the nvmem cell reboot-mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't register reboot mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvmem_reboot_mode_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmem_reboot_mode_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmem_reboot_mode*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvmem_reboot_mode* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.nvmem_reboot_mode* %9, %struct.nvmem_reboot_mode** %5, align 8
  %10 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %11 = icmp ne %struct.nvmem_reboot_mode* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %19 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32* %17, i32** %20, align 8
  %21 = load i32, i32* @nvmem_reboot_mode_write, align 4
  %22 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %23 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @devm_nvmem_cell_get(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %29 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %31 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %15
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %40 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %15
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.nvmem_reboot_mode*, %struct.nvmem_reboot_mode** %5, align 8
  %47 = getelementptr inbounds %struct.nvmem_reboot_mode, %struct.nvmem_reboot_mode* %46, i32 0, i32 0
  %48 = call i32 @devm_reboot_mode_register(i32* %45, %struct.TYPE_2__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %35, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.nvmem_reboot_mode* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_nvmem_cell_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reboot_mode_register(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
