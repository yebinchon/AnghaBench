; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { i64 }
%struct.octeon_ethernet = type { i32 }
%union.cvmx_gmxx_rxx_adr_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_common_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_common_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %4 = alloca %struct.octeon_ethernet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_gmxx_rxx_adr_ctl, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %8)
  store %struct.octeon_ethernet* %9, %struct.octeon_ethernet** %4, align 8
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INTERFACE(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %109

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @cvmx_helper_interface_get_mode(i32 %17)
  %19 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %109

21:                                               ; preds = %16
  %22 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @INDEX(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to i32*
  store i32 0, i32* %26, align 4
  %27 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netdev_mc_empty(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %21
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_ALLMULTI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32, %21
  %47 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 2, i32* %48, align 4
  br label %52

49:                                               ; preds = %39
  %50 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_PROMISC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  br label %65

62:                                               ; preds = %52
  %63 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %66, i32 %67)
  %69 = call i64 @cvmx_read_csr(i32 %68)
  %70 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %71, i32 %72)
  %74 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, -2
  %77 = trunc i64 %76 to i32
  %78 = call i32 @cvmx_write_csr(i32 %73, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @CVMX_GMXX_RXX_ADR_CTL(i32 %79, i32 %80)
  %82 = bitcast %union.cvmx_gmxx_rxx_adr_ctl* %6 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cvmx_write_csr(i32 %81, i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_PROMISC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %65
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32 %92, i32 %93)
  %95 = call i32 @cvmx_write_csr(i32 %94, i32 0)
  br label %101

96:                                               ; preds = %65
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32 %97, i32 %98)
  %100 = call i32 @cvmx_write_csr(i32 %99, i32 1)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %102, i32 %103)
  %105 = bitcast %union.cvmx_gmxx_prtx_cfg* %3 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @cvmx_write_csr(i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %16, %1
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CTL(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM_EN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
