; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform.c_get_platform_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform.c_get_platform_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vfio_platform_device = type { i64 }
%struct.platform_device = type { i32, %struct.resource* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.vfio_platform_device*, i32)* @get_platform_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @get_platform_resource(%struct.vfio_platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.platform_device*
  store %struct.platform_device* %12, %struct.platform_device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 %24
  store %struct.resource* %25, %struct.resource** %8, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = call i32 @resource_type(%struct.resource* %26)
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = load i32, i32* @IORESOURCE_IO, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  store %struct.resource* %37, %struct.resource** %3, align 8
  br label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %13

45:                                               ; preds = %13
  store %struct.resource* null, %struct.resource** %3, align 8
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %47
}

declare dso_local i32 @resource_type(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
