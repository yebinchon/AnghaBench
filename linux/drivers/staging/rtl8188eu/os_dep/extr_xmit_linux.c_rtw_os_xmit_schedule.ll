; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_os_xmit_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_xmit_linux.c_rtw_os_xmit_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_os_xmit_schedule(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = icmp ne %struct.adapter* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.xmit_priv* %9, %struct.xmit_priv** %3, align 8
  %10 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = call i64 @rtw_txframes_pending(%struct.adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %18 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %17, i32 0, i32 1
  %19 = call i32 @tasklet_hi_schedule(i32* %18)
  br label %20

20:                                               ; preds = %16, %7
  %21 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %22 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  br label %24

24:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @rtw_txframes_pending(%struct.adapter*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
