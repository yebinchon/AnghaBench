; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_initialize_completion_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_initialize_completion_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCU_MAX_COMPLETION_QUEUE_ENTRIES = common dso_local global i64 0, align 8
@SCU_MAX_EVENTS = common dso_local global i64 0, align 8
@POINTER = common dso_local global i32 0, align 4
@EVENT_POINTER = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@EVENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*)* @sci_controller_initialize_completion_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_controller_initialize_completion_queue(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* @SCU_MAX_COMPLETION_QUEUE_ENTRIES, align 8
  %10 = sub i64 %9, 1
  %11 = call i64 @SMU_CQC_QUEUE_LIMIT_SET(i64 %10)
  %12 = load i64, i64* @SCU_MAX_EVENTS, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i64 @SMU_CQC_EVENT_LIMIT_SET(i64 %13)
  %15 = or i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %18 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = call i32 @writel(i64 %16, i32* %20)
  %22 = load i32, i32* @POINTER, align 4
  %23 = call i64 @SMU_CQGR_GEN_VAL(i32 %22, i32 0)
  %24 = load i32, i32* @EVENT_POINTER, align 4
  %25 = call i64 @SMU_CQGR_GEN_VAL(i32 %24, i32 0)
  %26 = or i64 %23, %25
  %27 = load i32, i32* @ENABLE, align 4
  %28 = call i64 @SMU_CQGR_GEN_BIT(i32 %27)
  %29 = or i64 %26, %28
  %30 = load i32, i32* @EVENT_ENABLE, align 4
  %31 = call i64 @SMU_CQGR_GEN_BIT(i32 %30)
  %32 = or i64 %29, %31
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %35 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @writel(i64 %33, i32* %37)
  %39 = load i32, i32* @POINTER, align 4
  %40 = call i64 @SMU_CQPR_GEN_VAL(i32 %39, i32 0)
  %41 = load i32, i32* @EVENT_POINTER, align 4
  %42 = call i64 @SMU_CQPR_GEN_VAL(i32 %41, i32 0)
  %43 = or i64 %40, %42
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %46 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @writel(i64 %44, i32* %48)
  store i64 0, i64* %3, align 8
  br label %50

50:                                               ; preds = %60, %1
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @SCU_MAX_COMPLETION_QUEUE_ENTRIES, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %56 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 -2147483648, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %50

63:                                               ; preds = %50
  ret void
}

declare dso_local i64 @SMU_CQC_QUEUE_LIMIT_SET(i64) #1

declare dso_local i64 @SMU_CQC_EVENT_LIMIT_SET(i64) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i64 @SMU_CQGR_GEN_VAL(i32, i32) #1

declare dso_local i64 @SMU_CQGR_GEN_BIT(i32) #1

declare dso_local i64 @SMU_CQPR_GEN_VAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
