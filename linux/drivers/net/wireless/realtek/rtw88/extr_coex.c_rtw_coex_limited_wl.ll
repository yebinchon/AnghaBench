; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_limited_wl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_limited_wl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex }
%struct.rtw_coex = type { i64, %struct.rtw_coex_stat, %struct.rtw_coex_dm }
%struct.rtw_coex_stat = type { i64, i64, i64 }
%struct.rtw_coex_dm = type { i64 }

@COEX_BTSTATUS_NCON_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_limited_wl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_limited_wl(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_dm*, align 8
  %5 = alloca %struct.rtw_coex_stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  store %struct.rtw_coex* %9, %struct.rtw_coex** %3, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 2
  store %struct.rtw_coex_dm* %11, %struct.rtw_coex_dm** %4, align 8
  %12 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %12, i32 0, i32 1
  store %struct.rtw_coex_stat* %13, %struct.rtw_coex_stat** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %15 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %4, align 8
  %20 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @COEX_BTSTATUS_NCON_IDLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %42

25:                                               ; preds = %18
  store i32 1, i32* %6, align 4
  %26 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %37 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %25
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtw_coex_limited_tx(%struct.rtw_dev* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @rtw_coex_limited_tx(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
