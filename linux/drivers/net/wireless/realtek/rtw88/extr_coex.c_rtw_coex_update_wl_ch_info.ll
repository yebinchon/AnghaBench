; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_wl_ch_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_wl_ch_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_5__, %struct.rtw_efuse, %struct.TYPE_4__, %struct.rtw_chip_info* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.rtw_efuse = type { i64 }
%struct.TYPE_4__ = type { %struct.rtw_coex_dm }
%struct.rtw_coex_dm = type { i64* }
%struct.rtw_chip_info = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }

@COEX_MEDIA_DISCONNECT = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw_coex_update_wl_ch_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_update_wl_ch_info(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_chip_info*, align 8
  %6 = alloca %struct.rtw_coex_dm*, align 8
  %7 = alloca %struct.rtw_efuse*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 3
  %14 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %13, align 8
  store %struct.rtw_chip_info* %14, %struct.rtw_chip_info** %5, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.rtw_coex_dm* %17, %struct.rtw_coex_dm** %6, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  store %struct.rtw_efuse* %19, %struct.rtw_efuse** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @COEX_MEDIA_DISCONNECT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %struct.rtw_efuse*, %struct.rtw_efuse** %7, align 8
  %37 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = icmp sle i64 %41, 14
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %32
  store i64 0, i64* %8, align 8
  br label %107

44:                                               ; preds = %40, %35
  %45 = load i64, i64* %9, align 8
  %46 = icmp sle i64 %45, 14
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  store i64 1, i64* %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %53 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %57 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %106

60:                                               ; preds = %44
  %61 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %62 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %105

65:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %69 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %75 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %73, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %72
  store i64 3, i64* %8, align 8
  %84 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %85 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %93 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  br label %104

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %66

104:                                              ; preds = %83, %66
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %59
  br label %107

107:                                              ; preds = %106, %43
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %110 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  store i64 %108, i64* %112, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %115 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  store i64 %113, i64* %117, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %6, align 8
  %120 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 2
  store i64 %118, i64* %122, align 8
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @rtw_fw_wl_ch_info(%struct.rtw_dev* %123, i64 %124, i64 %125, i64 %126)
  ret void
}

declare dso_local i32 @rtw_fw_wl_ch_info(%struct.rtw_dev*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
