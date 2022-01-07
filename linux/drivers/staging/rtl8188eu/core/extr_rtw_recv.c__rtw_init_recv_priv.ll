; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c__rtw_init_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c__rtw_init_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i32, i32, %struct.TYPE_2__, i32, %struct.adapter*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { i32 }
%struct.recv_frame = type { %struct.adapter*, i32*, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@NR_RECVFRAME = common dso_local global i32 0, align 4
@RXFRAME_ALIGN_SZ = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@rtw_signal_stat_timer_hdl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtw_init_recv_priv(%struct.recv_priv* %0, %struct.adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.recv_priv*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.recv_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.recv_priv* %0, %struct.recv_priv** %4, align 8
  store %struct.adapter* %1, %struct.adapter** %5, align 8
  %9 = load i32, i32* @_SUCCESS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %11 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %10, i32 0, i32 2
  %12 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %11)
  %13 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %14 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %13, i32 0, i32 6
  %15 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %14)
  %16 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %17 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %16, i32 0, i32 5
  %18 = call i32 @_rtw_init_queue(%struct.TYPE_2__* %17)
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %21 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %20, i32 0, i32 4
  store %struct.adapter* %19, %struct.adapter** %21, align 8
  %22 = load i32, i32* @NR_RECVFRAME, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 24
  %25 = load i64, i64* @RXFRAME_ALIGN_SZ, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @vzalloc(i64 %26)
  %28 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %29 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %31 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %2
  %37 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %38 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @RXFRAME_ALIGN_SZ, align 8
  %41 = call %struct.recv_frame* @PTR_ALIGN(i32 %39, i64 %40)
  store %struct.recv_frame* %41, %struct.recv_frame** %7, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %63, %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @NR_RECVFRAME, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %48 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %51 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %50, i32 0, i32 2
  %52 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %53 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %51, i32* %54)
  %56 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %57 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.adapter*, %struct.adapter** %5, align 8
  %59 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %60 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %59, i32 0, i32 0
  store %struct.adapter* %58, %struct.adapter** %60, align 8
  %61 = load %struct.recv_frame*, %struct.recv_frame** %7, align 8
  %62 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %61, i32 1
  store %struct.recv_frame* %62, %struct.recv_frame** %7, align 8
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load %struct.adapter*, %struct.adapter** %5, align 8
  %68 = call i32 @rtw_hal_init_recv_priv(%struct.adapter* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %70 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %69, i32 0, i32 1
  %71 = load i32, i32* @rtw_signal_stat_timer_hdl, align 4
  %72 = call i32 @timer_setup(i32* %70, i32 %71, i32 0)
  %73 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %74 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %73, i32 0, i32 0
  store i32 1000, i32* %74, align 8
  %75 = load %struct.recv_priv*, %struct.recv_priv** %4, align 8
  %76 = call i32 @rtw_set_signal_stat_timer(%struct.recv_priv* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %66, %34
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @_rtw_init_queue(%struct.TYPE_2__*) #1

declare dso_local i32 @vzalloc(i64) #1

declare dso_local %struct.recv_frame* @PTR_ALIGN(i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rtw_hal_init_recv_priv(%struct.adapter*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @rtw_set_signal_stat_timer(%struct.recv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
