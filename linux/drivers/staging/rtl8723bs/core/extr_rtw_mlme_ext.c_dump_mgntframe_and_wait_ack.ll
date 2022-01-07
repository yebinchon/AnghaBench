; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_dump_mgntframe_and_wait_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_dump_mgntframe_and_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, i64, i64 }
%struct.xmit_priv = type { i32, i32, i64 }
%struct.xmit_frame = type { i32, i32 }

@dump_mgntframe_and_wait_ack.seq_no = internal global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_mgntframe_and_wait_ack(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %9 = load i32, i32* @_FAIL, align 4
  store i32 %9, i32* %6, align 4
  store i32 500, i32* %7, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.xmit_priv* %11, %struct.xmit_priv** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16, %2
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %25 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rtw_free_xmitbuf(%struct.xmit_priv* %23, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %31 = call i32 @rtw_free_xmitframe(%struct.xmit_priv* %29, %struct.xmit_frame* %30)
  store i32 -1, i32* %3, align 4
  br label %64

32:                                               ; preds = %16
  %33 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %34 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %33, i32 0, i32 1
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %39 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* @dump_mgntframe_and_wait_ack.seq_no, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @dump_mgntframe_and_wait_ack.seq_no, align 4
  %42 = sext i32 %40 to i64
  %43 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %44 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %46 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %49 = call i64 @rtw_hal_mgnt_xmit(%struct.adapter* %47, %struct.xmit_frame* %48)
  %50 = load i64, i64* @_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rtw_ack_tx_wait(%struct.xmit_priv* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %37
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.xmit_priv*, %struct.xmit_priv** %8, align 8
  %60 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %56, %32
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @rtw_free_xmitbuf(%struct.xmit_priv*, i32) #1

declare dso_local i32 @rtw_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @rtw_hal_mgnt_xmit(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @rtw_ack_tx_wait(%struct.xmit_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
