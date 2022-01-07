; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_write_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_write_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_sec_desc = type { i32, %struct.rtw_cam_entry* }
%struct.rtw_cam_entry = type { i32, i32, i64, i32*, %struct.ieee80211_key_conf* }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32* }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@RTW_SEC_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@RTW_SEC_CMD_POLLING = common dso_local global i32 0, align 4
@RTW_SEC_CAM_ENTRY_SHIFT = common dso_local global i64 0, align 8
@RTW_SEC_WRITE_REG = common dso_local global i32 0, align 4
@RTW_SEC_CMD_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_sec_write_cam(%struct.rtw_dev* %0, %struct.rtw_sec_desc* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_sec_desc*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtw_cam_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %7, align 8
  store %struct.rtw_sec_desc* %1, %struct.rtw_sec_desc** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %8, align 8
  %21 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %20, i32 0, i32 1
  %22 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %22, i64 %23
  store %struct.rtw_cam_entry* %24, %struct.rtw_cam_entry** %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %8, align 8
  %27 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @set_bit(i64 %25, i32 %28)
  %30 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %31 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %41 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %44 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %46 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %47 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %46, i32 0, i32 4
  store %struct.ieee80211_key_conf* %45, %struct.ieee80211_key_conf** %47, align 8
  %48 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %49 = icmp ne %struct.ieee80211_sta* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %6
  %51 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %52 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ether_addr_copy(i32* %53, i32 %56)
  br label %63

58:                                               ; preds = %6
  %59 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %60 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @eth_broadcast_addr(i32* %61)
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i32, i32* @RTW_SEC_CMD_WRITE_ENABLE, align 4
  %65 = load i32, i32* @RTW_SEC_CMD_POLLING, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @RTW_SEC_CAM_ENTRY_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %17, align 4
  store i32 5, i32* %18, align 4
  br label %71

71:                                               ; preds = %197, %63
  %72 = load i32, i32* %18, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %200

74:                                               ; preds = %71
  %75 = load i32, i32* %18, align 4
  switch i32 %75, label %142 [
    i32 0, label %76
    i32 1, label %115
  ]

76:                                               ; preds = %74
  %77 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %11, align 8
  %83 = and i64 %82, 7
  %84 = shl i64 %83, 2
  %85 = or i64 %81, %84
  %86 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %87 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 6
  %90 = sext i32 %89 to i64
  %91 = or i64 %85, %90
  %92 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %93 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 15
  %96 = sext i32 %95 to i64
  %97 = or i64 %91, %96
  %98 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %99 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = or i64 %97, %104
  %106 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %107 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 24
  %112 = sext i32 %111 to i64
  %113 = or i64 %105, %112
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %16, align 4
  br label %183

115:                                              ; preds = %74
  %116 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %117 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %122 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 8
  %127 = or i32 %120, %126
  %128 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %129 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 16
  %134 = or i32 %127, %133
  %135 = load %struct.rtw_cam_entry*, %struct.rtw_cam_entry** %13, align 8
  %136 = getelementptr inbounds %struct.rtw_cam_entry, %struct.rtw_cam_entry* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 24
  %141 = or i32 %134, %140
  store i32 %141, i32* %16, align 4
  br label %183

142:                                              ; preds = %74
  %143 = load i32, i32* %18, align 4
  %144 = sub nsw i32 %143, 2
  %145 = shl i32 %144, 2
  store i32 %145, i32* %19, align 4
  %146 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %147 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %154 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %19, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 %160, 8
  %162 = or i32 %152, %161
  %163 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %164 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 16
  %172 = or i32 %162, %171
  %173 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %174 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 3
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 24
  %182 = or i32 %172, %181
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %142, %115, %76
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %185, %186
  %188 = or i32 %184, %187
  store i32 %188, i32* %15, align 4
  %189 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %190 = load i32, i32* @RTW_SEC_WRITE_REG, align 4
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @rtw_write32(%struct.rtw_dev* %189, i32 %190, i32 %191)
  %193 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %194 = load i32, i32* @RTW_SEC_CMD_REG, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @rtw_write32(%struct.rtw_dev* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %183
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %18, align 4
  br label %71

200:                                              ; preds = %71
  ret void
}

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32*) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
