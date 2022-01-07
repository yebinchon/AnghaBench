; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recvframe_chkmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recvframe_chkmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.security_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64 }
%struct.security_priv = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }
%union.recv_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i64, i64, i32, i32, i32, i32, i32*, i64, i32* }
%struct.sta_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@_SUCCESS = common dso_local global i32 0, align 4
@_TKIP_ = common dso_local global i64 0, align 8
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"\0A recvframe_chkmic:prxattrib->encrypt == _TKIP_\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\0A recvframe_chkmic:da = 0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0A recvframe_chkmic: bcmc key\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"\0A recvframe_chkmic:didn't install group key!!!!!!!!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0A recvframe_chkmic: unicast key\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\0A prxattrib->iv_len =%d prxattrib->icv_len =%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"recvframe_chkmic:miccode[%d](%02x) != *(pframemic+%d)(%02x) \00", align 1
@.str.7 = private unnamed_addr constant [91 x i8] c"\0A *(pframemic-8)-*(pframemic-1) = 0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"\0A *(pframemic-16)-*(pframemic-9) = 0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"\0A ======demp packet (len =%d) ======\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\0A ======demp packet end [len =%d]======\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\0A hrdlen =%d,\0A\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"ra = 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x psecuritypriv->binstallGrpkey =%d \00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c" mic error :prxattrib->bdecrypted =%d \00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c" mic error :prxattrib->bdecrypted =%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"psecuritypriv->bcheck_grpkey =true\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"recvframe_chkmic: rtw_get_stainfo == NULL!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recvframe_chkmic(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.sta_info*, align 8
  %16 = alloca %struct.rx_pkt_attrib*, align 8
  %17 = alloca %struct.security_priv*, align 8
  %18 = alloca %struct.mlme_ext_priv*, align 8
  %19 = alloca %struct.mlme_ext_info*, align 8
  %20 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %21 = load i32, i32* @_SUCCESS, align 4
  store i32 %21, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  %22 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %23 = bitcast %union.recv_frame* %22 to %struct.TYPE_8__*
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store %struct.rx_pkt_attrib* %25, %struct.rx_pkt_attrib** %16, align 8
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  store %struct.security_priv* %27, %struct.security_priv** %17, align 8
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 1
  store %struct.mlme_ext_priv* %29, %struct.mlme_ext_priv** %18, align 8
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %18, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 0
  store %struct.mlme_ext_info* %31, %struct.mlme_ext_info** %19, align 8
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %35 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call %struct.sta_info* @rtw_get_stainfo(i32* %33, i32* %37)
  store %struct.sta_info* %38, %struct.sta_info** %15, align 8
  %39 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %40 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @_TKIP_, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %517

44:                                               ; preds = %2
  %45 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %46 = load i32, i32* @_drv_info_, align 4
  %47 = call i32 @RT_TRACE(i32 %45, i32 %46, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %49 = load i32, i32* @_drv_info_, align 4
  %50 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %51 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %56 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %61 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %66 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %71 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %76 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @RT_TRACE(i32 %48, i32 %49, i8* %81)
  %83 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %84 = icmp ne %struct.sta_info* %83, null
  br i1 %84, label %85, label %510

85:                                               ; preds = %44
  %86 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %87 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @IS_MCAST(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = load %struct.security_priv*, %struct.security_priv** %17, align 8
  %93 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %96 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64* %101, i64** %14, align 8
  %102 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %103 = load i32, i32* @_drv_info_, align 4
  %104 = call i32 @RT_TRACE(i32 %102, i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.security_priv*, %struct.security_priv** %17, align 8
  %106 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %91
  %110 = load i32, i32* @_FAIL, align 4
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %112 = load i32, i32* @_drv_err_, align 4
  %113 = call i32 @RT_TRACE(i32 %111, i32 %112, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %518

115:                                              ; preds = %91
  br label %125

116:                                              ; preds = %85
  %117 = load %struct.sta_info*, %struct.sta_info** %15, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  store i64* %121, i64** %14, align 8
  %122 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %123 = load i32, i32* @_drv_err_, align 4
  %124 = call i32 @RT_TRACE(i32 %122, i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %116, %115
  %126 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %127 = bitcast %union.recv_frame* %126 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %132 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %136 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  %139 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %140 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %138, %141
  %143 = sub nsw i32 %142, 8
  store i32 %143, i32* %7, align 4
  %144 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %145 = bitcast %union.recv_frame* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  store i64* %148, i64** %11, align 8
  %149 = load i64*, i64** %11, align 8
  %150 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %151 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %149, i64 %153
  %155 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %156 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %154, i64 %158
  store i64* %159, i64** %12, align 8
  %160 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %161 = load i32, i32* @_drv_info_, align 4
  %162 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %163 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %166 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @RT_TRACE(i32 %160, i32 %161, i8* %169)
  %171 = load i64*, i64** %14, align 8
  %172 = load i64*, i64** %11, align 8
  %173 = load i64*, i64** %12, align 8
  %174 = load i32, i32* %7, align 4
  %175 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 0
  %176 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %177 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %176, i32 0, i32 7
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i8
  %180 = call i32 @rtw_seccalctkipmic(i64* %171, i64* %172, i64* %173, i32 %174, i64* %175, i8 zeroext %179)
  %181 = load i64*, i64** %12, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64* %184, i64** %13, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %216, %125
  %186 = load i32, i32* %5, align 4
  %187 = icmp slt i32 %186, 8
  br i1 %187, label %188, label %219

188:                                              ; preds = %185
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %13, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %192, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %188
  %200 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %201 = load i32, i32* @_drv_err_, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x i64], [8 x i64]* %8, i64 0, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = load i64*, i64** %13, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @RT_TRACE(i32 %200, i32 %201, i8* %213)
  store i64 1, i64* %9, align 8
  br label %215

215:                                              ; preds = %199, %188
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %185

219:                                              ; preds = %185
  %220 = load i64, i64* %9, align 8
  %221 = icmp eq i64 %220, 1
  br i1 %221, label %222, label %491

222:                                              ; preds = %219
  %223 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %224 = load i32, i32* @_drv_err_, align 4
  %225 = load i64*, i64** %13, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 -8
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %13, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 -7
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %13, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 -6
  %233 = load i64, i64* %232, align 8
  %234 = load i64*, i64** %13, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 -5
  %236 = load i64, i64* %235, align 8
  %237 = load i64*, i64** %13, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 -4
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %13, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 -3
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %13, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 -2
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %13, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 -1
  %248 = load i64, i64* %247, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @RT_TRACE(i32 %223, i32 %224, i8* %249)
  %251 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %252 = load i32, i32* @_drv_err_, align 4
  %253 = load i64*, i64** %13, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 -16
  %255 = load i64, i64* %254, align 8
  %256 = load i64*, i64** %13, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 -15
  %258 = load i64, i64* %257, align 8
  %259 = load i64*, i64** %13, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 -14
  %261 = load i64, i64* %260, align 8
  %262 = load i64*, i64** %13, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 -13
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** %13, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 -12
  %267 = load i64, i64* %266, align 8
  %268 = load i64*, i64** %13, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 -11
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %13, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 -10
  %273 = load i64, i64* %272, align 8
  %274 = load i64*, i64** %13, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 -9
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @RT_TRACE(i32 %251, i32 %252, i8* %277)
  %279 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %280 = load i32, i32* @_drv_err_, align 4
  %281 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %282 = bitcast %union.recv_frame* %281 to %struct.TYPE_8__*
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 @RT_TRACE(i32 %279, i32 %280, i8* %287)
  store i64 0, i64* %20, align 8
  br label %289

289:                                              ; preds = %374, %222
  %290 = load i64, i64* %20, align 8
  %291 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %292 = bitcast %union.recv_frame* %291 to %struct.TYPE_8__*
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = icmp slt i64 %290, %296
  br i1 %297, label %298, label %377

298:                                              ; preds = %289
  %299 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %300 = load i32, i32* @_drv_err_, align 4
  %301 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %302 = bitcast %union.recv_frame* %301 to %struct.TYPE_8__*
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i64*, i64** %304, align 8
  %306 = load i64, i64* %20, align 8
  %307 = getelementptr inbounds i64, i64* %305, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %310 = bitcast %union.recv_frame* %309 to %struct.TYPE_8__*
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i64*, i64** %312, align 8
  %314 = load i64, i64* %20, align 8
  %315 = getelementptr inbounds i64, i64* %313, i64 %314
  %316 = getelementptr inbounds i64, i64* %315, i64 1
  %317 = load i64, i64* %316, align 8
  %318 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %319 = bitcast %union.recv_frame* %318 to %struct.TYPE_8__*
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 1
  %322 = load i64*, i64** %321, align 8
  %323 = load i64, i64* %20, align 8
  %324 = getelementptr inbounds i64, i64* %322, i64 %323
  %325 = getelementptr inbounds i64, i64* %324, i64 2
  %326 = load i64, i64* %325, align 8
  %327 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %328 = bitcast %union.recv_frame* %327 to %struct.TYPE_8__*
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i64*, i64** %330, align 8
  %332 = load i64, i64* %20, align 8
  %333 = getelementptr inbounds i64, i64* %331, i64 %332
  %334 = getelementptr inbounds i64, i64* %333, i64 3
  %335 = load i64, i64* %334, align 8
  %336 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %337 = bitcast %union.recv_frame* %336 to %struct.TYPE_8__*
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* %20, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = getelementptr inbounds i64, i64* %342, i64 4
  %344 = load i64, i64* %343, align 8
  %345 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %346 = bitcast %union.recv_frame* %345 to %struct.TYPE_8__*
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 1
  %349 = load i64*, i64** %348, align 8
  %350 = load i64, i64* %20, align 8
  %351 = getelementptr inbounds i64, i64* %349, i64 %350
  %352 = getelementptr inbounds i64, i64* %351, i64 5
  %353 = load i64, i64* %352, align 8
  %354 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %355 = bitcast %union.recv_frame* %354 to %struct.TYPE_8__*
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 1
  %358 = load i64*, i64** %357, align 8
  %359 = load i64, i64* %20, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  %361 = getelementptr inbounds i64, i64* %360, i64 6
  %362 = load i64, i64* %361, align 8
  %363 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %364 = bitcast %union.recv_frame* %363 to %struct.TYPE_8__*
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 1
  %367 = load i64*, i64** %366, align 8
  %368 = load i64, i64* %20, align 8
  %369 = getelementptr inbounds i64, i64* %367, i64 %368
  %370 = getelementptr inbounds i64, i64* %369, i64 7
  %371 = load i64, i64* %370, align 8
  %372 = inttoptr i64 %371 to i8*
  %373 = call i32 @RT_TRACE(i32 %299, i32 %300, i8* %372)
  br label %374

374:                                              ; preds = %298
  %375 = load i64, i64* %20, align 8
  %376 = add nsw i64 %375, 8
  store i64 %376, i64* %20, align 8
  br label %289

377:                                              ; preds = %289
  %378 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %379 = load i32, i32* @_drv_err_, align 4
  %380 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %381 = bitcast %union.recv_frame* %380 to %struct.TYPE_8__*
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = inttoptr i64 %385 to i8*
  %387 = call i32 @RT_TRACE(i32 %378, i32 %379, i8* %386)
  %388 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %389 = load i32, i32* @_drv_err_, align 4
  %390 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %391 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = inttoptr i64 %393 to i8*
  %395 = call i32 @RT_TRACE(i32 %388, i32 %389, i8* %394)
  %396 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %397 = load i32, i32* @_drv_err_, align 4
  %398 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %399 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %398, i32 0, i32 6
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 0
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %404 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %403, i32 0, i32 6
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %409 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %408, i32 0, i32 6
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 2
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %414 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %413, i32 0, i32 6
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 3
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %419 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %418, i32 0, i32 6
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 4
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %424 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %423, i32 0, i32 6
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 5
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.security_priv*, %struct.security_priv** %17, align 8
  %429 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = inttoptr i64 %431 to i8*
  %433 = call i32 @RT_TRACE(i32 %396, i32 %397, i8* %432)
  %434 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %435 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %434, i32 0, i32 6
  %436 = load i32*, i32** %435, align 8
  %437 = call i32 @IS_MCAST(i32* %436)
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %448

439:                                              ; preds = %377
  %440 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %441 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %19, align 8
  %444 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %442, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %439
  store i64 0, i64* %10, align 8
  br label %448

448:                                              ; preds = %447, %439, %377
  %449 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %450 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %449, i32 0, i32 5
  %451 = load i32, i32* %450, align 4
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %453, label %476

453:                                              ; preds = %448
  %454 = load i64, i64* %10, align 8
  %455 = icmp eq i64 %454, 1
  br i1 %455, label %456, label %476

456:                                              ; preds = %453
  %457 = load %struct.adapter*, %struct.adapter** %3, align 8
  %458 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %459 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %458, i32 0, i32 6
  %460 = load i32*, i32** %459, align 8
  %461 = call i32 @IS_MCAST(i32* %460)
  %462 = sext i32 %461 to i64
  %463 = call i32 @rtw_handle_tkip_mic_err(%struct.adapter* %457, i64 %462)
  %464 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %465 = load i32, i32* @_drv_err_, align 4
  %466 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %467 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = inttoptr i64 %469 to i8*
  %471 = call i32 @RT_TRACE(i32 %464, i32 %465, i8* %470)
  %472 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %473 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 4
  %475 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %474)
  br label %489

476:                                              ; preds = %453, %448
  %477 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %478 = load i32, i32* @_drv_err_, align 4
  %479 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %480 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = inttoptr i64 %482 to i8*
  %484 = call i32 @RT_TRACE(i32 %477, i32 %478, i8* %483)
  %485 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %486 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %485, i32 0, i32 5
  %487 = load i32, i32* %486, align 4
  %488 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %487)
  br label %489

489:                                              ; preds = %476, %456
  %490 = load i32, i32* @_FAIL, align 4
  store i32 %490, i32* %6, align 4
  br label %509

491:                                              ; preds = %219
  %492 = load %struct.security_priv*, %struct.security_priv** %17, align 8
  %493 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %508

496:                                              ; preds = %491
  %497 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %16, align 8
  %498 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %497, i32 0, i32 6
  %499 = load i32*, i32** %498, align 8
  %500 = call i32 @IS_MCAST(i32* %499)
  %501 = icmp eq i32 %500, 1
  br i1 %501, label %502, label %508

502:                                              ; preds = %496
  %503 = load %struct.security_priv*, %struct.security_priv** %17, align 8
  %504 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %503, i32 0, i32 1
  store i32 1, i32* %504, align 4
  %505 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %506 = load i32, i32* @_drv_err_, align 4
  %507 = call i32 @RT_TRACE(i32 %505, i32 %506, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  br label %508

508:                                              ; preds = %502, %496, %491
  br label %509

509:                                              ; preds = %508, %489
  br label %514

510:                                              ; preds = %44
  %511 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %512 = load i32, i32* @_drv_err_, align 4
  %513 = call i32 @RT_TRACE(i32 %511, i32 %512, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  br label %514

514:                                              ; preds = %510, %509
  %515 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %516 = call i32 @recvframe_pull_tail(%union.recv_frame* %515, i32 8)
  br label %517

517:                                              ; preds = %514, %2
  br label %518

518:                                              ; preds = %517, %109
  %519 = load i32, i32* %6, align 4
  ret i32 %519
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @IS_MCAST(i32*) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i32 @rtw_seccalctkipmic(i64*, i64*, i64*, i32, i64*, i8 zeroext) #1

declare dso_local i32 @rtw_handle_tkip_mic_err(%struct.adapter*, i64) #1

declare dso_local i32 @recvframe_pull_tail(%union.recv_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
