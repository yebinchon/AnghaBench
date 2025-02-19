; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_free_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_free_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i64, %struct.adapter* }
%struct.adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rtw_free_recv_priv(%struct.recv_priv* %0) #0 {
  %2 = alloca %struct.recv_priv*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.recv_priv* %0, %struct.recv_priv** %2, align 8
  %4 = load %struct.recv_priv*, %struct.recv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %4, i32 0, i32 1
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter* %7)
  %9 = load %struct.recv_priv*, %struct.recv_priv** %2, align 8
  %10 = call i32 @rtw_os_recv_resource_free(%struct.recv_priv* %9)
  %11 = load %struct.recv_priv*, %struct.recv_priv** %2, align 8
  %12 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.recv_priv*, %struct.recv_priv** %2, align 8
  %17 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @vfree(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = call i32 @rtw_hal_free_recv_priv(%struct.adapter* %21)
  ret void
}

declare dso_local i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter*) #1

declare dso_local i32 @rtw_os_recv_resource_free(%struct.recv_priv*) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i32 @rtw_hal_free_recv_priv(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
