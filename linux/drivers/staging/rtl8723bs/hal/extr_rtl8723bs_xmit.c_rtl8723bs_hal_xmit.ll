; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_xmit.c_rtl8723bs_hal_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_xmit.c_rtl8723bs_hal_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.xmit_priv }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xmit_priv = type { i32, i32, i32 }
%struct.xmit_frame = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DATA_FRAMETAG = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i64 0, align 8
@_module_hal_xmit_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"rtl8723bs_hal_xmit: enqueue xmitframe fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl8723bs_hal_xmit(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca %struct.xmit_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %8 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %9 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %13 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.xmit_priv* %16, %struct.xmit_priv** %6, align 8
  %17 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %18 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DATA_FRAMETAG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %2
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %24 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 2054
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %30 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 34958
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %36 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %50 = call i32 @rtw_issue_addbareq_cmd(%struct.adapter* %48, %struct.xmit_frame* %49)
  br label %51

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %51, %34, %28, %22, %2
  %53 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %54 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %53, i32 0, i32 2
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %58 = call i64 @rtw_xmitframe_enqueue(%struct.adapter* %56, %struct.xmit_frame* %57)
  store i64 %58, i64* %7, align 8
  %59 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %60 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %59, i32 0, i32 2
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %52
  %66 = load i32, i32* @_module_hal_xmit_c_, align 4
  %67 = load i32, i32* @_drv_err_, align 4
  %68 = call i32 @RT_TRACE(i32 %66, i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %70 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %71 = call i32 @rtw_free_xmitframe(%struct.xmit_priv* %69, %struct.xmit_frame* %70)
  %72 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %73 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i64 1, i64* %3, align 8
  br label %80

76:                                               ; preds = %52
  %77 = load %struct.xmit_priv*, %struct.xmit_priv** %6, align 8
  %78 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %77, i32 0, i32 0
  %79 = call i32 @complete(i32* %78)
  store i64 0, i64* %3, align 8
  br label %80

80:                                               ; preds = %76, %65
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i32 @rtw_issue_addbareq_cmd(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @rtw_xmitframe_enqueue(%struct.adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_xmitframe(%struct.xmit_priv*, %struct.xmit_frame*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
