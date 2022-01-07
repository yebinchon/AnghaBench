; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_free_mlme_ext_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_free_mlme_ext_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_ext_priv = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mlme_ext_priv(%struct.mlme_ext_priv* %0) #0 {
  %2 = alloca %struct.mlme_ext_priv*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.mlme_ext_priv* %0, %struct.mlme_ext_priv** %2, align 8
  %4 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %4, i32 0, i32 2
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = icmp ne %struct.adapter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 1
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 0
  %21 = call i32 @del_timer_sync(i32* %20)
  br label %22

22:                                               ; preds = %9, %15, %10
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
