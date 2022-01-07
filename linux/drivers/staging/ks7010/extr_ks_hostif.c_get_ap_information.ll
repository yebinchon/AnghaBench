; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_get_ap_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_get_ap_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32 }
%struct.ap_info = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.local_ap = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8, i32, i8* }
%struct.TYPE_7__ = type { i8, i32, i8* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i8* }

@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@RATE_SET_MAX_SIZE = common dso_local global i8 0, align 1
@RSN_IE_BODY_MAX = common dso_local global i32 0, align 4
@CIPHER_ID_WPA_WEP40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown Element ID=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks_wlan_private*, %struct.ap_info*, %struct.local_ap*)* @get_ap_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ap_information(%struct.ks_wlan_private* %0, %struct.ap_info* %1, %struct.local_ap* %2) #0 {
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca %struct.ap_info*, align 8
  %6 = alloca %struct.local_ap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store %struct.ap_info* %1, %struct.ap_info** %5, align 8
  store %struct.local_ap* %2, %struct.local_ap** %6, align 8
  %10 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %11 = call i32 @memset(%struct.local_ap* %10, i32 0, i32 96)
  %12 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %13 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %16 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ether_addr_copy(i32 %14, i32 %17)
  %19 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %20 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %23 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %25 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %28 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %30 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %33 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %35 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @le16_to_cpu(i32 %36)
  %38 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %39 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %41 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %44 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %46 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  %48 = load %struct.ap_info*, %struct.ap_info** %5, align 8
  %49 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @le16_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %191, %3
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %208

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  switch i32 %60, label %184 [
    i32 131, label %61
    i32 130, label %72
    i32 135, label %72
    i32 132, label %144
    i32 128, label %160
    i32 137, label %183
    i32 134, label %183
    i32 139, label %183
    i32 129, label %183
    i32 133, label %183
    i32 138, label %183
    i32 136, label %183
  ]

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %64 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %65 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @read_ie(i8* %62, i32 %63, i32 %67)
  %69 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %70 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  br label %191

72:                                               ; preds = %57, %57
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  %77 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %78 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %76, %80
  %82 = load i8, i8* @RATE_SET_MAX_SIZE, align 1
  %83 = zext i8 %82 to i64
  %84 = icmp ule i64 %81, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %72
  %86 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %87 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %91 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @memcpy(i32* %94, i8* %96, i8 zeroext %99)
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i64
  %105 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %106 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %104
  store i64 %109, i64* %107, align 8
  br label %143

110:                                              ; preds = %72
  %111 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %112 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %116 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* @RATE_SET_MAX_SIZE, align 1
  %123 = zext i8 %122 to i64
  %124 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %125 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %123, %127
  %129 = trunc i64 %128 to i8
  %130 = call i32 @memcpy(i32* %119, i8* %121, i8 zeroext %129)
  %131 = load i8, i8* @RATE_SET_MAX_SIZE, align 1
  %132 = zext i8 %131 to i64
  %133 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %134 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %132, %136
  %138 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %139 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %137
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %110, %85
  br label %191

144:                                              ; preds = %57
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %148 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i8 %146, i8* %149, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* @RSN_IE_BODY_MAX, align 4
  %152 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %153 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @read_ie(i8* %150, i32 %151, i32 %155)
  %157 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %158 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i8* %156, i8** %159, align 8
  br label %191

160:                                              ; preds = %57
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load i32, i32* @CIPHER_ID_WPA_WEP40, align 4
  %164 = call i32 @memcmp(i8* %162, i32 %163, i32 4)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load i8*, i8** %7, align 8
  %168 = load i8, i8* %167, align 1
  %169 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %170 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i8 %168, i8* %171, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* @RSN_IE_BODY_MAX, align 4
  %174 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %175 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @read_ie(i8* %172, i32 %173, i32 %177)
  %179 = load %struct.local_ap*, %struct.local_ap** %6, align 8
  %180 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  br label %182

182:                                              ; preds = %166, %160
  br label %191

183:                                              ; preds = %57, %57, %57, %57, %57, %57, %57
  br label %191

184:                                              ; preds = %57
  %185 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %186 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i8*, i8** %7, align 8
  %189 = load i8, i8* %188, align 1
  %190 = call i32 @netdev_err(i32 %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 zeroext %189)
  br label %191

191:                                              ; preds = %184, %183, %182, %144, %143, %61
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %9, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %9, align 4
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %203, 2
  %205 = load i8*, i8** %7, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %7, align 8
  br label %53

208:                                              ; preds = %53
  ret i32 0
}

declare dso_local i32 @memset(%struct.local_ap*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @read_ie(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
