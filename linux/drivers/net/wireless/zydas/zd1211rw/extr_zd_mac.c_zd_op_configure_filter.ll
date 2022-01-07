; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.zd_mc_hash = type { i32, i32 }
%struct.zd_mac = type { i32, i32, i32, i32, %struct.zd_mc_hash }

@SUPPORTED_FIF_FLAGS = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set_rx_filter error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @zd_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zd_mc_hash, align 4
  %10 = alloca %struct.zd_mac*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %9, i32 0, i32 0
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %9, i32 0, i32 1
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 32
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %18)
  store %struct.zd_mac* %19, %struct.zd_mac** %10, align 8
  %20 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @SUPPORTED_FIF_FLAGS, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FIF_ALLMULTI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = call i32 @zd_mc_add_all(%struct.zd_mc_hash* %9)
  br label %34

34:                                               ; preds = %32, %4
  %35 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 3
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FIF_FCSFAIL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %48 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FIF_CONTROL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %58 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %60 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %59, i32 0, i32 4
  %61 = bitcast %struct.zd_mc_hash* %60 to i8*
  %62 = bitcast %struct.zd_mc_hash* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 8, i1 false)
  %63 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %64 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %63, i32 0, i32 3
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %68 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %67, i32 0, i32 2
  %69 = call i32 @zd_chip_set_multicast_hash(i32* %68, %struct.zd_mc_hash* %9)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @FIF_CONTROL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %34
  %75 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %76 = call i32 @set_rx_filter(%struct.zd_mac* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.zd_mac*, %struct.zd_mac** %10, align 8
  %81 = call i32 @zd_mac_dev(%struct.zd_mac* %80)
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %34
  ret void
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_mc_add_all(%struct.zd_mc_hash*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zd_chip_set_multicast_hash(i32*, %struct.zd_mc_hash*) #1

declare dso_local i32 @set_rx_filter(%struct.zd_mac*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
