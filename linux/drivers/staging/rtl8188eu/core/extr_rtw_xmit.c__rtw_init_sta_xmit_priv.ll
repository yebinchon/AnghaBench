; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_init_sta_xmit_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c__rtw_init_sta_xmit_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_xmit_priv = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_init_sta_xmit_priv(%struct.sta_xmit_priv* %0) #0 {
  %2 = alloca %struct.sta_xmit_priv*, align 8
  store %struct.sta_xmit_priv* %0, %struct.sta_xmit_priv** %2, align 8
  %3 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %4 = bitcast %struct.sta_xmit_priv* %3 to i8*
  %5 = call i32 @memset(i8* %4, i32 0, i32 28)
  %6 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %7 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %6, i32 0, i32 6
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %10 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %9, i32 0, i32 5
  %11 = call i32 @_init_txservq(i32* %10)
  %12 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %13 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %12, i32 0, i32 4
  %14 = call i32 @_init_txservq(i32* %13)
  %15 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %16 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %15, i32 0, i32 3
  %17 = call i32 @_init_txservq(i32* %16)
  %18 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %19 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %18, i32 0, i32 2
  %20 = call i32 @_init_txservq(i32* %19)
  %21 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %22 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.sta_xmit_priv*, %struct.sta_xmit_priv** %2, align 8
  %25 = getelementptr inbounds %struct.sta_xmit_priv, %struct.sta_xmit_priv* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_init_txservq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
