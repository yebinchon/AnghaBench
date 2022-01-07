; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_query_rxdesc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_query_rxdesc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rx_drvinfo_819x_usb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_desc_819x_usb = type { i32, i32, i32, i32, i32 }

@KEY_TYPE_CCMP = common dso_local global i64 0, align 8
@MAX_8192U_RX_SIZE = common dso_local global i32 0, align 4
@MGN_1M = common dso_local global i32 0, align 4
@COMP_RXDESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"driver_info->FirstAGGR = %d, driver_info->PartAggr = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_rx_stats*, i32)* @query_rxdesc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_rxdesc_status(%struct.sk_buff* %0, %struct.ieee80211_rx_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8192_rx_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca %struct.rx_drvinfo_819x_usb*, align 8
  %11 = alloca %struct.rx_desc_819x_usb*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %16, %struct.rtl8192_rx_info** %7, align 8
  %17 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %7, align 8
  %18 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call i64 @ieee80211_priv(%struct.net_device* %20)
  %22 = inttoptr i64 %21 to %struct.r8192_priv*
  store %struct.r8192_priv* %22, %struct.r8192_priv** %9, align 8
  store %struct.rx_drvinfo_819x_usb* null, %struct.rx_drvinfo_819x_usb** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.rx_desc_819x_usb*
  store %struct.rx_desc_819x_usb* %26, %struct.rx_desc_819x_usb** %11, align 8
  %27 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %11, align 8
  %28 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %11, align 8
  %33 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %37, i32 0, i32 11
  store i32 0, i32* %38, align 4
  %39 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %11, align 8
  %40 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %11, align 8
  %45 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %51, %54
  %56 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %11, align 8
  %59 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %3
  %75 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %76 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KEY_TYPE_CCMP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  br label %95

85:                                               ; preds = %74, %3
  %86 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %82
  %96 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 24
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MAX_8192U_RX_SIZE, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %95
  %107 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %100
  %112 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %212

116:                                              ; preds = %111
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 20
  %121 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %120, %124
  %126 = inttoptr i64 %125 to %struct.rx_drvinfo_819x_usb*
  store %struct.rx_drvinfo_819x_usb* %126, %struct.rx_drvinfo_819x_usb** %10, align 8
  %127 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %152, label %131

131:                                              ; preds = %116
  %132 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %133 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %136 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @HwRateToMRate90(i32 %134, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 255
  br i1 %140, label %141, label %147

141:                                              ; preds = %131
  %142 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %142, i32 0, i32 3
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* @MGN_1M, align 4
  %145 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %146 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  br label %151

147:                                              ; preds = %131
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %150 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %141
  br label %155

152:                                              ; preds = %116
  %153 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %153, i32 0, i32 5
  store i32 2, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %151
  %156 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %157 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %160 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %159, i32 0, i32 13
  store i32 %158, i32* %160, align 4
  %161 = load %struct.net_device*, %struct.net_device** %8, align 8
  %162 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %163 = call i32 @UpdateReceivedRateHistogramStatistics8190(%struct.net_device* %161, %struct.ieee80211_rx_stats* %162)
  %164 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %165 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  %168 = zext i1 %167 to i32
  %169 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %172 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %180

175:                                              ; preds = %155
  %176 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %177 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 1
  br label %180

180:                                              ; preds = %175, %155
  %181 = phi i1 [ false, %155 ], [ %179, %175 ]
  %182 = zext i1 %181 to i32
  %183 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %184 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  %185 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %186 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %189 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %188, i32 0, i32 12
  store i32 %187, i32* %189, align 4
  %190 = load %struct.net_device*, %struct.net_device** %8, align 8
  %191 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %192 = call i32 @UpdateRxPktTimeStamp8190(%struct.net_device* %190, %struct.ieee80211_rx_stats* %191)
  %193 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %194 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %202, label %197

197:                                              ; preds = %180
  %198 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %199 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %211

202:                                              ; preds = %197, %180
  %203 = load i32, i32* @COMP_RXDESC, align 4
  %204 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %205 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %208 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @RT_TRACE(i32 %203, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %202, %197
  br label %212

212:                                              ; preds = %211, %111
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = call i32 @skb_pull(%struct.sk_buff* %213, i32 20)
  %215 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %216 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %215, i32 0, i32 11
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %219 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %217, %220
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %212
  %224 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %225 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %224, i32 0, i32 8
  store i32 1, i32* %225, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %228 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %231 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %230, i32 0, i32 10
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %229, %232
  %234 = call i32 @skb_pull(%struct.sk_buff* %226, i32 %233)
  br label %235

235:                                              ; preds = %223, %212
  %236 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %237 = icmp ne %struct.rx_drvinfo_819x_usb* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %240 = getelementptr inbounds %struct.rx_drvinfo_819x_usb, %struct.rx_drvinfo_819x_usb* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %243 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %245 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %246 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %10, align 8
  %247 = call i32 @TranslateRxSignalStuff819xUsb(%struct.sk_buff* %244, %struct.ieee80211_rx_stats* %245, %struct.rx_drvinfo_819x_usb* %246)
  br label %248

248:                                              ; preds = %238, %235
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @HwRateToMRate90(i32, i32) #1

declare dso_local i32 @UpdateReceivedRateHistogramStatistics8190(%struct.net_device*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @UpdateRxPktTimeStamp8190(%struct.net_device*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @TranslateRxSignalStuff819xUsb(%struct.sk_buff*, %struct.ieee80211_rx_stats*, %struct.rx_drvinfo_819x_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
