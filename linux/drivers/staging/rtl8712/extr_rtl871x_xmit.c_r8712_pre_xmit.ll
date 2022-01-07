; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_pre_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_pre_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { %struct.pkt_attrib }
%struct.pkt_attrib = type { i32 }
%struct.xmit_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_pre_xmit(%struct._adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xmit_buf*, align 8
  %9 = alloca %struct.xmit_priv*, align 8
  %10 = alloca %struct.pkt_attrib*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  store %struct.xmit_buf* null, %struct.xmit_buf** %8, align 8
  %11 = load %struct._adapter*, %struct._adapter** %4, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  store %struct.xmit_priv* %12, %struct.xmit_priv** %9, align 8
  %13 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %14 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %13, i32 0, i32 0
  store %struct.pkt_attrib* %14, %struct.pkt_attrib** %10, align 8
  %15 = load %struct._adapter*, %struct._adapter** %4, align 8
  %16 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %17 = call i32 @r8712_do_queue_select(%struct._adapter* %15, %struct.pkt_attrib* %16)
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct._adapter*, %struct._adapter** %4, align 8
  %23 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %24 = call i64 @r8712_txframes_sta_ac_pending(%struct._adapter* %22, %struct.pkt_attrib* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %27 = load %struct._adapter*, %struct._adapter** %4, align 8
  %28 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %29 = call i32 @r8712_xmit_enqueue(%struct._adapter* %27, %struct.xmit_frame* %28)
  %30 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %31 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %2
  %36 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %37 = call %struct.xmit_buf* @r8712_alloc_xmitbuf(%struct.xmit_priv* %36)
  store %struct.xmit_buf* %37, %struct.xmit_buf** %8, align 8
  %38 = load %struct.xmit_buf*, %struct.xmit_buf** %8, align 8
  %39 = icmp eq %struct.xmit_buf* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  %41 = load %struct._adapter*, %struct._adapter** %4, align 8
  %42 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %43 = call i32 @r8712_xmit_enqueue(%struct._adapter* %41, %struct.xmit_frame* %42)
  %44 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %45 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %59

48:                                               ; preds = %35
  %49 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %50 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  store i32 1, i32* %7, align 4
  %53 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %54 = load %struct.xmit_buf*, %struct.xmit_buf** %8, align 8
  %55 = call i32 @xmitframe_xmitbuf_attach(%struct.xmit_frame* %53, %struct.xmit_buf* %54)
  %56 = load %struct._adapter*, %struct._adapter** %4, align 8
  %57 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %58 = call i32 @r8712_xmit_direct(%struct._adapter* %56, %struct.xmit_frame* %57)
  br label %59

59:                                               ; preds = %48, %40
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @r8712_do_queue_select(%struct._adapter*, %struct.pkt_attrib*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @r8712_txframes_sta_ac_pending(%struct._adapter*, %struct.pkt_attrib*) #1

declare dso_local i32 @r8712_xmit_enqueue(%struct._adapter*, %struct.xmit_frame*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.xmit_buf* @r8712_alloc_xmitbuf(%struct.xmit_priv*) #1

declare dso_local i32 @xmitframe_xmitbuf_attach(%struct.xmit_frame*, %struct.xmit_buf*) #1

declare dso_local i32 @r8712_xmit_direct(%struct._adapter*, %struct.xmit_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
