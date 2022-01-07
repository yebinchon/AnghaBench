; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_fw_rsvdpagepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_rtl92c_set_fw_rsvdpagepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type opaque
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i32, i32 }

@reserved_page_packet = common dso_local global i32* null, align 8
@BEACON_PG = common dso_local global i32 0, align 4
@PSPOLL_PG = common dso_local global i32 0, align 4
@NULL_PG = common dso_local global i32 0, align 4
@PROBERSP_PG = common dso_local global i32 0, align 4
@TOTAL_RESERVED_PKT_LEN = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"rtl92c_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set RSVD page location to Fw.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"H2C_RSVDPAGE:\0A\00", align 1
@H2C_RSVDPAGE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_set_fw_rsvdpagepkt(%struct.ieee80211_hw* %0, i32 (%struct.ieee80211_hw*, %struct.sk_buff*)* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32 (%struct.ieee80211_hw*, %struct.sk_buff*)*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 (%struct.ieee80211_hw*, %struct.sk_buff*)* %1, i32 (%struct.ieee80211_hw*, %struct.sk_buff*)** %4, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %5, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %21 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  store i32 0, i32* %11, align 4
  %22 = load i32*, i32** @reserved_page_packet, align 8
  %23 = load i32, i32* @BEACON_PG, align 4
  %24 = mul nsw i32 %23, 128
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %29 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SET_80211_HDR_ADDRESS2(i32* %27, i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SET_80211_HDR_ADDRESS3(i32* %32, i32 %35)
  %37 = load i32*, i32** @reserved_page_packet, align 8
  %38 = load i32, i32* @PSPOLL_PG, align 4
  %39 = mul nsw i32 %38, 128
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 49152
  %47 = call i32 @SET_80211_PS_POLL_AID(i32* %42, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %50 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SET_80211_PS_POLL_BSSID(i32* %48, i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %55 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SET_80211_PS_POLL_TA(i32* %53, i32 %56)
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %59 = load i32, i32* @PSPOLL_PG, align 4
  %60 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32* %58, i32 %59)
  %61 = load i32*, i32** @reserved_page_packet, align 8
  %62 = load i32, i32* @NULL_PG, align 4
  %63 = mul nsw i32 %62, 128
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SET_80211_HDR_ADDRESS1(i32* %66, i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SET_80211_HDR_ADDRESS2(i32* %71, i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SET_80211_HDR_ADDRESS3(i32* %76, i32 %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %82 = load i32, i32* @NULL_PG, align 4
  %83 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32* %81, i32 %82)
  %84 = load i32*, i32** @reserved_page_packet, align 8
  %85 = load i32, i32* @PROBERSP_PG, align 4
  %86 = mul nsw i32 %85, 128
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32* %88, i32** %15, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SET_80211_HDR_ADDRESS1(i32* %89, i32 %92)
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %96 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SET_80211_HDR_ADDRESS2(i32* %94, i32 %97)
  %99 = load i32*, i32** %15, align 8
  %100 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %101 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @SET_80211_HDR_ADDRESS3(i32* %99, i32 %102)
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %105 = load i32, i32* @PROBERSP_PG, align 4
  %106 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP(i32* %104, i32 %105)
  %107 = load i32, i32* @TOTAL_RESERVED_PKT_LEN, align 4
  store i32 %107, i32* %8, align 4
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %109 = load i32, i32* @COMP_CMD, align 4
  %110 = load i32, i32* @DBG_LOUD, align 4
  %111 = load i32*, i32** @reserved_page_packet, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %112, i32 %113)
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = load i32, i32* @COMP_CMD, align 4
  %117 = load i32, i32* @DBG_DMESG, align 4
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %119 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %118, i32 3)
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.sk_buff* @dev_alloc_skb(i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %7, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %2
  br label %166

125:                                              ; preds = %2
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @skb_put_data(%struct.sk_buff* %126, i32** @reserved_page_packet, i32 %127)
  %129 = load i32 (%struct.ieee80211_hw*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, %struct.sk_buff*)** %4, align 8
  %130 = icmp ne i32 (%struct.ieee80211_hw*, %struct.sk_buff*)* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i32 (%struct.ieee80211_hw*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, %struct.sk_buff*)** %4, align 8
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = call i32 %132(%struct.ieee80211_hw* %133, %struct.sk_buff* %134)
  store i32 %135, i32* %9, align 4
  br label %140

136:                                              ; preds = %125
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = call i32 @rtl_cmd_send_packet(%struct.ieee80211_hw* %137, %struct.sk_buff* %138)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %131
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 1, i32* %11, align 4
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = load i32, i32* @COMP_POWER, align 4
  %150 = load i32, i32* @DBG_LOUD, align 4
  %151 = call i32 @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = load i32, i32* @COMP_CMD, align 4
  %154 = load i32, i32* @DBG_DMESG, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %156 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %155, i32 3)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %158 = load i32, i32* @H2C_RSVDPAGE, align 4
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %160 = call i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw* %157, i32 %158, i32 12, i32* %159)
  br label %166

161:                                              ; preds = %144
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %163 = load i32, i32* @COMP_ERR, align 4
  %164 = load i32, i32* @DBG_WARNING, align 4
  %165 = call i32 @RT_TRACE(%struct.rtl_priv* %162, i32 %163, i32 %164, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %124, %161, %147
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SET_80211_HDR_ADDRESS2(i32*, i32) #1

declare dso_local i32 @SET_80211_HDR_ADDRESS3(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_AID(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_BSSID(i32*, i32) #1

declare dso_local i32 @SET_80211_PS_POLL_TA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32*, i32) #1

declare dso_local i32 @SET_80211_HDR_ADDRESS1(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32**, i32) #1

declare dso_local i32 @rtl_cmd_send_packet(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
