; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_noisy_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_noisy_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info, %struct.rtw_coex }
%struct.rtw_dm_info = type { i32, i32 }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32*, i32, i32 }

@COEX_CNT_WL_NOISY2 = common dso_local global i64 0, align 8
@COEX_CNT_WL_NOISY0 = common dso_local global i64 0, align 8
@COEX_CNT_WL_NOISY1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_wl_noisy_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_wl_noisy_detect(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_dm_info*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  store %struct.rtw_coex* %8, %struct.rtw_coex** %3, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 0
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_dm_info* %12, %struct.rtw_dm_info** %5, align 8
  %13 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %14 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %166, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 250
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %37 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %45 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %53 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @COEX_CNT_WL_NOISY0, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %58 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %43
  br label %139

63:                                               ; preds = %24
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 100
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %68 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @COEX_CNT_WL_NOISY0, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %76 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @COEX_CNT_WL_NOISY0, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %84 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @COEX_CNT_WL_NOISY0, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 5
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %92 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 0, i32* %95, align 4
  %96 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %97 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %90, %82
  br label %138

102:                                              ; preds = %63
  %103 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %104 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 5
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %112 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %110, %102
  %119 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %120 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 5
  br i1 %125, label %126, label %137

126:                                              ; preds = %118
  %127 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %128 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @COEX_CNT_WL_NOISY0, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %133 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %126, %118
  br label %138

138:                                              ; preds = %137, %101
  br label %139

139:                                              ; preds = %138, %62
  %140 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %141 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @COEX_CNT_WL_NOISY2, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 5
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %149 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %148, i32 0, i32 1
  store i32 2, i32* %149, align 8
  br label %165

150:                                              ; preds = %139
  %151 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %152 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @COEX_CNT_WL_NOISY1, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 5
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %160 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %159, i32 0, i32 1
  store i32 1, i32* %160, align 8
  br label %164

161:                                              ; preds = %150
  %162 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %163 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %162, i32 0, i32 1
  store i32 0, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %158
  br label %165

165:                                              ; preds = %164, %147
  br label %166

166:                                              ; preds = %165, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
