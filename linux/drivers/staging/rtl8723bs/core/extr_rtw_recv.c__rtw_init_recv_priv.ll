; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_init_recv_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_init_recv_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_priv = type { i32, i32, i32, %struct.TYPE_6__, i32*, i64, %struct.adapter*, %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.adapter = type { i32 }
%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.adapter*, i64 }

@_SUCCESS = common dso_local global i32 0, align 4
@NR_RECVFRAME = common dso_local global i32 0, align 4
@RXFRAME_ALIGN_SZ = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@rtw_signal_stat_timer_hdl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtw_init_recv_priv(%struct.recv_priv* %0, %struct.adapter* %1) #0 {
  %3 = alloca %struct.recv_priv*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.recv_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.recv_priv* %0, %struct.recv_priv** %3, align 8
  store %struct.adapter* %1, %struct.adapter** %4, align 8
  %8 = load i32, i32* @_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %10 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %9, i32 0, i32 9
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %13 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %12, i32 0, i32 3
  %14 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %13)
  %15 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %16 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %15, i32 0, i32 8
  %17 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %16)
  %18 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %19 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %18, i32 0, i32 7
  %20 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %19)
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %23 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %22, i32 0, i32 6
  store %struct.adapter* %21, %struct.adapter** %23, align 8
  %24 = load i32, i32* @NR_RECVFRAME, align 4
  %25 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %26 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @NR_RECVFRAME, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 24
  %30 = load i64, i64* @RXFRAME_ALIGN_SZ, align 8
  %31 = add i64 %29, %30
  %32 = call i64 @vzalloc(i64 %31)
  %33 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %34 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  %35 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %36 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @_FAIL, align 4
  store i32 %40, i32* %7, align 4
  br label %99

41:                                               ; preds = %2
  %42 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %43 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* @RXFRAME_ALIGN_SZ, align 8
  %47 = call i64 @N_BYTE_ALIGMENT(i32 %45, i64 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %50 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %52 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to %union.recv_frame*
  store %union.recv_frame* %54, %union.recv_frame** %6, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %85, %41
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @NR_RECVFRAME, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %61 = bitcast %union.recv_frame* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %65 = bitcast %union.recv_frame* %64 to %struct.TYPE_5__*
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %68 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %66, i32* %69)
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %73 = call i32 @rtw_os_recv_resource_alloc(%struct.adapter* %71, %union.recv_frame* %72)
  %74 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %75 = bitcast %union.recv_frame* %74 to %struct.TYPE_5__*
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.adapter*, %struct.adapter** %4, align 8
  %79 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %80 = bitcast %union.recv_frame* %79 to %struct.TYPE_5__*
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.adapter* %78, %struct.adapter** %82, align 8
  %83 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %84 = getelementptr inbounds %union.recv_frame, %union.recv_frame* %83, i32 1
  store %union.recv_frame* %84, %union.recv_frame** %6, align 8
  br label %85

85:                                               ; preds = %59
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %55

88:                                               ; preds = %55
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = call i32 @rtw_hal_init_recv_priv(%struct.adapter* %89)
  store i32 %90, i32* %7, align 4
  %91 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %92 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %91, i32 0, i32 2
  %93 = load i32, i32* @rtw_signal_stat_timer_hdl, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  %95 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %96 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %95, i32 0, i32 1
  store i32 2000, i32* %96, align 4
  %97 = load %struct.recv_priv*, %struct.recv_priv** %3, align 8
  %98 = call i32 @rtw_set_signal_stat_timer(%struct.recv_priv* %97)
  br label %99

99:                                               ; preds = %88, %39
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_rtw_init_queue(%struct.TYPE_6__*) #1

declare dso_local i64 @vzalloc(i64) #1

declare dso_local i64 @N_BYTE_ALIGMENT(i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rtw_os_recv_resource_alloc(%struct.adapter*, %union.recv_frame*) #1

declare dso_local i32 @rtw_hal_init_recv_priv(%struct.adapter*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @rtw_set_signal_stat_timer(%struct.recv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
