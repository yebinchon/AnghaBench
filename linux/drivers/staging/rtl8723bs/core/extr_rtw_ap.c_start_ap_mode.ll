; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_start_ap_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_start_ap_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.sta_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32 }
%struct.sta_priv = type { i32**, %struct.wlan_acl_pool }
%struct.wlan_acl_pool = type { %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlme_priv = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i64 }

@NUM_STA = common dso_local global i32 0, align 4
@NUM_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_ap_mode(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.sta_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.wlan_acl_pool*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.mlme_priv* %9, %struct.mlme_priv** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.sta_priv* %11, %struct.sta_priv** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %15 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %14, i32 0, i32 1
  store %struct.wlan_acl_pool* %15, %struct.wlan_acl_pool** %7, align 8
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 14
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 13
  store i64 0, i64* %23, align 8
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 9
  store i64 0, i64* %31, align 8
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %49, %1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @NUM_STA, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %44 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %54 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %53, i32 0, i32 7
  store i32* null, i32** %54, align 8
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 6
  store i32* null, i32** %56, align 8
  %57 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %62 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = load %struct.wlan_acl_pool*, %struct.wlan_acl_pool** %7, align 8
  %64 = getelementptr inbounds %struct.wlan_acl_pool, %struct.wlan_acl_pool* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.wlan_acl_pool*, %struct.wlan_acl_pool** %7, align 8
  %68 = getelementptr inbounds %struct.wlan_acl_pool, %struct.wlan_acl_pool* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.wlan_acl_pool*, %struct.wlan_acl_pool** %7, align 8
  %70 = getelementptr inbounds %struct.wlan_acl_pool, %struct.wlan_acl_pool* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %91, %52
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @NUM_ACL, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load %struct.wlan_acl_pool*, %struct.wlan_acl_pool** %7, align 8
  %77 = getelementptr inbounds %struct.wlan_acl_pool, %struct.wlan_acl_pool* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.wlan_acl_pool*, %struct.wlan_acl_pool** %7, align 8
  %85 = getelementptr inbounds %struct.wlan_acl_pool, %struct.wlan_acl_pool* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %71

94:                                               ; preds = %71
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
