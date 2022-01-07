; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/axis-fifo/extr_axis-fifo.c_axis_fifo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.axis_fifo = type { %struct.TYPE_2__*, i32, i32, i32, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32 }

@axis_fifo_attrs_group = common dso_local global i32 0, align 4
@axis_fifo_driver_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axis_fifo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axis_fifo_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.axis_fifo*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.axis_fifo* @dev_get_drvdata(%struct.device* %7)
  store %struct.axis_fifo* %8, %struct.axis_fifo** %4, align 8
  %9 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %10 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %9, i32 0, i32 4
  %11 = load %struct.device*, %struct.device** %10, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = call i32 @sysfs_remove_group(i32* %12, i32* @axis_fifo_attrs_group)
  %14 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %15 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %14, i32 0, i32 5
  %16 = call i32 @cdev_del(i32* %15)
  %17 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %18 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %17, i32 0, i32 4
  %19 = load %struct.device*, %struct.device** %18, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %19, i32* null)
  %21 = load i32, i32* @axis_fifo_driver_class, align 4
  %22 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %23 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_destroy(i32 %21, i32 %24)
  %26 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %27 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @unregister_chrdev_region(i32 %28, i32 1)
  %30 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %31 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.axis_fifo* %33)
  %35 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %36 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @iounmap(i32 %37)
  %39 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %40 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.axis_fifo*, %struct.axis_fifo** %4, align 8
  %45 = getelementptr inbounds %struct.axis_fifo, %struct.axis_fifo* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @resource_size(%struct.TYPE_2__* %46)
  %48 = call i32 @release_mem_region(i32 %43, i32 %47)
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @dev_set_drvdata(%struct.device* %49, i32* null)
  ret i32 0
}

declare dso_local %struct.axis_fifo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.axis_fifo*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
