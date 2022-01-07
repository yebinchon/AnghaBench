; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_init_evt_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_init_evt_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evt_priv = type { i32, i32, i32, i64, i32 }

@c2h_wk_callback = common dso_local global i32 0, align 4
@C2H_QUEUE_MAX_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_init_evt_priv(%struct.evt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evt_priv*, align 8
  store %struct.evt_priv* %0, %struct.evt_priv** %3, align 8
  %4 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %5 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %4, i32 0, i32 4
  %6 = call i32 @atomic_set(i32* %5, i32 0)
  %7 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %10 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %9, i32 0, i32 2
  %11 = load i32, i32* @c2h_wk_callback, align 4
  %12 = call i32 @_init_workitem(i32* %10, i32 %11, i32* null)
  %13 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %14 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i64, i64* @C2H_QUEUE_MAX_LEN, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @rtw_cbuf_alloc(i64 %16)
  %18 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %19 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.evt_priv*, %struct.evt_priv** %3, align 8
  %21 = getelementptr inbounds %struct.evt_priv, %struct.evt_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @_init_workitem(i32*, i32, i32*) #1

declare dso_local i32 @rtw_cbuf_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
