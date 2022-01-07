; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dig_check_damping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_dig_check_damping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dm_info = type { i64, i32, i64, i32, i64, i32*, i64* }

@DIG_PERF_FA_TH_LOW = common dso_local global i32 0, align 4
@DIG_PERF_FA_TH_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dm_info*)* @rtw_phy_dig_check_damping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_phy_dig_check_damping(%struct.rtw_dm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtw_dm_info* %0, %struct.rtw_dm_info** %3, align 8
  %13 = load i32, i32* @DIG_PERF_FA_TH_LOW, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @DIG_PERF_FA_TH_HIGH, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %24 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  br label %37

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp sgt i64 %39, 3
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = icmp sgt i64 %44, 20
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %37
  %48 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %49 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %198

50:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %198

51:                                               ; preds = %1
  %52 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %53 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %52, i32 0, i32 6
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %7, align 8
  %55 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %56 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %6, align 8
  %58 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %59 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 15
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  switch i64 %63, label %184 [
    i64 5, label %64
    i64 9, label %124
  ]

64:                                               ; preds = %51
  %65 = load i64*, i64** %7, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %64
  %73 = load i64*, i64** %7, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %72
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %7, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = icmp sge i64 %87, 2
  br i1 %88, label %89, label %123

89:                                               ; preds = %80
  %90 = load i64*, i64** %7, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %7, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 3
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = icmp sge i64 %96, 2
  br i1 %97, label %98, label %123

98:                                               ; preds = %89
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %110
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 1, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %116, %110, %104, %98, %89, %80, %72, %64
  br label %185

124:                                              ; preds = %51
  %125 = load i64*, i64** %7, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %7, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %127, %130
  br i1 %131, label %132, label %183

132:                                              ; preds = %124
  %133 = load i64*, i64** %7, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %7, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %135, %138
  br i1 %139, label %140, label %183

140:                                              ; preds = %132
  %141 = load i64*, i64** %7, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %7, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %143, %146
  %148 = icmp sge i64 %147, 4
  br i1 %148, label %149, label %183

149:                                              ; preds = %140
  %150 = load i64*, i64** %7, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = icmp sge i64 %156, 2
  br i1 %157, label %158, label %183

158:                                              ; preds = %149
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %158
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 1, i32* %12, align 4
  br label %183

183:                                              ; preds = %182, %176, %170, %164, %158, %149, %140, %132, %124
  br label %185

184:                                              ; preds = %51
  store i32 0, i32* %2, align 4
  br label %198

185:                                              ; preds = %183, %123
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %190 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %189, i32 0, i32 1
  store i32 1, i32* %190, align 8
  %191 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %192 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %195 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %194, i32 0, i32 2
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %188, %185
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %184, %50, %47
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
