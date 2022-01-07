; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_msg_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_msg_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32, i32, i32 }
%struct.slim_msg_txn = type { i64, %struct.slim_val_inf* }
%struct.slim_val_inf = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"Got response to invalid TID:%d, len:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slim_msg_response(%struct.slim_controller* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.slim_msg_txn*, align 8
  %10 = alloca %struct.slim_val_inf*, align 8
  %11 = alloca i64, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %13 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %12, i32 0, i32 1
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %17 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %16, i32 0, i32 2
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.slim_msg_txn* @idr_find(i32* %17, i32 %18)
  store %struct.slim_msg_txn* %19, %struct.slim_msg_txn** %9, align 8
  %20 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %21 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %20, i32 0, i32 1
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %9, align 8
  %25 = icmp eq %struct.slim_msg_txn* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %73

27:                                               ; preds = %4
  %28 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %9, align 8
  %29 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %28, i32 0, i32 1
  %30 = load %struct.slim_val_inf*, %struct.slim_val_inf** %29, align 8
  store %struct.slim_val_inf* %30, %struct.slim_val_inf** %10, align 8
  %31 = load %struct.slim_val_inf*, %struct.slim_val_inf** %10, align 8
  %32 = icmp eq %struct.slim_val_inf* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.slim_val_inf*, %struct.slim_val_inf** %10, align 8
  %35 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33, %27
  %39 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %40 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %73

45:                                               ; preds = %33
  %46 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %47 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %9, align 8
  %48 = call i32 @slim_free_txn_tid(%struct.slim_controller* %46, %struct.slim_msg_txn* %47)
  %49 = load %struct.slim_val_inf*, %struct.slim_val_inf** %10, align 8
  %50 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  %55 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %9, align 8
  %56 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %9, align 8
  %61 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @complete(i64 %62)
  br label %64

64:                                               ; preds = %59, %45
  %65 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %66 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pm_runtime_mark_last_busy(i32 %67)
  %69 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %70 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_put_autosuspend(i32 %71)
  br label %73

73:                                               ; preds = %64, %38, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.slim_msg_txn* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @slim_free_txn_tid(%struct.slim_controller*, %struct.slim_msg_txn*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
