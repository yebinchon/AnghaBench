; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.c67x00_device = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@C67X00_SIES = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @c67x00_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.c67x00_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.c67x00_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.c67x00_device* %7, %struct.c67x00_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @C67X00_SIES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %14 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @c67x00_remove_sie(i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %25 = call i32 @c67x00_ll_release(%struct.c67x00_device* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = load i32, i32* @IORESOURCE_IRQ, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.resource*, %struct.resource** %4, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.c67x00_device* %35)
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %39 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iounmap(i32 %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %4, align 8
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = icmp ne %struct.resource* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = call i32 @resource_size(%struct.resource* %52)
  %54 = call i32 @release_mem_region(i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %48, %37
  %56 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %57 = call i32 @kfree(%struct.c67x00_device* %56)
  ret i32 0
}

declare dso_local %struct.c67x00_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @c67x00_remove_sie(i32*) #1

declare dso_local i32 @c67x00_ll_release(%struct.c67x00_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.c67x00_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.c67x00_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
