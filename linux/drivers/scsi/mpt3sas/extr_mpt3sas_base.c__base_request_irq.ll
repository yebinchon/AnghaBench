; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i8*, i32, i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.adapter_reply_queue = type { i32, i32, i32, i32, %struct.MPT3SAS_ADAPTER* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to allocate memory %zu!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPT_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s%d-msix%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@_base_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: unable to allocate interrupt %d!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, i32)* @_base_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_request_irq(%struct.MPT3SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.adapter_reply_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %10 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %9, i32 0, i32 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.adapter_reply_queue* @kzalloc(i32 24, i32 %12)
  store %struct.adapter_reply_queue* %13, %struct.adapter_reply_queue** %7, align 8
  %14 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %15 = icmp ne %struct.adapter_reply_queue* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %18 = call i32 @ioc_err(%struct.MPT3SAS_ADAPTER* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 24)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %23 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %24 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %23, i32 0, i32 4
  store %struct.MPT3SAS_ADAPTER* %22, %struct.MPT3SAS_ADAPTER** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %27 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %29 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %37 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MPT_NAME_LENGTH, align 4
  %40 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %41 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i32, i8*, i8*, i32, ...) @snprintf(i32 %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %45, i32 %46)
  br label %60

48:                                               ; preds = %21
  %49 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %50 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MPT_NAME_LENGTH, align 4
  %53 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %54 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %57 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i32, i8*, i8*, i32, ...) @snprintf(i32 %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %48, %35
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @pci_irq_vector(%struct.pci_dev* %61, i32 %62)
  %64 = load i32, i32* @_base_interrupt, align 4
  %65 = load i32, i32* @IRQF_SHARED, align 4
  %66 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %67 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %70 = call i32 @request_irq(i32 %63, i32 %64, i32 %65, i32 %68, %struct.adapter_reply_queue* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %60
  %74 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %75 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @pci_irq_vector(%struct.pci_dev* %77, i32 %78)
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %82 = call i32 @kfree(%struct.adapter_reply_queue* %81)
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %94

85:                                               ; preds = %60
  %86 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %87 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %86, i32 0, i32 0
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %7, align 8
  %90 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %89, i32 0, i32 0
  %91 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %92 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %91, i32 0, i32 2
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %73, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.adapter_reply_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @ioc_err(%struct.MPT3SAS_ADAPTER*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adapter_reply_queue*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.adapter_reply_queue*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
