; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_vfio_amba_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_vfio_amba_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.vfio_platform_device = type { %struct.vfio_platform_device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @vfio_amba_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_amba_remove(%struct.amba_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.vfio_platform_device*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %3, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %6 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %5, i32 0, i32 0
  %7 = call %struct.vfio_platform_device* @vfio_platform_remove_common(i32* %6)
  store %struct.vfio_platform_device* %7, %struct.vfio_platform_device** %4, align 8
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %9 = icmp ne %struct.vfio_platform_device* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %11, i32 0, i32 0
  %13 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %12, align 8
  %14 = call i32 @kfree(%struct.vfio_platform_device* %13)
  %15 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %16 = call i32 @kfree(%struct.vfio_platform_device* %15)
  store i32 0, i32* %2, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.vfio_platform_device* @vfio_platform_remove_common(i32*) #1

declare dso_local i32 @kfree(%struct.vfio_platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
