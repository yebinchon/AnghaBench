; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_fwdbginfo_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_wl_fwdbginfo_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"invalid wl info c2h length\0A\00", align 1
@COEX_CNT_WL_FW_NOTIFY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_wl_fwdbginfo_notify(%struct.rtw_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_coex*, align 8
  %8 = alloca %struct.rtw_coex_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_coex* %12, %struct.rtw_coex** %7, align 8
  %13 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %14 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %13, i32 0, i32 0
  store %struct.rtw_coex_stat* %14, %struct.rtw_coex_stat** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 8
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %101

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 8
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %101

27:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %86, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %33 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %31
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %55 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %74

60:                                               ; preds = %31
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  %68 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %69 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %60, %46
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %81 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %28

89:                                               ; preds = %28
  %90 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %91 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @COEX_CNT_WL_FW_NOTIFY, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %98 = call i32 @rtw_coex_wl_ccklock_action(%struct.rtw_dev* %97)
  %99 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %100 = call i32 @rtw_coex_wl_ccklock_detect(%struct.rtw_dev* %99)
  br label %101

101:                                              ; preds = %89, %26, %20
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @rtw_coex_wl_ccklock_action(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_wl_ccklock_detect(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
