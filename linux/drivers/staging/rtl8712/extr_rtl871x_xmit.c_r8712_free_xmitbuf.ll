; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32, i32 }
%struct.xmit_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_xmitbuf(%struct.xmit_priv* %0, %struct.xmit_buf* %1) #0 {
  %3 = alloca %struct.xmit_priv*, align 8
  %4 = alloca %struct.xmit_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.__queue*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %3, align 8
  store %struct.xmit_buf* %1, %struct.xmit_buf** %4, align 8
  %7 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %8 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %7, i32 0, i32 1
  store %struct.__queue* %8, %struct.__queue** %6, align 8
  %9 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %10 = icmp eq %struct.xmit_buf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.__queue*, %struct.__queue** %6, align 8
  %14 = getelementptr inbounds %struct.__queue, %struct.__queue* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %18 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %17, i32 0, i32 0
  %19 = call i32 @list_del_init(i32* %18)
  %20 = load %struct.xmit_buf*, %struct.xmit_buf** %4, align 8
  %21 = getelementptr inbounds %struct.xmit_buf, %struct.xmit_buf* %20, i32 0, i32 0
  %22 = load %struct.__queue*, %struct.__queue** %6, align 8
  %23 = getelementptr inbounds %struct.__queue, %struct.__queue* %22, i32 0, i32 1
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  %25 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %26 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.__queue*, %struct.__queue** %6, align 8
  %30 = getelementptr inbounds %struct.__queue, %struct.__queue* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
