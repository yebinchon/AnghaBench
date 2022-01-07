; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_validate_iface_combinations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_validate_iface_combinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iface_combination_params = type { i32, i32* }
%struct.wiphy = type { i32 }
%struct.qtnf_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qtnf_wmac = type { %struct.qtnf_vif* }

@__const.qtnf_validate_iface_combinations.params = private unnamed_addr constant %struct.iface_combination_params { i32 1, i32* null }, align 8
@EFAULT = common dso_local global i32 0, align 4
@QTNF_MAX_INTF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.qtnf_vif*, i32)* @qtnf_validate_iface_combinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_validate_iface_combinations(%struct.wiphy* %0, %struct.qtnf_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.qtnf_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qtnf_wmac*, align 8
  %9 = alloca %struct.qtnf_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iface_combination_params, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.qtnf_vif* %1, %struct.qtnf_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = bitcast %struct.iface_combination_params* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.iface_combination_params* @__const.qtnf_validate_iface_combinations.params to i8*), i64 16, i1 false)
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %14)
  store %struct.qtnf_wmac* %15, %struct.qtnf_wmac** %8, align 8
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %17 = icmp ne %struct.qtnf_wmac* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @QTNF_MAX_INTF, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %8, align 8
  %28 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %27, i32 0, i32 0
  %29 = load %struct.qtnf_vif*, %struct.qtnf_vif** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %29, i64 %31
  store %struct.qtnf_vif* %32, %struct.qtnf_vif** %9, align 8
  %33 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %34 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %12, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.qtnf_vif*, %struct.qtnf_vif** %9, align 8
  %43 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %55 = icmp ne %struct.qtnf_vif* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %12, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %12, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %67 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 4
  br label %81

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.iface_combination_params, %struct.iface_combination_params* %12, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %56
  %82 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %83 = call i32 @cfg80211_check_combinations(%struct.wiphy* %82, %struct.iface_combination_params* %12)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #2

declare dso_local i32 @cfg80211_check_combinations(%struct.wiphy*, %struct.iface_combination_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
