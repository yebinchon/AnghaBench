; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_ns_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_bcma-hcd.c_bcma_hcd_usb20_ns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_hcd_device = type { %struct.bcma_device* }
%struct.bcma_device = type { %struct.device, %struct.TYPE_2__* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.bcma_chipinfo }
%struct.bcma_chipinfo = type { i64 }

@BCMA_CHIP_ID_BCM4707 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM53018 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_hcd_device*)* @bcma_hcd_usb20_ns_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_hcd_usb20_ns_init(%struct.bcma_hcd_device* %0) #0 {
  %2 = alloca %struct.bcma_hcd_device*, align 8
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.bcma_chipinfo*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.bcma_hcd_device* %0, %struct.bcma_hcd_device** %2, align 8
  %6 = load %struct.bcma_hcd_device*, %struct.bcma_hcd_device** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_hcd_device, %struct.bcma_hcd_device* %6, i32 0, i32 0
  %8 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  store %struct.bcma_device* %8, %struct.bcma_device** %3, align 8
  %9 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %10 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.bcma_chipinfo* %12, %struct.bcma_chipinfo** %4, align 8
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %16 = call i32 @bcma_core_enable(%struct.bcma_device* %15, i32 0)
  %17 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %18 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BCMA_CHIP_ID_BCM4707, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %24 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BCMA_CHIP_ID_BCM53018, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %1
  %29 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %30 = call i32 @bcma_hcd_usb20_ns_init_hc(%struct.bcma_device* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @of_platform_default_populate(i32 %34, i32* null, %struct.device* %35)
  ret i32 0
}

declare dso_local i32 @bcma_core_enable(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_hcd_usb20_ns_init_hc(%struct.bcma_device*) #1

declare dso_local i32 @of_platform_default_populate(i32, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
