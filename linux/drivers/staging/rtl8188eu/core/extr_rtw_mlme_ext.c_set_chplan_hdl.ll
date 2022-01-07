; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_chplan_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_set_chplan_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, i32, i32 }
%struct.SetChannelPlan_param = type { i32 }

@H2C_PARAMETERS_ERROR = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_chplan_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SetChannelPlan_param*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @H2C_PARAMETERS_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.SetChannelPlan_param*
  store %struct.SetChannelPlan_param* %16, %struct.SetChannelPlan_param** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %6, align 8
  %19 = getelementptr inbounds %struct.SetChannelPlan_param, %struct.SetChannelPlan_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @init_channel_set(%struct.adapter* %17, i32 %20, i32 %23)
  %25 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %34, i32 0, i32 0
  %36 = call i32 @init_channel_list(%struct.adapter* %27, i32 %30, i32 %33, i32* %35)
  %37 = load i32, i32* @H2C_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %14, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @init_channel_set(%struct.adapter*, i32, i32) #1

declare dso_local i32 @init_channel_list(%struct.adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
