; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_kpc_dma_driver.c_kpc_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_kpc_dma_driver.c_kpc_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.kpc_dma_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ndd_attr_list = common dso_local global i32 0, align 4
@kpc_dma_class = common dso_local global i32 0, align 4
@assigned_major_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kpc_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpc_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kpc_dma_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.kpc_dma_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.kpc_dma_device* %6, %struct.kpc_dma_device** %4, align 8
  %7 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %8 = icmp ne %struct.kpc_dma_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %14 = call i32 @lock_engine(%struct.kpc_dma_device* %13)
  %15 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %16 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @ndd_attr_list, align 4
  %21 = call i32 @sysfs_remove_files(i32* %19, i32 %20)
  %22 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %23 = call i32 @destroy_dma_engine(%struct.kpc_dma_device* %22)
  %24 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %25 = call i32 @kpc_dma_del_device(%struct.kpc_dma_device* %24)
  %26 = load i32, i32* @kpc_dma_class, align 4
  %27 = load i32, i32* @assigned_major_num, align 4
  %28 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %29 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MKDEV(i32 %27, i32 %32)
  %34 = call i32 @device_destroy(i32 %26, i32 %33)
  %35 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %4, align 8
  %36 = call i32 @kfree(%struct.kpc_dma_device* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %12, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.kpc_dma_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @lock_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @sysfs_remove_files(i32*, i32) #1

declare dso_local i32 @destroy_dma_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @kpc_dma_del_device(%struct.kpc_dma_device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kfree(%struct.kpc_dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
