; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_network_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_network_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.rtllib_probe_response = type { i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rtllib_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__, i32, i64, i64, i64, i32, i32*, i64, i64, i64, i32*, i64, i64, i64, i8*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.rtllib_rx_stats = type { i32, i64, i32, i64, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@MAX_IE_LEN = common dso_local global i32 0, align 4
@RTLLIB_52GHZ_BAND = common dso_local global i64 0, align 8
@NETWORK_HAS_CCK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@NETWORK_HAS_OFDM = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Filtered out '%s (%pM)' network.\0A\00", align 1
@IEEE_N_5G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@NETWORK_EMPTY_ESSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.rtllib_probe_response*, %struct.rtllib_network*, %struct.rtllib_rx_stats*)* @rtllib_network_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_network_init(%struct.rtllib_device* %0, %struct.rtllib_probe_response* %1, %struct.rtllib_network* %2, %struct.rtllib_rx_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.rtllib_probe_response*, align 8
  %8 = alloca %struct.rtllib_network*, align 8
  %9 = alloca %struct.rtllib_rx_stats*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.rtllib_probe_response* %1, %struct.rtllib_probe_response** %7, align 8
  store %struct.rtllib_network* %2, %struct.rtllib_network** %8, align 8
  store %struct.rtllib_rx_stats* %3, %struct.rtllib_rx_stats** %9, align 8
  %10 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %11 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %10, i32 0, i32 36
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %14 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %17 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ether_addr_copy(i32 %15, i32 %19)
  %21 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %22 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @le16_to_cpu(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %27 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %30 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %29, i32 0, i32 35
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %32 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %37 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %36, i32 0, i32 34
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %41 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %46 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %45, i32 0, i32 34
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %50 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le16_to_cpu(i32 %51)
  %53 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %54 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %53, i32 0, i32 33
  store i8* %52, i8** %54, align 8
  %55 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %56 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %55, i32 0, i32 1
  store i32 10, i32* %56, align 4
  %57 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %58 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %57, i32 0, i32 31
  store i64 0, i64* %58, align 8
  %59 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %60 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %59, i32 0, i32 32
  store i64 0, i64* %60, align 8
  %61 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %62 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %61, i32 0, i32 17
  store i64 0, i64* %62, align 8
  %63 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %64 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %63, i32 0, i32 30
  store i64 0, i64* %64, align 8
  %65 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %66 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %65, i32 0, i32 29
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memset(i32* %67, i32 0, i32 8)
  %69 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %70 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %72 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %71, i32 0, i32 28
  store i64 0, i64* %72, align 8
  %73 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %74 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 3, i32 0
  %81 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %82 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %84 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %83, i32 0, i32 4
  store i32 0, i32* %84, align 8
  %85 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %86 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %85, i32 0, i32 5
  store i32 0, i32* %86, align 4
  %87 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %88 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %87, i32 0, i32 6
  store i32 0, i32* %88, align 8
  %89 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %90 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %89, i32 0, i32 7
  store i32 0, i32* %90, align 4
  %91 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %92 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %91, i32 0, i32 8
  store i32 0, i32* %92, align 8
  %93 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %94 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %93, i32 0, i32 9
  store i32 0, i32* %94, align 4
  %95 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %96 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %95, i32 0, i32 10
  store i32 0, i32* %96, align 8
  %97 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %98 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %97, i32 0, i32 11
  store i32 0, i32* %98, align 4
  %99 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %100 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %99, i32 0, i32 12
  store i32 0, i32* %100, align 8
  %101 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %102 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %101, i32 0, i32 27
  store i64 0, i64* %102, align 8
  %103 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %104 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %107 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %106, i32 0, i32 13
  store i32 %105, i32* %107, align 4
  %108 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %109 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %112 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %114 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %113, i32 0, i32 26
  store i64 0, i64* %114, align 8
  %115 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %116 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %115, i32 0, i32 25
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @MAX_IE_LEN, align 4
  %119 = call i32 @memset(i32* %117, i32 0, i32 %118)
  %120 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %121 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %120, i32 0, i32 19
  %122 = call i32 @HTInitializeBssDesc(%struct.TYPE_4__* %121)
  %123 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %124 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @RTLLIB_52GHZ_BAND, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %4
  %129 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %130 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %133 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %132, i32 0, i32 24
  store i32 %131, i32* %133, align 8
  br label %140

134:                                              ; preds = %4
  %135 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %136 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %137 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %128
  %141 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %142 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %141, i32 0, i32 23
  store i64 0, i64* %142, align 8
  %143 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %144 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %143, i32 0, i32 22
  store i64 0, i64* %144, align 8
  %145 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %146 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %145, i32 0, i32 21
  store i64 0, i64* %146, align 8
  %147 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %148 = load %struct.rtllib_probe_response*, %struct.rtllib_probe_response** %7, align 8
  %149 = getelementptr inbounds %struct.rtllib_probe_response, %struct.rtllib_probe_response* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %152 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 %153, 24
  %155 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %156 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %157 = call i64 @rtllib_parse_info_param(%struct.rtllib_device* %147, i32 %150, i64 %154, %struct.rtllib_network* %155, %struct.rtllib_rx_stats* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %140
  store i32 1, i32* %5, align 4
  br label %286

160:                                              ; preds = %140
  %161 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %162 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %161, i32 0, i32 15
  store i32 0, i32* %162, align 4
  %163 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %164 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @RTLLIB_52GHZ_BAND, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load i32, i32* @IEEE_A, align 4
  %170 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %171 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %170, i32 0, i32 15
  store i32 %169, i32* %171, align 4
  br label %199

172:                                              ; preds = %160
  %173 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %174 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @NETWORK_HAS_OFDM, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @IEEE_G, align 4
  %181 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %182 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %172
  %186 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %187 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @NETWORK_HAS_CCK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load i32, i32* @IEEE_B, align 4
  %194 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %195 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %194, i32 0, i32 15
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %185
  br label %199

199:                                              ; preds = %198, %168
  %200 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %201 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %200, i32 0, i32 15
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %206 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %209 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %208, i32 0, i32 18
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %212 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %211, i32 0, i32 17
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @escape_essid(i32 %210, i64 %213)
  %215 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %216 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %215, i32 0, i32 20
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @netdev_dbg(i32 %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %214, i32 %217)
  store i32 1, i32* %5, align 4
  br label %286

219:                                              ; preds = %199
  %220 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %221 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %220, i32 0, i32 19
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %250

225:                                              ; preds = %219
  %226 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %227 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %226, i32 0, i32 15
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IEEE_A, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load i32, i32* @IEEE_N_5G, align 4
  %233 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %234 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %233, i32 0, i32 15
  store i32 %232, i32* %234, align 4
  br label %249

235:                                              ; preds = %225
  %236 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %237 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %236, i32 0, i32 15
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @IEEE_G, align 4
  %240 = load i32, i32* @IEEE_B, align 4
  %241 = or i32 %239, %240
  %242 = and i32 %238, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %235
  %245 = load i32, i32* @IEEE_N_24G, align 4
  %246 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %247 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %246, i32 0, i32 15
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %244, %235
  br label %249

249:                                              ; preds = %248, %231
  br label %250

250:                                              ; preds = %249, %219
  %251 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %252 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %251, i32 0, i32 18
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %255 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %254, i32 0, i32 17
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @rtllib_is_empty_essid(i32 %253, i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load i32, i32* @NETWORK_EMPTY_ESSID, align 4
  %261 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %262 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %259, %250
  %266 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %267 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = mul nsw i32 %268, 70
  %270 = sdiv i32 %269, 100
  %271 = add nsw i32 30, %270
  %272 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %273 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  %274 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %275 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 100, %276
  %278 = call i64 @rtllib_translate_todbm(i32 %277)
  %279 = sub nsw i64 %278, 25
  %280 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %281 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %280, i32 0, i32 3
  store i64 %279, i64* %281, align 8
  %282 = load %struct.rtllib_network*, %struct.rtllib_network** %8, align 8
  %283 = getelementptr inbounds %struct.rtllib_network, %struct.rtllib_network* %282, i32 0, i32 16
  %284 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %9, align 8
  %285 = call i32 @memcpy(i32* %283, %struct.rtllib_rx_stats* %284, i32 4)
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %265, %204, %159
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @HTInitializeBssDesc(%struct.TYPE_4__*) #1

declare dso_local i64 @rtllib_parse_info_param(%struct.rtllib_device*, i32, i64, %struct.rtllib_network*, %struct.rtllib_rx_stats*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @escape_essid(i32, i64) #1

declare dso_local i64 @rtllib_is_empty_essid(i32, i64) #1

declare dso_local i64 @rtllib_translate_todbm(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.rtllib_rx_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
