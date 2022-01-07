; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-axs10x.c_axs10x_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-axs10x.c_axs10x_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.axs10x_rst = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@axs10x_reset_ops = common dso_local global i32 0, align 4
@AXS10X_MAX_RESETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axs10x_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axs10x_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axs10x_rst*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.axs10x_rst* @devm_kzalloc(%struct.TYPE_5__* %7, i32 32, i32 %8)
  store %struct.axs10x_rst* %9, %struct.axs10x_rst** %4, align 8
  %10 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %11 = icmp ne %struct.axs10x_rst* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %20, %struct.resource* %21)
  %23 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %24 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %26 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %32 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %15
  %36 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %37 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %41 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %44 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32* @axs10x_reset_ops, i32** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %51 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @AXS10X_MAX_RESETS, align 4
  %54 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %55 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.axs10x_rst*, %struct.axs10x_rst** %4, align 8
  %60 = getelementptr inbounds %struct.axs10x_rst, %struct.axs10x_rst* %59, i32 0, i32 0
  %61 = call i32 @devm_reset_controller_register(%struct.TYPE_5__* %58, %struct.TYPE_6__* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %35, %30, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.axs10x_rst* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
