; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_recognize_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_recognize_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_mac = type { i64, i64, i64, i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@PEER_UNKNOWN = common dso_local global i8* null, align 8
@rtl_recognize_peer.ap3_1 = internal global [3 x i32] [i32 0, i32 20, i32 191], align 4
@rtl_recognize_peer.ap3_2 = internal global [3 x i32] [i32 0, i32 26, i32 112], align 4
@rtl_recognize_peer.ap3_3 = internal global [3 x i32] [i32 0, i32 29, i32 126], align 4
@rtl_recognize_peer.ap4_1 = internal global [3 x i32] [i32 0, i32 144, i32 204], align 4
@rtl_recognize_peer.ap4_2 = internal global [3 x i32] [i32 0, i32 14, i32 46], align 4
@rtl_recognize_peer.ap4_3 = internal global [3 x i32] [i32 0, i32 24, i32 2], align 4
@rtl_recognize_peer.ap4_4 = internal global [3 x i32] [i32 0, i32 23, i32 63], align 4
@rtl_recognize_peer.ap4_5 = internal global [3 x i32] [i32 0, i32 28, i32 223], align 4
@rtl_recognize_peer.ap5_1 = internal global [3 x i32] [i32 0, i32 28, i32 240], align 4
@rtl_recognize_peer.ap5_2 = internal global [3 x i32] [i32 0, i32 33, i32 145], align 4
@rtl_recognize_peer.ap5_3 = internal global [3 x i32] [i32 0, i32 36, i32 1], align 4
@rtl_recognize_peer.ap5_4 = internal global [3 x i32] [i32 0, i32 21, i32 233], align 4
@rtl_recognize_peer.ap5_5 = internal global [3 x i32] [i32 0, i32 23, i32 154], align 4
@rtl_recognize_peer.ap5_6 = internal global [3 x i32] [i32 0, i32 24, i32 231], align 4
@rtl_recognize_peer.ap6_1 = internal global [3 x i32] [i32 0, i32 23, i32 148], align 4
@rtl_recognize_peer.ap7_1 = internal global [3 x i32] [i32 0, i32 20, i32 164], align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@MAC80211_NOLINK = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i32 0, align 4
@PEER_ATH = common dso_local global i64 0, align 8
@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"=>ath find\0A\00", align 1
@PEER_RAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"=>ral find\0A\00", align 1
@PEER_CISCO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"=>cisco find\0A\00", align 1
@PEER_BROAD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"=>broad find\0A\00", align 1
@PEER_MARV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"=>marv find\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl_recognize_peer(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %14)
  store %struct.rtl_mac* %15, %struct.rtl_mac** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %9, align 8
  %19 = load i8*, i8** @PEER_UNKNOWN, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %22 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %232

27:                                               ; preds = %3
  %28 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %29 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC80211_NOLINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** @PEER_UNKNOWN, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %37 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %232

38:                                               ; preds = %27
  %39 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %232

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ieee80211_is_beacon(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %232

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @FCS_LEN, align 4
  %54 = add nsw i32 40, %53
  %55 = icmp ule i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %232

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ether_addr_equal_64bits(i32 %60, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %232

68:                                               ; preds = %57
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @rtl_find_221_ie(%struct.ieee80211_hw* %69, i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @memcmp(i32 %81, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_1, i64 0, i64 0), i32 3)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %118, label %84

84:                                               ; preds = %78
  %85 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %86 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @memcmp(i32 %87, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_2, i64 0, i64 0), i32 3)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %84
  %91 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %92 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @memcmp(i32 %93, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_3, i64 0, i64 0), i32 3)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %90
  %97 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %98 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @memcmp(i32 %99, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_4, i64 0, i64 0), i32 3)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %96
  %103 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %104 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @memcmp(i32 %105, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_5, i64 0, i64 0), i32 3)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %102
  %109 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %110 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @memcmp(i32 %111, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap5_6, i64 0, i64 0), i32 3)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @PEER_ATH, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114, %108, %102, %96, %90, %84, %78
  %119 = load i64, i64* @PEER_ATH, align 8
  store i64 %119, i64* %10, align 8
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %121 = load i32, i32* @COMP_MAC80211, align 4
  %122 = load i32, i32* @DBG_LOUD, align 4
  %123 = call i32 @RT_TRACE(%struct.rtl_priv* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %228

124:                                              ; preds = %114
  %125 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %126 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @memcmp(i32 %127, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap4_4, i64 0, i64 0), i32 3)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %124
  %131 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %132 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @memcmp(i32 %133, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap4_5, i64 0, i64 0), i32 3)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %158, label %136

136:                                              ; preds = %130
  %137 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %138 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @memcmp(i32 %139, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap4_1, i64 0, i64 0), i32 3)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %136
  %143 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %144 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @memcmp(i32 %145, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap4_2, i64 0, i64 0), i32 3)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %142
  %149 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %150 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @memcmp(i32 %151, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap4_3, i64 0, i64 0), i32 3)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %148
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @PEER_RAL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154, %148, %142, %136, %130, %124
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %160 = load i32, i32* @COMP_MAC80211, align 4
  %161 = load i32, i32* @DBG_LOUD, align 4
  %162 = call i32 @RT_TRACE(%struct.rtl_priv* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i64, i64* @PEER_RAL, align 8
  store i64 %163, i64* %10, align 8
  br label %227

164:                                              ; preds = %154
  %165 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %166 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @memcmp(i32 %167, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap6_1, i64 0, i64 0), i32 3)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* @PEER_CISCO, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170, %164
  %175 = load i64, i64* @PEER_CISCO, align 8
  store i64 %175, i64* %10, align 8
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %177 = load i32, i32* @COMP_MAC80211, align 4
  %178 = load i32, i32* @DBG_LOUD, align 4
  %179 = call i32 @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %226

180:                                              ; preds = %170
  %181 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %182 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @memcmp(i32 %183, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap3_1, i64 0, i64 0), i32 3)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %202, label %186

186:                                              ; preds = %180
  %187 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %188 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @memcmp(i32 %189, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap3_2, i64 0, i64 0), i32 3)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %186
  %193 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %194 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @memcmp(i32 %195, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap3_3, i64 0, i64 0), i32 3)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %192
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* @PEER_BROAD, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198, %192, %186, %180
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %204 = load i32, i32* @COMP_MAC80211, align 4
  %205 = load i32, i32* @DBG_LOUD, align 4
  %206 = call i32 @RT_TRACE(%struct.rtl_priv* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %207 = load i64, i64* @PEER_BROAD, align 8
  store i64 %207, i64* %10, align 8
  br label %225

208:                                              ; preds = %198
  %209 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %210 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @memcmp(i32 %211, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @rtl_recognize_peer.ap7_1, i64 0, i64 0), i32 3)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %208
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @PEER_MARV, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %214, %208
  %219 = load i64, i64* @PEER_MARV, align 8
  store i64 %219, i64* %10, align 8
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %221 = load i32, i32* @COMP_MAC80211, align 4
  %222 = load i32, i32* @DBG_LOUD, align 4
  %223 = call i32 @RT_TRACE(%struct.rtl_priv* %220, i32 %221, i32 %222, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %224

224:                                              ; preds = %218, %214
  br label %225

225:                                              ; preds = %224, %202
  br label %226

226:                                              ; preds = %225, %174
  br label %227

227:                                              ; preds = %226, %158
  br label %228

228:                                              ; preds = %227, %118
  %229 = load i64, i64* %10, align 8
  %230 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %231 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %230, i32 0, i32 2
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %228, %67, %56, %50, %43, %33, %26
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i64 @rtl_find_221_ie(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
