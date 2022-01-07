; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_loadparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_loadparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@rtw_chip_version = common dso_local global i64 0, align 8
@rtw_rfintfs = common dso_local global i64 0, align 8
@rtw_lbkmode = common dso_local global i64 0, align 8
@rtw_network_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@rtw_channel = common dso_local global i64 0, align 8
@rtw_wireless_mode = common dso_local global i64 0, align 8
@rtw_vrtl_carrier_sense = common dso_local global i64 0, align 8
@rtw_vcs_type = common dso_local global i64 0, align 8
@rtw_rts_thresh = common dso_local global i64 0, align 8
@rtw_frag_thresh = common dso_local global i64 0, align 8
@rtw_preamble = common dso_local global i64 0, align 8
@rtw_scan_mode = common dso_local global i64 0, align 8
@rtw_adhoc_tx_pwr = common dso_local global i64 0, align 8
@rtw_soft_ap = common dso_local global i64 0, align 8
@rtw_smart_ps = common dso_local global i64 0, align 8
@rtw_check_fw_ps = common dso_local global i64 0, align 8
@rtw_power_mgnt = common dso_local global i64 0, align 8
@rtw_ips_mode = common dso_local global i64 0, align 8
@rtw_radio_enable = common dso_local global i64 0, align 8
@rtw_long_retry_lmt = common dso_local global i64 0, align 8
@rtw_short_retry_lmt = common dso_local global i64 0, align 8
@rtw_busy_thresh = common dso_local global i64 0, align 8
@rtw_ack_policy = common dso_local global i64 0, align 8
@rtw_software_encrypt = common dso_local global i64 0, align 8
@rtw_software_decrypt = common dso_local global i64 0, align 8
@rtw_acm_method = common dso_local global i64 0, align 8
@rtw_usb_rxagg_mode = common dso_local global i64 0, align 8
@rtw_wmm_enable = common dso_local global i64 0, align 8
@rtw_uapsd_enable = common dso_local global i64 0, align 8
@rtw_uapsd_max_sp = common dso_local global i64 0, align 8
@rtw_uapsd_acbk_en = common dso_local global i64 0, align 8
@rtw_uapsd_acbe_en = common dso_local global i64 0, align 8
@rtw_uapsd_acvi_en = common dso_local global i64 0, align 8
@rtw_uapsd_acvo_en = common dso_local global i64 0, align 8
@rtw_ht_enable = common dso_local global i64 0, align 8
@rtw_bw_mode = common dso_local global i64 0, align 8
@rtw_ampdu_enable = common dso_local global i64 0, align 8
@rtw_rx_stbc = common dso_local global i64 0, align 8
@rtw_ampdu_amsdu = common dso_local global i64 0, align 8
@rtw_short_gi = common dso_local global i64 0, align 8
@rtw_ldpc_cap = common dso_local global i64 0, align 8
@rtw_stbc_cap = common dso_local global i64 0, align 8
@rtw_beamform_cap = common dso_local global i64 0, align 8
@rtw_lowrate_two_xmit = common dso_local global i64 0, align 8
@rtw_rf_config = common dso_local global i64 0, align 8
@rtw_low_power = common dso_local global i64 0, align 8
@rtw_wifi_spec = common dso_local global i64 0, align 8
@rtw_channel_plan = common dso_local global i64 0, align 8
@rtw_btcoex_enable = common dso_local global i64 0, align 8
@rtw_bt_iso = common dso_local global i64 0, align 8
@rtw_bt_sco = common dso_local global i64 0, align 8
@rtw_bt_ampdu = common dso_local global i64 0, align 8
@rtw_ant_num = common dso_local global i64 0, align 8
@rtw_antdiv_cfg = common dso_local global i64 0, align 8
@rtw_antdiv_type = common dso_local global i64 0, align 8
@rtw_hw_wps_pbc = common dso_local global i64 0, align 8
@rtw_max_roaming_times = common dso_local global i64 0, align 8
@rtw_80211d = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ifname = common dso_local global i8* null, align 8
@rtw_notch_filter = common dso_local global i64 0, align 8
@rtw_tx_pwr_lmt_enable = common dso_local global i64 0, align 8
@rtw_tx_pwr_by_rate = common dso_local global i64 0, align 8
@rtw_load_phy_file = common dso_local global i64 0, align 8
@rtw_decrypt_phy_file = common dso_local global i64 0, align 8
@rtw_qos_opt_enable = common dso_local global i64 0, align 8
@rtw_hiq_filter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @loadparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadparam(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.registry_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.registry_priv* %7, %struct.registry_priv** %5, align 8
  %8 = load i64, i64* @rtw_chip_version, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %11 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %10, i32 0, i32 72
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* @rtw_rfintfs, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %15 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %14, i32 0, i32 71
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @rtw_lbkmode, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %19 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %18, i32 0, i32 70
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @rtw_network_mode, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %23 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %22, i32 0, i32 69
  store i8* %21, i8** %23, align 8
  %24 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %25 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %24, i32 0, i32 68
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %29 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %30 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %29, i32 0, i32 68
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 3, i32* %31, align 8
  %32 = load i64, i64* @rtw_channel, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %35 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %34, i32 0, i32 67
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* @rtw_wireless_mode, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %39 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %38, i32 0, i32 66
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @rtw_vrtl_carrier_sense, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %43 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %42, i32 0, i32 65
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @rtw_vcs_type, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %47 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %46, i32 0, i32 64
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @rtw_rts_thresh, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %51 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %50, i32 0, i32 63
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* @rtw_frag_thresh, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %55 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %54, i32 0, i32 62
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @rtw_preamble, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %59 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %58, i32 0, i32 61
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @rtw_scan_mode, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %63 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %62, i32 0, i32 60
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* @rtw_adhoc_tx_pwr, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %67 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %66, i32 0, i32 59
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* @rtw_soft_ap, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %71 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %70, i32 0, i32 58
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* @rtw_smart_ps, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %75 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %74, i32 0, i32 57
  store i8* %73, i8** %75, align 8
  %76 = load i64, i64* @rtw_check_fw_ps, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %79 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %78, i32 0, i32 56
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* @rtw_power_mgnt, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %83 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %82, i32 0, i32 55
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* @rtw_ips_mode, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %87 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %86, i32 0, i32 54
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* @rtw_radio_enable, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %91 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %90, i32 0, i32 53
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* @rtw_long_retry_lmt, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %95 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %94, i32 0, i32 52
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* @rtw_short_retry_lmt, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %99 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %98, i32 0, i32 51
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* @rtw_busy_thresh, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %103 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %102, i32 0, i32 50
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* @rtw_ack_policy, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %107 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %106, i32 0, i32 49
  store i8* %105, i8** %107, align 8
  %108 = load i64, i64* @rtw_software_encrypt, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %111 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %110, i32 0, i32 48
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* @rtw_software_decrypt, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %115 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %114, i32 0, i32 47
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* @rtw_acm_method, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %119 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %118, i32 0, i32 46
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @rtw_usb_rxagg_mode, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %123 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %122, i32 0, i32 45
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* @rtw_wmm_enable, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %127 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %126, i32 0, i32 44
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* @rtw_uapsd_enable, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %131 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %130, i32 0, i32 43
  store i8* %129, i8** %131, align 8
  %132 = load i64, i64* @rtw_uapsd_max_sp, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %135 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %134, i32 0, i32 42
  store i8* %133, i8** %135, align 8
  %136 = load i64, i64* @rtw_uapsd_acbk_en, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %139 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %138, i32 0, i32 41
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* @rtw_uapsd_acbe_en, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %143 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %142, i32 0, i32 40
  store i8* %141, i8** %143, align 8
  %144 = load i64, i64* @rtw_uapsd_acvi_en, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %147 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %146, i32 0, i32 39
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* @rtw_uapsd_acvo_en, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %151 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %150, i32 0, i32 38
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* @rtw_ht_enable, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %155 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %154, i32 0, i32 37
  store i8* %153, i8** %155, align 8
  %156 = load i64, i64* @rtw_bw_mode, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %159 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %158, i32 0, i32 36
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* @rtw_ampdu_enable, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %163 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %162, i32 0, i32 35
  store i8* %161, i8** %163, align 8
  %164 = load i64, i64* @rtw_rx_stbc, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %167 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %166, i32 0, i32 34
  store i8* %165, i8** %167, align 8
  %168 = load i64, i64* @rtw_ampdu_amsdu, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %171 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %170, i32 0, i32 33
  store i8* %169, i8** %171, align 8
  %172 = load i64, i64* @rtw_short_gi, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %175 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %174, i32 0, i32 32
  store i8* %173, i8** %175, align 8
  %176 = load i64, i64* @rtw_ldpc_cap, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %179 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %178, i32 0, i32 31
  store i8* %177, i8** %179, align 8
  %180 = load i64, i64* @rtw_stbc_cap, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %183 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %182, i32 0, i32 30
  store i8* %181, i8** %183, align 8
  %184 = load i64, i64* @rtw_beamform_cap, align 8
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %187 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %186, i32 0, i32 29
  store i8* %185, i8** %187, align 8
  %188 = load i64, i64* @rtw_lowrate_two_xmit, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %191 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %190, i32 0, i32 28
  store i8* %189, i8** %191, align 8
  %192 = load i64, i64* @rtw_rf_config, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %195 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %194, i32 0, i32 27
  store i8* %193, i8** %195, align 8
  %196 = load i64, i64* @rtw_low_power, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %199 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %198, i32 0, i32 26
  store i8* %197, i8** %199, align 8
  %200 = load i64, i64* @rtw_wifi_spec, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %203 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %202, i32 0, i32 25
  store i8* %201, i8** %203, align 8
  %204 = load i64, i64* @rtw_channel_plan, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %207 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %206, i32 0, i32 24
  store i8* %205, i8** %207, align 8
  %208 = load i64, i64* @rtw_btcoex_enable, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %211 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %210, i32 0, i32 23
  store i8* %209, i8** %211, align 8
  %212 = load i64, i64* @rtw_bt_iso, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %215 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %214, i32 0, i32 22
  store i8* %213, i8** %215, align 8
  %216 = load i64, i64* @rtw_bt_sco, align 8
  %217 = inttoptr i64 %216 to i8*
  %218 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %219 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %218, i32 0, i32 21
  store i8* %217, i8** %219, align 8
  %220 = load i64, i64* @rtw_bt_ampdu, align 8
  %221 = inttoptr i64 %220 to i8*
  %222 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %223 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %222, i32 0, i32 20
  store i8* %221, i8** %223, align 8
  %224 = load i64, i64* @rtw_ant_num, align 8
  %225 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %226 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %225, i32 0, i32 19
  store i64 %224, i64* %226, align 8
  %227 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %228 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load i64, i64* @rtw_antdiv_cfg, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %232 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %231, i32 0, i32 18
  store i8* %230, i8** %232, align 8
  %233 = load i64, i64* @rtw_antdiv_type, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %236 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %235, i32 0, i32 17
  store i8* %234, i8** %236, align 8
  %237 = load i64, i64* @rtw_hw_wps_pbc, align 8
  %238 = inttoptr i64 %237 to i8*
  %239 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %240 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %239, i32 0, i32 16
  store i8* %238, i8** %240, align 8
  %241 = load i64, i64* @rtw_max_roaming_times, align 8
  %242 = inttoptr i64 %241 to i8*
  %243 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %244 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %243, i32 0, i32 15
  store i8* %242, i8** %244, align 8
  %245 = load i64, i64* @rtw_80211d, align 8
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %248 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %247, i32 0, i32 14
  store i8* %246, i8** %248, align 8
  %249 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %250 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %249, i32 0, i32 13
  %251 = load i32, i32* %250, align 8
  %252 = load i8*, i8** @ifname, align 8
  %253 = call i32 @snprintf(i32 %251, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %252)
  %254 = load i64, i64* @rtw_notch_filter, align 8
  %255 = inttoptr i64 %254 to i8*
  %256 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %257 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %256, i32 0, i32 12
  store i8* %255, i8** %257, align 8
  %258 = load i64, i64* @rtw_tx_pwr_lmt_enable, align 8
  %259 = inttoptr i64 %258 to i8*
  %260 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %261 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %260, i32 0, i32 11
  store i8* %259, i8** %261, align 8
  %262 = load i64, i64* @rtw_tx_pwr_by_rate, align 8
  %263 = inttoptr i64 %262 to i8*
  %264 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %265 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %264, i32 0, i32 10
  store i8* %263, i8** %265, align 8
  %266 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %267 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %266, i32 0, i32 1
  store i32 14, i32* %267, align 4
  %268 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %269 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %268, i32 0, i32 2
  store i32 255, i32* %269, align 8
  %270 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %271 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %270, i32 0, i32 3
  store i32 255, i32* %271, align 4
  %272 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %273 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %272, i32 0, i32 4
  store i32 1, i32* %273, align 8
  %274 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %275 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %274, i32 0, i32 5
  store i32 64, i32* %275, align 4
  %276 = load i64, i64* @rtw_load_phy_file, align 8
  %277 = inttoptr i64 %276 to i8*
  %278 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %279 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %278, i32 0, i32 9
  store i8* %277, i8** %279, align 8
  %280 = load i64, i64* @rtw_decrypt_phy_file, align 8
  %281 = inttoptr i64 %280 to i8*
  %282 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %283 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %282, i32 0, i32 8
  store i8* %281, i8** %283, align 8
  %284 = load i64, i64* @rtw_qos_opt_enable, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %287 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %286, i32 0, i32 7
  store i8* %285, i8** %287, align 8
  %288 = load i64, i64* @rtw_hiq_filter, align 8
  %289 = inttoptr i64 %288 to i8*
  %290 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %291 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %290, i32 0, i32 6
  store i8* %289, i8** %291, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
