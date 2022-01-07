; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_enqueue_pending_xmitbuf_to_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_enqueue_pending_xmitbuf_to_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.xmit_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue_pending_xmitbuf_to_head(%struct.xmit_priv* %0, %struct.xmit_buf* %1) #0 {
  %3 = alloca %struct.xmit_priv*, align 8
  %4 = alloca %struct.xmit_buf*, align 8
  %5 = alloca %struct.__queue*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %3, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %4, align 8
  %6 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %7 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %6, i32 0, i32 0
  store %struct.__queue* %7, %struct.__queue** %5, align 8
  %8 = load %struct.__queue*, %struct.__queue** %5, align 8
  %9 = getelementptr inbounds %struct.__queue, %struct.__queue* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %11, i32 0, i32 0
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %15 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %14, i32 0, i32 0
  %16 = load %struct.__queue*, %struct.__queue** %5, align 8
  %17 = call i32 @get_list_head(%struct.__queue* %16)
  %18 = call i32 @list_add(i32* %15, i32 %17)
  %19 = load %struct.__queue*, %struct.__queue** %5, align 8
  %20 = getelementptr inbounds %struct.__queue, %struct.__queue* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_bh(i32* %20)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32) #1

declare dso_local i32 @get_list_head(%struct.__queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
