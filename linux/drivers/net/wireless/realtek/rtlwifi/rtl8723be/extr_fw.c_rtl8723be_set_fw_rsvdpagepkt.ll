; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_fw.c_rtl8723be_set_fw_rsvdpagepkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_fw.c_rtl8723be_set_fw_rsvdpagepkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@reserved_page_packet = common dso_local global i32* null, align 8
@BEACON_PG = common dso_local global i32 0, align 4
@PSPOLL_PG = common dso_local global i32 0, align 4
@NULL_PG = common dso_local global i32 0, align 4
@PROBERSP_PG = common dso_local global i32 0, align 4
@QOS_NULL_PG = common dso_local global i32 0, align 4
@BT_QOS_NULL_PG = common dso_local global i32 0, align 4
@TOTAL_RESERVED_PKT_LEN = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\0A\00", align 1
@DBG_DMESG = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set RSVD page location to Fw.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"H2C_RSVDPAGE:\0A\00", align 1
@H2C_8723B_RSVDPAGE = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_set_fw_rsvdpagepkt(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %5, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %21)
  store %struct.rtl_mac* %22, %struct.rtl_mac** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %23 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 20, i1 false)
  store i32 0, i32* %11, align 4
  %24 = load i32*, i32** @reserved_page_packet, align 8
  %25 = load i32, i32* @BEACON_PG, align 4
  %26 = mul nsw i32 %25, 128
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %31 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SET_80211_HDR_ADDRESS2(i32* %29, i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SET_80211_HDR_ADDRESS3(i32* %34, i32 %37)
  %39 = load i32*, i32** @reserved_page_packet, align 8
  %40 = load i32, i32* @PSPOLL_PG, align 4
  %41 = mul nsw i32 %40, 128
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %46 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 49152
  %49 = call i32 @SET_80211_PS_POLL_AID(i32* %44, i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SET_80211_PS_POLL_BSSID(i32* %50, i32 %53)
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %57 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SET_80211_PS_POLL_TA(i32* %55, i32 %58)
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* @PSPOLL_PG, align 4
  %62 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PSPOLL(i32* %60, i32 %61)
  %63 = load i32*, i32** @reserved_page_packet, align 8
  %64 = load i32, i32* @NULL_PG, align 4
  %65 = mul nsw i32 %64, 128
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %70 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SET_80211_HDR_ADDRESS1(i32* %68, i32 %71)
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SET_80211_HDR_ADDRESS2(i32* %73, i32 %76)
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SET_80211_HDR_ADDRESS3(i32* %78, i32 %81)
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %84 = load i32, i32* @NULL_PG, align 4
  %85 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_NULL_DATA(i32* %83, i32 %84)
  %86 = load i32*, i32** @reserved_page_packet, align 8
  %87 = load i32, i32* @PROBERSP_PG, align 4
  %88 = mul nsw i32 %87, 128
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32* %90, i32** %15, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %93 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SET_80211_HDR_ADDRESS1(i32* %91, i32 %94)
  %96 = load i32*, i32** %15, align 8
  %97 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %98 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SET_80211_HDR_ADDRESS2(i32* %96, i32 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %103 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SET_80211_HDR_ADDRESS3(i32* %101, i32 %104)
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %107 = load i32, i32* @PROBERSP_PG, align 4
  %108 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_PROBE_RSP(i32* %106, i32 %107)
  %109 = load i32*, i32** @reserved_page_packet, align 8
  %110 = load i32, i32* @QOS_NULL_PG, align 4
  %111 = mul nsw i32 %110, 128
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32* %113, i32** %16, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %116 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @SET_80211_HDR_ADDRESS1(i32* %114, i32 %117)
  %119 = load i32*, i32** %16, align 8
  %120 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %121 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SET_80211_HDR_ADDRESS2(i32* %119, i32 %122)
  %124 = load i32*, i32** %16, align 8
  %125 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %126 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @SET_80211_HDR_ADDRESS3(i32* %124, i32 %127)
  %129 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %130 = load i32, i32* @QOS_NULL_PG, align 4
  %131 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(i32* %129, i32 %130)
  %132 = load i32*, i32** @reserved_page_packet, align 8
  %133 = load i32, i32* @BT_QOS_NULL_PG, align 4
  %134 = mul nsw i32 %133, 128
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32* %136, i32** %17, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %139 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @SET_80211_HDR_ADDRESS1(i32* %137, i32 %140)
  %142 = load i32*, i32** %17, align 8
  %143 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %144 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SET_80211_HDR_ADDRESS2(i32* %142, i32 %145)
  %147 = load i32*, i32** %17, align 8
  %148 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %149 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @SET_80211_HDR_ADDRESS3(i32* %147, i32 %150)
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %153 = load i32, i32* @BT_QOS_NULL_PG, align 4
  %154 = call i32 @SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(i32* %152, i32 %153)
  %155 = load i32, i32* @TOTAL_RESERVED_PKT_LEN, align 4
  store i32 %155, i32* %8, align 4
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %157 = load i32, i32* @COMP_CMD, align 4
  %158 = load i32, i32* @DBG_LOUD, align 4
  %159 = load i32*, i32** @reserved_page_packet, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32* %160, i32 %161)
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = load i32, i32* @COMP_CMD, align 4
  %165 = load i32, i32* @DBG_DMESG, align 4
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %167 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32* %166, i32 20)
  %168 = load i32, i32* %8, align 4
  %169 = call %struct.sk_buff* @dev_alloc_skb(i32 %168)
  store %struct.sk_buff* %169, %struct.sk_buff** %7, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = icmp ne %struct.sk_buff* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %2
  br label %205

173:                                              ; preds = %2
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @skb_put_data(%struct.sk_buff* %174, i32** @reserved_page_packet, i32 %175)
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call i32 @rtl_cmd_send_packet(%struct.ieee80211_hw* %177, %struct.sk_buff* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store i32 1, i32* %11, align 4
  br label %183

183:                                              ; preds = %182, %173
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %188 = load i32, i32* @COMP_POWER, align 4
  %189 = load i32, i32* @DBG_LOUD, align 4
  %190 = call i32 @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %191 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %192 = load i32, i32* @COMP_CMD, align 4
  %193 = load i32, i32* @DBG_DMESG, align 4
  %194 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %195 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %194, i32 20)
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %197 = load i32, i32* @H2C_8723B_RSVDPAGE, align 4
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %199 = call i32 @rtl8723be_fill_h2c_cmd(%struct.ieee80211_hw* %196, i32 %197, i32 20, i32* %198)
  br label %205

200:                                              ; preds = %183
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %202 = load i32, i32* @COMP_ERR, align 4
  %203 = load i32, i32* @DBG_WARNING, align 4
  %204 = call i32 @RT_TRACE(%struct.rtl_priv* %201, i32 %202, i32 %203, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %205

205:                                              ; preds = %172, %200, %186
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

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_QOS_NULL_DATA(i32*, i32) #1

declare dso_local i32 @SET_H2CCMD_RSVDPAGE_LOC_BT_QOS_NULL_DATA(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32**, i32) #1

declare dso_local i32 @rtl_cmd_send_packet(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8723be_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
