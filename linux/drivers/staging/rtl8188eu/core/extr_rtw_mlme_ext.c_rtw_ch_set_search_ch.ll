; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_rtw_ch_set_search_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_rtw_ch_set_search_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_channel_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_ch_set_search_ch(%struct.rt_channel_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt_channel_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt_channel_info* %0, %struct.rt_channel_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load %struct.rt_channel_info*, %struct.rt_channel_info** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %8, i64 %10
  %12 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rt_channel_info*, %struct.rt_channel_info** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %17, i64 %19
  %21 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %24, %7
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.rt_channel_info*, %struct.rt_channel_info** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.rt_channel_info, %struct.rt_channel_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
