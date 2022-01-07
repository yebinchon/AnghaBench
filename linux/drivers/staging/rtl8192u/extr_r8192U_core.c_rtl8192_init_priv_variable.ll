; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init_priv_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init_priv_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_3__, i64, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@NIC_8192U = common dso_local global i32 0, align 4
@WIRELESS_MODE_AUTO = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@DEFAULT_RETRY_RTS = common dso_local global i32 0, align 4
@DEFAULT_RETRY_DATA = common dso_local global i32 0, align 4
@DEFAULT_RTS_THRESHOLD = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RESET_TYPE_NORESET = common dso_local global i32 0, align 4
@DEFAULT_BEACONINTERVAL = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_SCAN = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_ASSOCIATE = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_PROBERQ = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_PROBERS = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_TX_QUEUE = common dso_local global i32 0, align 4
@IEEE_SOFTMAC_BEACONS = common dso_local global i32 0, align 4
@IEEE80211_CCK_MODULATION = common dso_local global i32 0, align 4
@IEEE80211_OFDM_MODULATION = common dso_local global i32 0, align 4
@rtl8192_hard_start_xmit = common dso_local global i32 0, align 4
@rtl8192_set_chan = common dso_local global i32 0, align 4
@rtl8192_link_change = common dso_local global i32 0, align 4
@rtl8192_hard_data_xmit = common dso_local global i32 0, align 4
@rtl8192_data_hard_stop = common dso_local global i32 0, align 4
@rtl8192_data_hard_resume = common dso_local global i32 0, align 4
@DEFAULT_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@check_nic_enough_desc = common dso_local global i32 0, align 4
@TX_PACKET_SHIFT_BYTES = common dso_local global i32 0, align 4
@rtl8192_SetBWMode = common dso_local global i32 0, align 4
@rtl8192_handle_assoc_response = common dso_local global i32 0, align 4
@rtl8192_handle_beacon = common dso_local global i32 0, align 4
@GetNmodeSupportBySecCfg8192 = common dso_local global i32 0, align 4
@GetHalfNmodeSupportByAPs819xUsb = common dso_local global i32 0, align 4
@rtl8192_SetWirelessMode = common dso_local global i32 0, align 4
@InitialGain819xUsb = common dso_local global i32 0, align 4
@USB = common dso_local global i32 0, align 4
@TCR_MXDMA_2048 = common dso_local global i32 0, align 4
@TCR_MXDMA_OFFSET = common dso_local global i32 0, align 4
@TCR_SRL_OFFSET = common dso_local global i32 0, align 4
@TCR_LRL_OFFSET = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_ACF = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_MXDMA_OFFSET = common dso_local global i32 0, align 4
@RX_FIFO_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@RCR_ONLYERLPKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_QUEUE_SIZE = common dso_local global i64 0, align 8
@rtl8192_phy_SwChnl = common dso_local global i32 0, align 4
@TCR_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8192_init_priv_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_init_priv_variable(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.r8192_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %4, align 8
  %8 = load i32, i32* @NIC_8192U, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 23
  store i32 %8, i32* %10, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @WIRELESS_MODE_AUTO, align 4
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 13
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 35
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @IW_MODE_INFRA, align 4
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 34
  store i32 %18, i32* %22, align 8
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 33
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @DEFAULT_RETRY_RTS, align 4
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 22
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DEFAULT_RETRY_DATA, align 4
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 21
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @DEFAULT_RTS_THRESHOLD, align 4
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 13
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 32
  store i32 %33, i32* %37, align 8
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 13
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 110, i32* %41, align 8
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 13
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFF_PROMISC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 2
  store i32 6, i32* %57, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @RESET_TYPE_NORESET, align 4
  %61 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %62 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %61, i32 0, i32 20
  store i32 %60, i32* %62, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 4
  store i32 0, i32* %64, align 8
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 5
  store i32 0, i32* %66, align 4
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 6
  store i32 0, i32* %68, align 8
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 13
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 31
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @DEFAULT_BEACONINTERVAL, align 4
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 13
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 30
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 8
  %79 = load i32, i32* @IEEE_SOFTMAC_SCAN, align 4
  %80 = load i32, i32* @IEEE_SOFTMAC_ASSOCIATE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IEEE_SOFTMAC_PROBERQ, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IEEE_SOFTMAC_PROBERS, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IEEE_SOFTMAC_TX_QUEUE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IEEE_SOFTMAC_BEACONS, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 13
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 13
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @IEEE80211_CCK_MODULATION, align 4
  %99 = load i32, i32* @IEEE80211_OFDM_MODULATION, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 13
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i32 %100, i32* %104, align 8
  %105 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %106 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %105, i32 0, i32 13
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  store i32 1, i32* %108, align 4
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 13
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  store i32 1, i32* %112, align 8
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 13
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 29
  store i32* null, i32** %116, align 8
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 13
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 28
  store i32* null, i32** %120, align 8
  %121 = load i32, i32* @rtl8192_hard_start_xmit, align 4
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 13
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 27
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @rtl8192_set_chan, align 4
  %127 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %128 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %127, i32 0, i32 13
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 26
  store i32 %126, i32* %130, align 8
  %131 = load i32, i32* @rtl8192_link_change, align 4
  %132 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %133 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %132, i32 0, i32 13
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 25
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* @rtl8192_hard_data_xmit, align 4
  %137 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %138 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %137, i32 0, i32 13
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 24
  store i32 %136, i32* %140, align 8
  %141 = load i32, i32* @rtl8192_data_hard_stop, align 4
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 13
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 23
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* @rtl8192_data_hard_resume, align 4
  %147 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %148 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %147, i32 0, i32 13
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 22
  store i32 %146, i32* %150, align 8
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 13
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 21
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @DEFAULT_FRAG_THRESHOLD, align 4
  %156 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %157 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %156, i32 0, i32 13
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 20
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* @check_nic_enough_desc, align 4
  %161 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %162 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %161, i32 0, i32 13
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 19
  store i32 %160, i32* %164, align 8
  %165 = load i32, i32* @TX_PACKET_SHIFT_BYTES, align 4
  %166 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %167 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %166, i32 0, i32 13
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 18
  store i32 %165, i32* %169, align 4
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 13
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 7
  store i32 1, i32* %173, align 4
  %174 = load i32, i32* @rtl8192_SetBWMode, align 4
  %175 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %176 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %175, i32 0, i32 13
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 17
  store i32 %174, i32* %178, align 8
  %179 = load i32, i32* @rtl8192_handle_assoc_response, align 4
  %180 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %181 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %180, i32 0, i32 13
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 16
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* @rtl8192_handle_beacon, align 4
  %185 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %186 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %185, i32 0, i32 13
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 15
  store i32 %184, i32* %188, align 8
  %189 = load i32, i32* @GetNmodeSupportBySecCfg8192, align 4
  %190 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %191 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %190, i32 0, i32 13
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 14
  store i32 %189, i32* %193, align 4
  %194 = load i32, i32* @GetHalfNmodeSupportByAPs819xUsb, align 4
  %195 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %196 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %195, i32 0, i32 13
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 13
  store i32 %194, i32* %198, align 8
  %199 = load i32, i32* @rtl8192_SetWirelessMode, align 4
  %200 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %201 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %200, i32 0, i32 13
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 12
  store i32 %199, i32* %203, align 4
  %204 = load i32, i32* @InitialGain819xUsb, align 4
  %205 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %206 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %205, i32 0, i32 13
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 11
  store i32 %204, i32* %208, align 8
  %209 = load i32, i32* @USB, align 4
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 19
  store i32 %209, i32* %211, align 8
  %212 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %213 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %212, i32 0, i32 7
  store i32 48, i32* %213, align 4
  %214 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %215 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %214, i32 0, i32 8
  store i32 48, i32* %215, align 8
  %216 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %217 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %216, i32 0, i32 9
  store i32 7, i32* %217, align 4
  %218 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %219 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %218, i32 0, i32 18
  store i64 0, i64* %219, align 8
  %220 = load i32, i32* @TCR_MXDMA_2048, align 4
  %221 = load i32, i32* @TCR_MXDMA_OFFSET, align 4
  %222 = shl i32 %220, %221
  %223 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %224 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @TCR_SRL_OFFSET, align 4
  %227 = shl i32 %225, %226
  %228 = or i32 %222, %227
  %229 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %230 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @TCR_LRL_OFFSET, align 4
  %233 = shl i32 %231, %232
  %234 = or i32 %228, %233
  %235 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %236 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %235, i32 0, i32 10
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* @RCR_AMF, align 4
  %238 = load i32, i32* @RCR_ADF, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @RCR_ACF, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @RCR_AB, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @RCR_AM, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @RCR_APM, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @RCR_MXDMA_OFFSET, align 4
  %249 = shl i32 7, %248
  %250 = or i32 %247, %249
  %251 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %252 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @RX_FIFO_THRESHOLD_SHIFT, align 4
  %255 = shl i32 %253, %254
  %256 = or i32 %250, %255
  %257 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %258 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 7
  br i1 %260, label %261, label %263

261:                                              ; preds = %1
  %262 = load i32, i32* @RCR_ONLYERLPKT, align 4
  br label %264

263:                                              ; preds = %1
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ]
  %266 = or i32 %256, %265
  %267 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %268 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %267, i32 0, i32 11
  store i32 %266, i32* %268, align 4
  %269 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %270 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %269, i32 0, i32 17
  store i64 0, i64* %270, align 8
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i32 @kzalloc(i32 4, i32 %271)
  %273 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %274 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %273, i32 0, i32 16
  store i32 %272, i32* %274, align 8
  %275 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %276 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %275, i32 0, i32 16
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %264
  %280 = load i32, i32* @ENOMEM, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %2, align 4
  br label %343

