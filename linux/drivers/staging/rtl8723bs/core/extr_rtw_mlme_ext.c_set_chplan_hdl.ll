; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_set_chplan_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_set_chplan_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__*, %struct.mlme_ext_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_ext_priv = type { i32, i32, i32 }
%struct.SetChannelPlan_param = type { i32 }
%struct.regulatory_request = type { i32 }

@H2C_PARAMETERS_ERROR = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_chplan_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SetChannelPlan_param*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  %8 = alloca %struct.regulatory_request, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @H2C_PARAMETERS_ERROR, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.SetChannelPlan_param*
  store %struct.SetChannelPlan_param* %17, %struct.SetChannelPlan_param** %6, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %6, align 8
  %20 = getelementptr inbounds %struct.SetChannelPlan_param, %struct.SetChannelPlan_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %23 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @init_channel_set(%struct.adapter* %18, i32 %21, i32 %24)
  %26 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %27 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %33 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %36 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %35, i32 0, i32 0
  %37 = call i32 @init_channel_list(%struct.adapter* %28, i32 %31, i32 %34, i32* %36)
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %15
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %51 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %8, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @rtw_reg_notifier(i64 %56, %struct.regulatory_request* %8)
  br label %58

58:                                               ; preds = %49, %42, %15
  %59 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @init_channel_set(%struct.adapter*, i32, i32) #1

declare dso_local i32 @init_channel_list(%struct.adapter*, i32, i32, i32*) #1

declare dso_local i32 @rtw_reg_notifier(i64, %struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
