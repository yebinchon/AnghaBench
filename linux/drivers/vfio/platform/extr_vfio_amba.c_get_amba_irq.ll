; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_get_amba_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_amba.c_get_amba_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i64 }
%struct.amba_device = type { i32* }

@AMBA_NR_IRQS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, i32)* @get_amba_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_amba_irq(%struct.vfio_platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vfio_platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amba_device*, align 8
  %6 = alloca i32, align 4
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.amba_device*
  store %struct.amba_device* %10, %struct.amba_device** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AMBA_NR_IRQS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %16 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
