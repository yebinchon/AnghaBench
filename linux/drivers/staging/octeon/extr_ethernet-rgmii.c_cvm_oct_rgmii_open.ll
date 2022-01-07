; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.octeon_ethernet = type { i64, i64, i32 (%struct.net_device.0*)* }
%struct.net_device.0 = type opaque

@cvm_oct_rgmii_poll = common dso_local global i32 0, align 4
@CVMX_HELPER_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_rgmii_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %6)
  store %struct.octeon_ethernet* %7, %struct.octeon_ethernet** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load i32, i32* @cvm_oct_rgmii_poll, align 4
  %10 = call i32 @cvm_oct_common_open(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %22 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_GMII, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %33 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_RGMII, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %26
  %38 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %39 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %38, i32 0, i32 2
  store i32 (%struct.net_device.0*)* bitcast (i32 (%struct.net_device*)* @cvm_oct_check_preamble_errors to i32 (%struct.net_device.0*)*), i32 (%struct.net_device.0*)** %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @cvm_oct_check_preamble_errors(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %15
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_common_open(%struct.net_device*, i32) #1

declare dso_local i32 @cvm_oct_check_preamble_errors(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
