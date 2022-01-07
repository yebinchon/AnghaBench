; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_ccklock_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_ccklock_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i32, i32*, i32*, i64, i32, i64 }

@COEX_H2C69_WL_LEAKAP = common dso_local global i32 0, align 4
@PARA1_H2C69_DIS_5MS = common dso_local global i32 0, align 4
@COEX_CNT_WL_5MS_NOEXTEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_wl_ccklock_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_wl_ccklock_action(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_coex* %7, %struct.rtw_coex** %3, align 8
  %8 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %8, i32 0, i32 1
  store %struct.rtw_coex_stat* %9, %struct.rtw_coex_stat** %4, align 8
  %10 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %122

16:                                               ; preds = %1
  %17 = load i32, i32* @COEX_H2C69_WL_LEAKAP, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32, i32* @PARA1_H2C69_DIS_5MS, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %35 = call i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev* %31, i32 %33, i32* %34)
  %36 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %37 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @COEX_CNT_WL_5MS_NOEXTEND, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 0, i32* %42, align 4
  br label %122

43:                                               ; preds = %23, %16
  %44 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %45 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %43
  %49 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %48
  %54 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %55 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %53
  %59 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %60 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 5
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %67 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @COEX_CNT_WL_5MS_NOEXTEND, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %58
  %74 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %75 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @COEX_CNT_WL_5MS_NOEXTEND, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %81 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @COEX_CNT_WL_5MS_NOEXTEND, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %93 = call i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev* %89, i32 %91, i32* %92)
  %94 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %95 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %97 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @COEX_CNT_WL_5MS_NOEXTEND, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %87, %79
  br label %122

102:                                              ; preds = %53, %48, %43
  %103 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %104 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %102
  %108 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %109 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %113, align 4
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %118 = call i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev* %114, i32 %116, i32* %117)
  %119 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %120 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %107, %102
  br label %122

122:                                              ; preds = %15, %28, %121, %101
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_fw_bt_wifi_control(%struct.rtw_dev*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
