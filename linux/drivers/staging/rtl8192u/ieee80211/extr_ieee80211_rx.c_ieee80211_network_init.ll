; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_network_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_network_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.ieee80211_probe_response = type { i32, i32, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_rx_stats* }
%struct.ieee80211_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__, i32*, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i8*, i8**, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.ieee80211_rx_stats = type { i64, i32, i32, i64, i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@MAX_IE_LEN = common dso_local global i32 0, align 4
@IEEE80211_52GHZ_BAND = common dso_local global i64 0, align 8
@NETWORK_HAS_CCK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@NETWORK_HAS_OFDM = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Filtered out '%s (%pM)' network.\0A\00", align 1
@IEEE_N_5G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@NETWORK_EMPTY_ESSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.ieee80211_probe_response*, %struct.ieee80211_network*, %struct.ieee80211_rx_stats*)* @ieee80211_network_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_network_init(%struct.ieee80211_device* %0, %struct.ieee80211_probe_response* %1, %struct.ieee80211_network* %2, %struct.ieee80211_rx_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_device*, align 8
  %7 = alloca %struct.ieee80211_probe_response*, align 8
  %8 = alloca %struct.ieee80211_network*, align 8
  %9 = alloca %struct.ieee80211_rx_stats*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %6, align 8
  store %struct.ieee80211_probe_response* %1, %struct.ieee80211_probe_response** %7, align 8
  store %struct.ieee80211_network* %2, %struct.ieee80211_network** %8, align 8
  store %struct.ieee80211_rx_stats* %3, %struct.ieee80211_rx_stats** %9, align 8
  %10 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %11 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %10, i32 0, i32 29
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %13, i32 0, i32 29
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %16, i32 0, i32 29
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %19, i32 0, i32 29
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %22, i32 0, i32 15
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32* %24, %struct.ieee80211_rx_stats* %28, i32 %29)
  %31 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %39, i32 0, i32 28
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %47, i32 0, i32 27
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %57, i32 0, i32 27
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  store i8* %56, i8** %60, align 8
  %61 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le16_to_cpu(i32 %63)
  %65 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %65, i32 0, i32 26
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %67, i32 0, i32 1
  store i32 10, i32* %68, align 4
  %69 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %69, i32 0, i32 24
  store i64 0, i64* %70, align 8
  %71 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %71, i32 0, i32 25
  store i64 0, i64* %72, align 8
  %73 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %73, i32 0, i32 23
  store i64 0, i64* %74, align 8
  %75 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %79, i32 0, i32 22
  store i64 0, i64* %80, align 8
  %81 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 3, i32 0
  %89 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %91, i32 0, i32 4
  store i32 0, i32* %92, align 8
  %93 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %94 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %93, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %95, i32 0, i32 6
  store i32 0, i32* %96, align 8
  %97 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %97, i32 0, i32 7
  store i32 0, i32* %98, align 4
  %99 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %100 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %99, i32 0, i32 8
  store i32 0, i32* %100, align 8
  %101 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %101, i32 0, i32 9
  store i32 0, i32* %102, align 4
  %103 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %104 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %103, i32 0, i32 20
  store i64 0, i64* %104, align 8
  %105 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %105, i32 0, i32 19
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MAX_IE_LEN, align 4
  %109 = call i32 @memset(i32 %107, i32 0, i32 %108)
  %110 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %110, i32 0, i32 14
  %112 = call i32 @HTInitializeBssDesc(%struct.TYPE_6__* %111)
  %113 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @IEEE80211_52GHZ_BAND, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %4
  %119 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %122, i32 0, i32 18
  store i32 %121, i32* %123, align 8
  br label %130

124:                                              ; preds = %4
  %125 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %126 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %118
  %131 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %132 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %131, i32 0, i32 17
  store i64 0, i64* %132, align 8
  %133 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %134 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %133, i32 0, i32 16
  store i64 0, i64* %134, align 8
  %135 = load %struct.ieee80211_device*, %struct.ieee80211_device** %6, align 8
  %136 = load %struct.ieee80211_probe_response*, %struct.ieee80211_probe_response** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_probe_response, %struct.ieee80211_probe_response* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, 32
  %143 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %144 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %145 = call i64 @ieee80211_parse_info_param(%struct.ieee80211_device* %135, i32 %138, i64 %142, %struct.ieee80211_network* %143, %struct.ieee80211_rx_stats* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  br label %271

148:                                              ; preds = %130
  %149 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %150 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %149, i32 0, i32 10
  store i32 0, i32* %150, align 8
  %151 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %152 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IEEE80211_52GHZ_BAND, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load i32, i32* @IEEE_A, align 4
  %158 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 8
  br label %187

160:                                              ; preds = %148
  %161 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %162 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NETWORK_HAS_OFDM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @IEEE_G, align 4
  %169 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %170 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %167, %160
  %174 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %175 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load i32, i32* @IEEE_B, align 4
  %182 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %173
  br label %187

187:                                              ; preds = %186, %156
  %188 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %189 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %194 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %197 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %196, i32 0, i32 12
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @escape_essid(i32 %195, i64 %198)
  %200 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %200, i32 0, i32 15
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @IEEE80211_DEBUG_SCAN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %199, i32* %202)
  store i32 1, i32* %5, align 4
  br label %271

204:                                              ; preds = %187
  %205 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %206 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %205, i32 0, i32 14
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %235

210:                                              ; preds = %204
  %211 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %212 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @IEEE_A, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = load i32, i32* @IEEE_N_5G, align 4
  %218 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %219 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 8
  br label %234

220:                                              ; preds = %210
  %221 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %222 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @IEEE_G, align 4
  %225 = load i32, i32* @IEEE_B, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %223, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load i32, i32* @IEEE_N_24G, align 4
  %231 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %232 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %220
  br label %234

234:                                              ; preds = %233, %216
  br label %235

235:                                              ; preds = %234, %204
  %236 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %237 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %236, i32 0, i32 13
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %240 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %239, i32 0, i32 12
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @ieee80211_is_empty_essid(i32 %238, i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %235
  %245 = load i32, i32* @NETWORK_EMPTY_ESSID, align 4
  %246 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %247 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %235
  %251 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %252 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %253, 70
  %255 = sdiv i32 %254, 100
  %256 = add nsw i32 30, %255
  %257 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %258 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 8
  %259 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %260 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 100, %261
  %263 = call i64 @ieee80211_translate_todbm(i32 %262)
  %264 = sub nsw i64 %263, 25
  %265 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %266 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load %struct.ieee80211_network*, %struct.ieee80211_network** %8, align 8
  %268 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %267, i32 0, i32 11
  %269 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %9, align 8
  %270 = call i32 @memcpy(i32* %268, %struct.ieee80211_rx_stats* %269, i32 4)
  store i32 0, i32* %5, align 4
  br label %271

271:                                              ; preds = %250, %192, %147
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_rx_stats*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @HTInitializeBssDesc(%struct.TYPE_6__*) #1

declare dso_local i64 @ieee80211_parse_info_param(%struct.ieee80211_device*, i32, i64, %struct.ieee80211_network*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @IEEE80211_DEBUG_SCAN(i8*, i32, i32*) #1

declare dso_local i32 @escape_essid(i32, i64) #1

declare dso_local i64 @ieee80211_is_empty_essid(i32, i64) #1

declare dso_local i64 @ieee80211_translate_todbm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
