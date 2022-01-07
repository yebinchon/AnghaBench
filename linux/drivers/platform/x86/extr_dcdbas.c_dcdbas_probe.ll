; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_dcdbas_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dcdbas.c_dcdbas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HC_ACTION_NONE = common dso_local global i32 0, align 4
@host_control_action = common dso_local global i32 0, align 4
@HC_SMITYPE_NONE = common dso_local global i32 0, align 4
@host_control_smi_type = common dso_local global i32 0, align 4
@dcdbas_pdev = common dso_local global %struct.platform_device* null, align 8
@dcdbas_attr_group = common dso_local global i32 0, align 4
@dcdbas_reboot_nb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s (version %s)\0A\00", align 1
@DRIVER_DESCRIPTION = common dso_local global i32 0, align 4
@DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dcdbas_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcdbas_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @HC_ACTION_NONE, align 4
  store i32 %5, i32* @host_control_action, align 4
  %6 = load i32, i32* @HC_SMITYPE_NONE, align 4
  store i32 %6, i32* @host_control_smi_type, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  store %struct.platform_device* %7, %struct.platform_device** @dcdbas_pdev, align 8
  %8 = call i32 (...) @dcdbas_check_wsmt()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** @dcdbas_pdev, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @DMA_BIT_MASK(i32 32)
  %17 = call i32 @dma_set_coherent_mask(%struct.TYPE_3__* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %13
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @sysfs_create_group(i32* %25, i32* @dcdbas_attr_group)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %22
  %32 = call i32 @register_reboot_notifier(i32* @dcdbas_reboot_nb)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @DRIVER_DESCRIPTION, align 4
  %36 = load i32, i32* @DRIVER_VERSION, align 4
  %37 = call i32 @dev_info(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %29, %20, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dcdbas_check_wsmt(...) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
