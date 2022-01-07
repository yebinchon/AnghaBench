; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_set_tx_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_set_tx_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.cmd_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.Tx_Beacon_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_BEACON_IE_OFFSET_ = common dso_local global i64 0, align 8
@_TX_Beacon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_tx_beacon_cmd(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.Tx_Beacon_param*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.cmd_priv* %11, %struct.cmd_priv** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 0
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %7, align 8
  %16 = load i32, i32* @_SUCCESS, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = call i8* @rtw_zmalloc(i32 4)
  %18 = bitcast i8* %17 to %struct.cmd_obj*
  store %struct.cmd_obj* %18, %struct.cmd_obj** %3, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %20 = icmp eq %struct.cmd_obj* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @_FAIL, align 4
  store i32 %22, i32* %8, align 4
  br label %69

23:                                               ; preds = %1
  %24 = call i8* @rtw_zmalloc(i32 16)
  %25 = bitcast i8* %24 to %struct.Tx_Beacon_param*
  store %struct.Tx_Beacon_param* %25, %struct.Tx_Beacon_param** %4, align 8
  %26 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %27 = icmp eq %struct.Tx_Beacon_param* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %30 = call i32 @kfree(%struct.cmd_obj* %29)
  %31 = load i32, i32* @_FAIL, align 4
  store i32 %31, i32* %8, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %34 = getelementptr inbounds %struct.Tx_Beacon_param, %struct.Tx_Beacon_param* %33, i32 0, i32 0
  %35 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %36 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %35, i32 0, i32 1
  %37 = call i32 @memcpy(%struct.TYPE_2__* %34, i32* %36, i32 4)
  %38 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %39 = getelementptr inbounds %struct.Tx_Beacon_param, %struct.Tx_Beacon_param* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %45 = getelementptr inbounds %struct.Tx_Beacon_param, %struct.Tx_Beacon_param* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @_BEACON_IE_OFFSET_, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %51 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @update_hidden_ssid(i64 %43, i64 %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %57 = getelementptr inbounds %struct.Tx_Beacon_param, %struct.Tx_Beacon_param* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %62 = load %struct.Tx_Beacon_param*, %struct.Tx_Beacon_param** %4, align 8
  %63 = load i32, i32* @_TX_Beacon, align 4
  %64 = call i32 @GEN_CMD_CODE(i32 %63)
  %65 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %61, %struct.Tx_Beacon_param* %62, i32 %64)
  %66 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %67 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %68 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %66, %struct.cmd_obj* %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %32, %28, %21
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @update_hidden_ssid(i64, i64, i32) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.Tx_Beacon_param*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
