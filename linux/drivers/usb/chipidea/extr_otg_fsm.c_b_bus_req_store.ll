; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_b_bus_req_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_otg_fsm.c_b_bus_req_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ci_hdrc = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@OTG_STATE_B_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @b_bus_req_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_bus_req_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %69

16:                                               ; preds = %4
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %28 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %60

30:                                               ; preds = %16
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 49
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %38 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %41 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OTG_STATE_B_PERIPHERAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %50 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %53 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %69

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %62 = call i32 @ci_otg_queue_work(%struct.ci_hdrc* %61)
  %63 = load %struct.ci_hdrc*, %struct.ci_hdrc** %10, align 8
  %64 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %60, %48, %15
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.ci_hdrc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ci_otg_queue_work(%struct.ci_hdrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
