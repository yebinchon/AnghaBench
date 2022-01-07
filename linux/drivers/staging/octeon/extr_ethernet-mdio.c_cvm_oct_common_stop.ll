; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_common_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-mdio.c_cvm_oct_common_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.octeon_ethernet = type { i32, i64, i32* }
%struct.TYPE_6__ = type { i64 }
%union.cvmx_gmxx_prtx_cfg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_common_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %3, align 8
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @INTERFACE(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %15 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @INDEX(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %18, i32 %19)
  %21 = call i32 @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  store i32 %21, i32* %22, align 8
  %23 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %25, i32 %26)
  %28 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @cvmx_write_csr(i32 %27, i32 %29)
  %31 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %32 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @phy_disconnect(i64 %40)
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %52 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @cvmx_helper_link_set(i32 %53, i64 %55)
  %57 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @cvm_oct_note_carrier(%struct.octeon_ethernet* %57, i64 %59)
  br label %61

61:                                               ; preds = %47, %42
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local i32 @cvmx_helper_link_set(i32, i64) #1

declare dso_local i32 @cvm_oct_note_carrier(%struct.octeon_ethernet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
