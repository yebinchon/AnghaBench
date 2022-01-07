; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_validate_recv_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_validate_recv_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.security_priv }
%struct.security_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.sta_info*, %struct.rx_pkt_attrib, i32* }
%struct.sta_info = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.rx_pkt_attrib = type { i32, i32, i64, i32, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32 }

@_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*)* @validate_recv_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_recv_data_frame(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.rx_pkt_attrib*, align 8
  %14 = alloca %struct.security_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %union.recv_frame* %1, %union.recv_frame** %5, align 8
  store %struct.sta_info* null, %struct.sta_info** %11, align 8
  %15 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %16 = bitcast %union.recv_frame* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %21 = bitcast %union.recv_frame* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.rx_pkt_attrib* %23, %struct.rx_pkt_attrib** %13, align 8
  %24 = load %struct._adapter*, %struct._adapter** %4, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 0
  store %struct.security_priv* %25, %struct.security_priv** %14, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @GetRetry(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = call i32* @get_da(i32* %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @get_sa(i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @get_hdr_bssid(i32* %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @_FAIL, align 4
  store i32 %37, i32* %3, align 4
  br label %251

38:                                               ; preds = %2
  %39 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %40 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %41, i32* %42, i32 %43)
  %45 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %46 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i32 %47, i32* %48, i32 %49)
  %51 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 13
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  %57 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %58 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %124 [
    i32 0, label %60
    i32 1, label %76
    i32 2, label %92
    i32 3, label %108
  ]

60:                                               ; preds = %38
  %61 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %62 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32 %63, i32* %64, i32 %65)
  %67 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %68 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(i32 %69, i32* %70, i32 %71)
  %73 = load %struct._adapter*, %struct._adapter** %4, align 8
  %74 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %75 = call i32 @sta2sta_data_frame(%struct._adapter* %73, %union.recv_frame* %74, %struct.sta_info** %11)
  store i32 %75, i32* %6, align 4
  br label %126

76:                                               ; preds = %38
  %77 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %78 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = call i32 @memcpy(i32 %79, i32* %80, i32 %81)
  %83 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %84 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @memcpy(i32 %85, i32* %86, i32 %87)
  %89 = load %struct._adapter*, %struct._adapter** %4, align 8
  %90 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %91 = call i32 @ap2sta_data_frame(%struct._adapter* %89, %union.recv_frame* %90, %struct.sta_info** %11)
  store i32 %91, i32* %6, align 4
  br label %126

92:                                               ; preds = %38
  %93 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %94 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %95, i32* %96, i32 %97)
  %99 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %100 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @ETH_ALEN, align 4
  %104 = call i32 @memcpy(i32 %101, i32* %102, i32 %103)
  %105 = load %struct._adapter*, %struct._adapter** %4, align 8
  %106 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %107 = call i32 @sta2ap_data_frame(%struct._adapter* %105, %union.recv_frame* %106, %struct.sta_info** %11)
  store i32 %107, i32* %6, align 4
  br label %126

108:                                              ; preds = %38
  %109 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %110 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32* @GetAddr1Ptr(i32* %112)
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @memcpy(i32 %111, i32* %113, i32 %114)
  %116 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %117 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call i32* @GetAddr2Ptr(i32* %119)
  %121 = load i32, i32* @ETH_ALEN, align 4
  %122 = call i32 @memcpy(i32 %118, i32* %120, i32 %121)
  %123 = load i32, i32* @_FAIL, align 4
  store i32 %123, i32* %3, align 4
  br label %251

124:                                              ; preds = %38
  %125 = load i32, i32* @_FAIL, align 4
  store i32 %125, i32* %3, align 4
  br label %251

126:                                              ; preds = %92, %76, %60
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @_FAIL, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @_FAIL, align 4
  store i32 %131, i32* %3, align 4
  br label %251

132:                                              ; preds = %126
  %133 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %134 = icmp eq %struct.sta_info* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @_FAIL, align 4
  store i32 %136, i32* %3, align 4
  br label %251

137:                                              ; preds = %132
  %138 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %139 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %140 = bitcast %union.recv_frame* %139 to %struct.TYPE_5__*
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store %struct.sta_info* %138, %struct.sta_info** %142, align 8
  %143 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %144 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %143, i32 0, i32 10
  store i64 0, i64* %144, align 8
  %145 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %146 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %173

149:                                              ; preds = %137
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 24
  %152 = call i64 @GetPriority(i32* %151)
  %153 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %154 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 24
  %157 = call i32 @GetAckpolicy(i32* %156)
  %158 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %159 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %158, i32 0, i32 11
  store i32 %157, i32* %159, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 24
  %162 = call i64 @GetAMsdu(i32* %161)
  %163 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %164 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %163, i32 0, i32 10
  store i64 %162, i64* %164, align 8
  %165 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %166 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 3
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 32, i32 26
  %171 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %172 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  br label %184

173:                                              ; preds = %137
  %174 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %175 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  %176 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %177 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 3
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 30, i32 24
  %182 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %183 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %173, %149
  %185 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %186 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %191 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 4
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %189, %184
  %195 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %196 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %199 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %203 = bitcast %union.recv_frame* %202 to %struct.TYPE_5__*
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i32* %201, i32** %205, align 8
  %206 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %209 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = call i32 @recv_decache(%union.recv_frame* %206, i32 %207, i32* %210)
  %212 = load i32, i32* @_FAIL, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %194
  %215 = load i32, i32* @_FAIL, align 4
  store i32 %215, i32* %3, align 4
  br label %251

216:                                              ; preds = %194
  %217 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %218 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %216
  %222 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %223 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %224 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %225 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %228 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @is_multicast_ether_addr(i32 %229)
  %231 = call i32 @GET_ENCRY_ALGO(%struct.security_priv* %222, %struct.sta_info* %223, i64 %226, i32 %230)
  %232 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %233 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %236 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %239 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @SET_ICE_IV_LEN(i64 %234, i64 %237, i64 %240)
  br label %249

242:                                              ; preds = %216
  %243 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %244 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %243, i32 0, i32 6
  store i64 0, i64* %244, align 8
  %245 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %246 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %245, i32 0, i32 4
  store i64 0, i64* %246, align 8
  %247 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %13, align 8
  %248 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %247, i32 0, i32 5
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %242, %221
  %250 = load i32, i32* @_SUCCESS, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %249, %214, %135, %130, %124, %108, %36
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @GetRetry(i32*) #1

declare dso_local i32* @get_da(i32*) #1

declare dso_local i32* @get_sa(i32*) #1

declare dso_local i32* @get_hdr_bssid(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sta2sta_data_frame(%struct._adapter*, %union.recv_frame*, %struct.sta_info**) #1

declare dso_local i32 @ap2sta_data_frame(%struct._adapter*, %union.recv_frame*, %struct.sta_info**) #1

declare dso_local i32 @sta2ap_data_frame(%struct._adapter*, %union.recv_frame*, %struct.sta_info**) #1

declare dso_local i32* @GetAddr1Ptr(i32*) #1

declare dso_local i32* @GetAddr2Ptr(i32*) #1

declare dso_local i64 @GetPriority(i32*) #1

declare dso_local i32 @GetAckpolicy(i32*) #1

declare dso_local i64 @GetAMsdu(i32*) #1

declare dso_local i32 @recv_decache(%union.recv_frame*, i32, i32*) #1

declare dso_local i32 @GET_ENCRY_ALGO(%struct.security_priv*, %struct.sta_info*, i64, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @SET_ICE_IV_LEN(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
