; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_enqueue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_enqueue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_priv = type { i32, %struct.__queue, %struct.TYPE_4__* }
%struct.__queue = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cmd_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_enqueue_cmd(%struct.cmd_priv* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.cmd_priv*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.__queue*, align 8
  %6 = alloca i64, align 8
  store %struct.cmd_priv* %0, %struct.cmd_priv** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %7 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %17 = icmp ne %struct.cmd_obj* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %38

19:                                               ; preds = %15
  %20 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %21 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %20, i32 0, i32 1
  store %struct.__queue* %21, %struct.__queue** %5, align 8
  %22 = load %struct.__queue*, %struct.__queue** %5, align 8
  %23 = getelementptr inbounds %struct.__queue, %struct.__queue* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %27 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %26, i32 0, i32 0
  %28 = load %struct.__queue*, %struct.__queue** %5, align 8
  %29 = getelementptr inbounds %struct.__queue, %struct.__queue* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.__queue*, %struct.__queue** %5, align 8
  %32 = getelementptr inbounds %struct.__queue, %struct.__queue* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.cmd_priv*, %struct.cmd_priv** %3, align 8
  %36 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %35, i32 0, i32 0
  %37 = call i32 @complete(i32* %36)
  br label %38

38:                                               ; preds = %19, %18, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
