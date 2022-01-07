; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_set_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_set_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.octeon_ethernet = type { i32 }
%union.cvmx_gmxx_prtx_cfg = type { i64 }

@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cvm_oct_set_mac_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_set_mac_filter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %union.cvmx_gmxx_prtx_cfg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %10)
  store %struct.octeon_ethernet* %11, %struct.octeon_ethernet** %3, align 8
  %12 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @INTERFACE(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %116

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @cvmx_helper_interface_get_mode(i32 %19)
  %21 = load i64, i64* @CVMX_HELPER_INTERFACE_MODE_SPI, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %116

23:                                               ; preds = %18
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %27 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @INDEX(i32 %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %43, %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %47, i32 %48)
  %50 = call i64 @cvmx_read_csr(i32 %49)
  %51 = bitcast %union.cvmx_gmxx_prtx_cfg* %4 to i64*
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %52, i32 %53)
  %55 = bitcast %union.cvmx_gmxx_prtx_cfg* %4 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, -2
  %58 = trunc i64 %57 to i32
  %59 = call i32 @cvmx_write_csr(i32 %54, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @CVMX_GMXX_SMACX(i32 %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @cvmx_write_csr(i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @CVMX_GMXX_RXX_ADR_CAM0(i32 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cvmx_write_csr(i32 %67, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @CVMX_GMXX_RXX_ADR_CAM1(i32 %72, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cvmx_write_csr(i32 %74, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @CVMX_GMXX_RXX_ADR_CAM2(i32 %79, i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @cvmx_write_csr(i32 %81, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @CVMX_GMXX_RXX_ADR_CAM3(i32 %86, i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @cvmx_write_csr(i32 %88, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CVMX_GMXX_RXX_ADR_CAM4(i32 %93, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cvmx_write_csr(i32 %95, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @CVMX_GMXX_RXX_ADR_CAM5(i32 %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cvmx_write_csr(i32 %102, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 @cvm_oct_common_set_multicast_list(%struct.net_device* %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %109, i32 %110)
  %112 = bitcast %union.cvmx_gmxx_prtx_cfg* %4 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @cvmx_write_csr(i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %46, %18, %1
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i64 @cvmx_helper_interface_get_mode(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_SMACX(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM0(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM1(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM2(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM3(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM4(i32, i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_ADR_CAM5(i32, i32) #1

declare dso_local i32 @cvm_oct_common_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
