; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_addba_timer_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_addba_timer_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i64, i64 }
%struct.timer_list = type { i32 }

@addba_retry_timer = common dso_local global i32 0, align 4
@psta = common dso_local global %struct.sta_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addba_timer_hdl(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ht_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %6 = ptrtoint %struct.sta_info* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @addba_retry_timer, align 4
  %9 = call %struct.sta_info* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sta_info* %9, %struct.sta_info** %3, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %11 = icmp ne %struct.sta_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  store %struct.ht_priv* %15, %struct.ht_priv** %4, align 8
  %16 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ht_priv*, %struct.ht_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  br label %34

34:                                               ; preds = %12, %33, %20, %13
  ret void
}

declare dso_local %struct.sta_info* @from_timer(i32, %struct.timer_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
