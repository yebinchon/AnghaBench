; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%union.cvmx_gmxx_prtx_cfg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.octeon_ethernet = type { void (%struct.net_device.0*)*, i32 }
%struct.net_device.0 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_common_open(%struct.net_device* %0, void (%struct.net_device*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca void (%struct.net_device*)*, align 8
  %6 = alloca %union.cvmx_gmxx_prtx_cfg, align 4
  %7 = alloca %struct.octeon_ethernet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store void (%struct.net_device*)* %1, void (%struct.net_device*)** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %14)
  store %struct.octeon_ethernet* %15, %struct.octeon_ethernet** %7, align 8
  %16 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %17 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @INTERFACE(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %21 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @INDEX(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @cvm_oct_phy_setup_device(%struct.net_device* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %31, i32 %32)
  %34 = call i32 @cvmx_read_csr(i32 %33)
  %35 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  store i32 %34, i32* %35, align 4
  %36 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %39 = call i64 @octeon_has_feature(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %43 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %30
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @CVMX_GMXX_PRTX_CFG(i32 %48, i32 %49)
  %51 = bitcast %union.cvmx_gmxx_prtx_cfg* %6 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cvmx_write_csr(i32 %50, i32 %52)
  %54 = call i64 (...) @octeon_is_simulation()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %106

57:                                               ; preds = %47
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = call i32 @phy_read_status(%struct.TYPE_9__* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = call i32 @netif_carrier_off(%struct.net_device* %77)
  br label %79

79:                                               ; preds = %76, %69, %62
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @cvm_oct_adjust_link(%struct.net_device* %80)
  br label %105

82:                                               ; preds = %57
  %83 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %84 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @cvmx_helper_link_get(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = bitcast %struct.TYPE_8__* %10 to i8*
  %90 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = call i32 @netif_carrier_off(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %95, %82
  %99 = load void (%struct.net_device*)*, void (%struct.net_device*)** %5, align 8
  %100 = bitcast void (%struct.net_device*)* %99 to void (%struct.net_device.0*)*
  %101 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %7, align 8
  %102 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %101, i32 0, i32 0
  store void (%struct.net_device.0*)* %100, void (%struct.net_device.0*)** %102, align 8
  %103 = load void (%struct.net_device*)*, void (%struct.net_device*)** %5, align 8
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  call void %103(%struct.net_device* %104)
  br label %105

105:                                              ; preds = %98, %79
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %56, %28
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INTERFACE(i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @cvm_oct_phy_setup_device(%struct.net_device*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_PRTX_CFG(i32, i32) #1

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i64 @octeon_is_simulation(...) #1

declare dso_local i32 @phy_read_status(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_adjust_link(%struct.net_device*) #1

declare dso_local i32 @cvmx_helper_link_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
