; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/reset/extr_vfio_platform_calxedaxgmac.c_vfio_platform_calxedaxgmac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/reset/extr_vfio_platform_calxedaxgmac.c_vfio_platform_calxedaxgmac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { %struct.vfio_platform_region* }
%struct.vfio_platform_region = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XGMAC_DMA_INTR_ENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*)* @vfio_platform_calxedaxgmac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_calxedaxgmac_reset(%struct.vfio_platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_platform_device*, align 8
  %4 = alloca %struct.vfio_platform_region*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  %5 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %5, i32 0, i32 0
  %7 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %6, align 8
  %8 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %7, i64 0
  store %struct.vfio_platform_region* %8, %struct.vfio_platform_region** %4, align 8
  %9 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %10 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %15 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %18 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ioremap_nocache(i32 %16, i32 %19)
  %21 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %22 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %24 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %13
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %33 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XGMAC_DMA_INTR_ENA, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load %struct.vfio_platform_region*, %struct.vfio_platform_region** %4, align 8
  %39 = getelementptr inbounds %struct.vfio_platform_region, %struct.vfio_platform_region* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @xgmac_mac_disable(i64 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %31, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @xgmac_mac_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
