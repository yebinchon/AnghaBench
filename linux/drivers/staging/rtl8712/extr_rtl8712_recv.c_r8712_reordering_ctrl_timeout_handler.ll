; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_reordering_ctrl_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_reordering_ctrl_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_reorder_ctrl = type { %struct.__queue, %struct._adapter* }
%struct.__queue = type { i32 }
%struct._adapter = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_reordering_ctrl_timeout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.recv_reorder_ctrl*, align 8
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %struct.__queue*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.recv_reorder_ctrl*
  store %struct.recv_reorder_ctrl* %8, %struct.recv_reorder_ctrl** %4, align 8
  %9 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %10 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %9, i32 0, i32 1
  %11 = load %struct._adapter*, %struct._adapter** %10, align 8
  store %struct._adapter* %11, %struct._adapter** %5, align 8
  %12 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %12, i32 0, i32 0
  store %struct.__queue* %13, %struct.__queue** %6, align 8
  %14 = load %struct._adapter*, %struct._adapter** %5, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct._adapter*, %struct._adapter** %5, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %36

24:                                               ; preds = %18
  %25 = load %struct.__queue*, %struct.__queue** %6, align 8
  %26 = getelementptr inbounds %struct.__queue, %struct.__queue* %25, i32 0, i32 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct._adapter*, %struct._adapter** %5, align 8
  %30 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %31 = call i32 @r8712_recv_indicatepkts_in_order(%struct._adapter* %29, %struct.recv_reorder_ctrl* %30, i32 1)
  %32 = load %struct.__queue*, %struct.__queue** %6, align 8
  %33 = getelementptr inbounds %struct.__queue, %struct.__queue* %32, i32 0, i32 0
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r8712_recv_indicatepkts_in_order(%struct._adapter*, %struct.recv_reorder_ctrl*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
