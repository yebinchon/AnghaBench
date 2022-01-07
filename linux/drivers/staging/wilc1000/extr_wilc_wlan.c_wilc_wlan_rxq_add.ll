; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_rxq_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_rxq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rxq_entry_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wilc*, %struct.rxq_entry_t*)* @wilc_wlan_rxq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_rxq_add(%struct.wilc* %0, %struct.rxq_entry_t* %1) #0 {
  %3 = alloca %struct.wilc*, align 8
  %4 = alloca %struct.rxq_entry_t*, align 8
  store %struct.wilc* %0, %struct.wilc** %3, align 8
  store %struct.rxq_entry_t* %1, %struct.rxq_entry_t** %4, align 8
  %5 = load %struct.wilc*, %struct.wilc** %3, align 8
  %6 = getelementptr inbounds %struct.wilc, %struct.wilc* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %23

10:                                               ; preds = %2
  %11 = load %struct.wilc*, %struct.wilc** %3, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rxq_entry_t*, %struct.rxq_entry_t** %4, align 8
  %15 = getelementptr inbounds %struct.rxq_entry_t, %struct.rxq_entry_t* %14, i32 0, i32 0
  %16 = load %struct.wilc*, %struct.wilc** %3, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %15, i32* %18)
  %20 = load %struct.wilc*, %struct.wilc** %3, align 8
  %21 = getelementptr inbounds %struct.wilc, %struct.wilc* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
