; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_init_coex_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_init_coex_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_stat, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i8**, i8**, i64*, i64* }
%struct.rtw_coex_dm = type { i32, i8**, i8**, i64*, i64* }

@COEX_CNT_WL_MAX = common dso_local global i64 0, align 8
@COEX_CNT_BT_MAX = common dso_local global i64 0, align 8
@COEX_RSSI_STATE_LOW = common dso_local global i8* null, align 8
@COEX_WLINK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_init_coex_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_init_coex_var(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_coex* %8, %struct.rtw_coex** %3, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 1
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %4, align 8
  %11 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %11, i32 0, i32 0
  %13 = bitcast %struct.rtw_coex_stat* %12 to %struct.rtw_coex_dm*
  store %struct.rtw_coex_dm* %13, %struct.rtw_coex_dm** %5, align 8
  %14 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %15 = bitcast %struct.rtw_coex_dm* %14 to %struct.rtw_coex_stat*
  %16 = call i32 @memset(%struct.rtw_coex_stat* %15, i32 0, i32 40)
  %17 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %18 = call i32 @memset(%struct.rtw_coex_stat* %17, i32 0, i32 40)
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %29, %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @COEX_CNT_WL_MAX, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %24, i32 0, i32 4
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %19

32:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @COEX_CNT_BT_MAX, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %39 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %33

46:                                               ; preds = %33
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %50 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = call i64 @ARRAY_SIZE(i8** %51)
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load i8*, i8** @COEX_RSSI_STATE_LOW, align 8
  %56 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %57 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* %55, i8** %60, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %47

64:                                               ; preds = %47
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %68 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = call i64 @ARRAY_SIZE(i8** %69)
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load i8*, i8** @COEX_RSSI_STATE_LOW, align 8
  %74 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %75 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  br label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %65

82:                                               ; preds = %65
  %83 = load i32, i32* @COEX_WLINK_MAX, align 4
  %84 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %85 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  ret void
}

declare dso_local i32 @memset(%struct.rtw_coex_stat*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
