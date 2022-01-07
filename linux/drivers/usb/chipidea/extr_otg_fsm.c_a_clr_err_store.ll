; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_a_clr_err_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_a_clr_err_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ci_hdrc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @a_clr_err_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a_clr_err_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ci_hdrc*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.ci_hdrc* @dev_get_drvdata(%struct.device* %11)
  store %struct.ci_hdrc* %12, %struct.ci_hdrc** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %39

16:                                               ; preds = %4
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 49
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %32 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %31)
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %34 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %15
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
