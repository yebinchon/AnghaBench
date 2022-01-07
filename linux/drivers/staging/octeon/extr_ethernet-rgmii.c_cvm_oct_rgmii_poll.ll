; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_rgmii_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_ethernet = type { i64, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cvm_oct_rgmii_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_rgmii_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_ethernet* %8, %struct.octeon_ethernet** %3, align 8
  %9 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call { i64, i64 } @cvmx_helper_link_get(i32 %11)
  %13 = bitcast %struct.TYPE_7__* %6 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = extractvalue { i64, i64 } %12, 0
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = extractvalue { i64, i64 } %12, 1
  store i64 %17, i64* %16, align 8
  %18 = bitcast %struct.TYPE_7__* %4 to i8*
  %19 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %1
  %27 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.TYPE_7__* %4 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @cvmx_helper_link_set(i32 %29, i64 %32, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %26, %1
  %43 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %53 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @cvm_oct_check_preamble_errors(%struct.net_device* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %42
  br label %92

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = call i64 @netif_carrier_ok(%struct.net_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32 @netif_carrier_on(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %72, %68
  br label %84

76:                                               ; preds = %63
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i64 @netif_carrier_ok(%struct.net_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = call i32 @netif_carrier_off(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %76
  br label %84

84:                                               ; preds = %83, %75
  %85 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %86 = bitcast %struct.TYPE_7__* %4 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @cvm_oct_note_carrier(%struct.octeon_ethernet* %85, i64 %88, i64 %90)
  br label %92

92:                                               ; preds = %84, %62
  ret void
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local { i64, i64 } @cvmx_helper_link_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cvmx_helper_link_set(i32, i64, i64) #1

declare dso_local i32 @cvm_oct_check_preamble_errors(%struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_note_carrier(%struct.octeon_ethernet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
