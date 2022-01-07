; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_alloc_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_alloc_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ctrl = type { %struct.TYPE_2__, %struct.completion**, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.slim_msg_txn = type { i32 }
%struct.completion = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"controller TX buf unavailable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qcom_slim_ctrl*, %struct.slim_msg_txn*, %struct.completion*)* @slim_alloc_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slim_alloc_txbuf(%struct.qcom_slim_ctrl* %0, %struct.slim_msg_txn* %1, %struct.completion* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qcom_slim_ctrl*, align 8
  %6 = alloca %struct.slim_msg_txn*, align 8
  %7 = alloca %struct.completion*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qcom_slim_ctrl* %0, %struct.qcom_slim_ctrl** %5, align 8
  store %struct.slim_msg_txn* %1, %struct.slim_msg_txn** %6, align 8
  store %struct.completion* %2, %struct.completion** %7, align 8
  %10 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %19, %23
  %25 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %32 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %82

40:                                               ; preds = %3
  %41 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %9, align 4
  %45 = load %struct.completion*, %struct.completion** %7, align 8
  %46 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %47 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %46, i32 0, i32 1
  %48 = load %struct.completion**, %struct.completion*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.completion*, %struct.completion** %48, i64 %50
  store %struct.completion* %45, %struct.completion** %51, align 8
  %52 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %53 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %58 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %56, %60
  %62 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %63 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %66 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %71 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %5, align 8
  %76 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %74, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %73, i64 %80
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %40, %30
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
