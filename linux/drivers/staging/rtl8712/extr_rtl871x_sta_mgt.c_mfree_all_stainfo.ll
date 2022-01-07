; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c_mfree_all_stainfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_sta_mgt.c_mfree_all_stainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_priv*)* @mfree_all_stainfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfree_all_stainfo(%struct.sta_priv* %0) #0 {
  %2 = alloca %struct.sta_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.sta_priv* %0, %struct.sta_priv** %2, align 8
  %6 = load %struct.sta_priv*, %struct.sta_priv** %2, align 8
  %7 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.sta_priv*, %struct.sta_priv** %2, align 8
  %11 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.list_head* %12, %struct.list_head** %5, align 8
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8
  store %struct.list_head* %15, %struct.list_head** %4, align 8
  br label %16

16:                                               ; preds = %22, %1
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i32 @end_of_queue_search(%struct.list_head* %17, %struct.list_head* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.list_head*, %struct.list_head** %4, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  store %struct.list_head* %25, %struct.list_head** %4, align 8
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.sta_priv*, %struct.sta_priv** %2, align 8
  %28 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @end_of_queue_search(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
