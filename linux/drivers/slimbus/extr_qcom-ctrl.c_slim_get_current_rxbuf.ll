; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_get_current_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_slim_get_current_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ctrl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ctrl*, i8*)* @slim_get_current_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_get_current_rxbuf(%struct.qcom_slim_ctrl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_slim_ctrl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.qcom_slim_ctrl* %0, %struct.qcom_slim_ctrl** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %8 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %32 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %40 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %34, %44
  %46 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @memcpy(i8* %30, i64 %45, i32 %49)
  %51 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %57 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %55, %59
  %61 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %29, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