282:                                              ; preds = %264
  %283 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %284 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %283, i32 0, i32 15
  %285 = call i32 @skb_queue_head_init(i32* %284)
  %286 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %287 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %286, i32 0, i32 14
  %288 = call i32 @skb_queue_head_init(i32* %287)
  store i64 0, i64* %5, align 8
  br label %289

289:                                              ; preds = %302, %282
  %290 = load i64, i64* %5, align 8
  %291 = load i64, i64* @MAX_QUEUE_SIZE, align 8
  %292 = icmp ult i64 %290, %291
  br i1 %292, label %293, label %305

293:                                              ; preds = %289
  %294 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %295 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %294, i32 0, i32 13
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 10
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* %5, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = call i32 @skb_queue_head_init(i32* %300)
  br label %302

302:                                              ; preds = %293
  %303 = load i64, i64* %5, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %5, align 8
  br label %289

305:                                              ; preds = %289
  store i64 0, i64* %5, align 8
  br label %306

306:                                              ; preds = %319, %305
  %307 = load i64, i64* %5, align 8
  %308 = load i64, i64* @MAX_QUEUE_SIZE, align 8
  %309 = icmp ult i64 %307, %308
  br i1 %309, label %310, label %322

310:                                              ; preds = %306
  %311 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %312 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %311, i32 0, i32 13
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 9
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* %5, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = call i32 @skb_queue_head_init(i32* %317)
  br label %319

319:                                              ; preds = %310
  %320 = load i64, i64* %5, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %5, align 8
  br label %306

322:                                              ; preds = %306
  store i64 0, i64* %5, align 8
  br label %323

323:                                              ; preds = %336, %322
  %324 = load i64, i64* %5, align 8
  %325 = load i64, i64* @MAX_QUEUE_SIZE, align 8
  %326 = icmp ult i64 %324, %325
  br i1 %326, label %327, label %339

327:                                              ; preds = %323
  %328 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %329 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %328, i32 0, i32 13
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 8
  %332 = load i32*, i32** %331, align 8
  %333 = load i64, i64* %5, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  %335 = call i32 @skb_queue_head_init(i32* %334)
  br label %336

336:                                              ; preds = %327
  %337 = load i64, i64* %5, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %5, align 8
  br label %323

339:                                              ; preds = %323
  %340 = load i32, i32* @rtl8192_phy_SwChnl, align 4
  %341 = load %struct.r8192_priv*, %struct.r8192_priv** %4, align 8
  %342 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %341, i32 0, i32 12
  store i32 %340, i32* %342, align 8
  store i32 0, i32* %2, align 4
  br label %343

343:                                              ; preds = %339, %279
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
