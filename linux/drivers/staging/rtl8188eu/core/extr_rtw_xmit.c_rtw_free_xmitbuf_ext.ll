; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_free_xmitbuf_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_free_xmitbuf_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.xmit_buf = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_free_xmitbuf_ext(%struct.xmit_priv* %0, %struct.xmit_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct.xmit_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.__queue*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %4, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %5, align 8
  %8 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %8, i32 0, i32 1
  store %struct.__queue* %9, %struct.__queue** %7, align 8
  %10 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %11 = icmp ne %struct.xmit_buf* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @_FAIL, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.__queue*, %struct.__queue** %7, align 8
  %16 = getelementptr inbounds %struct.__queue, %struct.__queue* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %20 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %19, i32 0, i32 0
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.xmit_buf*, %struct.xmit_buf** %5, align 8
  %23 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %22, i32 0, i32 0
  %24 = load %struct.__queue*, %struct.__queue** %7, align 8
  %25 = call i32 @get_list_head(%struct.__queue* %24)
  %26 = call i32 @list_add_tail(i32* %23, i32 %25)
  %27 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %28 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.__queue*, %struct.__queue** %7, align 8
  %32 = getelementptr inbounds %struct.__queue, %struct.__queue* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* @_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %14, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @get_list_head(%struct.__queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
