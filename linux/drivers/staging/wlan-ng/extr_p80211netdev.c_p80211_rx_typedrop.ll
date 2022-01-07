; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211_rx_typedrop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211_rx_typedrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rx'd mgmt:\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rx'd ctl:\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"rx'd data:null\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"rx'd data:cfack\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"rx'd data:cfpoll\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"rx'd data:cfack_cfpoll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlandevice*, i32)* @p80211_rx_typedrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211_rx_typedrop(%struct.wlandevice* %0, i32 %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @WLAN_GET_FC_FTYPE(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @WLAN_GET_FC_FSTYPE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %267 [
    i32 128, label %13
    i32 130, label %116
    i32 129, label %189
  ]

13:                                               ; preds = %2
  %14 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %15 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_PROMISC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %24 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_ALLMULTI, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %13
  store i32 1, i32* %7, align 4
  br label %267

32:                                               ; preds = %22
  %33 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %34 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @netdev_dbg(%struct.TYPE_4__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %38 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 30
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %109 [
    i32 154, label %43
    i32 153, label %49
    i32 133, label %55
    i32 132, label %61
    i32 136, label %67
    i32 135, label %73
    i32 150, label %79
    i32 152, label %85
    i32 138, label %91
    i32 151, label %97
    i32 139, label %103
  ]

43:                                               ; preds = %32
  %44 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %45 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 29
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %115

49:                                               ; preds = %32
  %50 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %51 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 28
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %115

55:                                               ; preds = %32
  %56 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %57 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 27
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %115

61:                                               ; preds = %32
  %62 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %63 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 26
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %115

67:                                               ; preds = %32
  %68 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %69 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 25
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %115

73:                                               ; preds = %32
  %74 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %75 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 24
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %115

79:                                               ; preds = %32
  %80 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %81 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 23
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %115

85:                                               ; preds = %32
  %86 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %87 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 22
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %115

91:                                               ; preds = %32
  %92 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %93 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 21
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %115

97:                                               ; preds = %32
  %98 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %99 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %115

103:                                              ; preds = %32
  %104 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %105 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 19
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %115

109:                                              ; preds = %32
  %110 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %111 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 18
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43
  store i32 2, i32* %7, align 4
  br label %267

116:                                              ; preds = %2
  %117 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %118 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IFF_PROMISC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %116
  %126 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %127 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IFF_ALLMULTI, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125, %116
  store i32 1, i32* %7, align 4
  br label %267

135:                                              ; preds = %125
  %136 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %137 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = call i32 @netdev_dbg(%struct.TYPE_4__* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %140 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %141 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 17
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %6, align 4
  switch i32 %145, label %182 [
    i32 134, label %146
    i32 131, label %152
    i32 144, label %158
    i32 155, label %164
    i32 147, label %170
    i32 146, label %176
  ]

146:                                              ; preds = %135
  %147 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %148 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 16
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %188

152:                                              ; preds = %135
  %153 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %154 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 15
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %188

158:                                              ; preds = %135
  %159 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %160 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  br label %188

164:                                              ; preds = %135
  %165 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %166 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %188

170:                                              ; preds = %135
  %171 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %172 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %188

176:                                              ; preds = %135
  %177 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %178 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %188

182:                                              ; preds = %135
  %183 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %184 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %182, %176, %170, %164, %158, %152, %146
  store i32 2, i32* %7, align 4
  br label %267

189:                                              ; preds = %2
  %190 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %191 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %6, align 4
  switch i32 %195, label %260 [
    i32 143, label %196
    i32 142, label %202
    i32 140, label %208
    i32 141, label %214
    i32 137, label %220
    i32 149, label %230
    i32 145, label %240
    i32 148, label %250
  ]

196:                                              ; preds = %189
  %197 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %198 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %266

202:                                              ; preds = %189
  %203 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %204 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %266

208:                                              ; preds = %189
  %209 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %210 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  br label %266

214:                                              ; preds = %189
  %215 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %216 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  br label %266

220:                                              ; preds = %189
  %221 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %222 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = call i32 @netdev_dbg(%struct.TYPE_4__* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %225 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %226 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  br label %266

230:                                              ; preds = %189
  %231 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %232 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %231, i32 0, i32 1
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = call i32 @netdev_dbg(%struct.TYPE_4__* %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %235 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %236 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %266

240:                                              ; preds = %189
  %241 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %242 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %241, i32 0, i32 1
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = call i32 @netdev_dbg(%struct.TYPE_4__* %243, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %245 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %246 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  br label %266

250:                                              ; preds = %189
  %251 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %252 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %251, i32 0, i32 1
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = call i32 @netdev_dbg(%struct.TYPE_4__* %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %255 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %256 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %266

260:                                              ; preds = %189
  %261 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %262 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 8
  br label %266

266:                                              ; preds = %260, %250, %240, %230, %220, %214, %208, %202, %196
  br label %267

267:                                              ; preds = %2, %266, %188, %134, %115, %31
  %268 = load i32, i32* %7, align 4
  ret i32 %268
}

declare dso_local i32 @WLAN_GET_FC_FTYPE(i32) #1

declare dso_local i32 @WLAN_GET_FC_FSTYPE(i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
