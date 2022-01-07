; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_softirq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_softirq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timing out command, waited %lus\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_EH_RETRY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @scsi_softirq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_softirq_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %6)
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 4
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @atomic_inc(i32* %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = call i32 @scsi_decide_disposition(%struct.scsi_cmnd* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 128
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* @jiffies, align 4
  %47 = call i64 @time_before(i64 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @HZ, align 8
  %54 = udiv i64 %52, %53
  %55 = call i32 @scmd_printk(i32 %50, %struct.scsi_cmnd* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %54)
  store i32 128, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %40, %35
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @scsi_log_completion(%struct.scsi_cmnd* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %72 [
    i32 128, label %61
    i32 129, label %64
    i32 130, label %68
  ]

61:                                               ; preds = %56
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = call i32 @scsi_finish_command(%struct.scsi_cmnd* %62)
  br label %75

64:                                               ; preds = %56
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %66 = load i32, i32* @SCSI_MLQUEUE_EH_RETRY, align 4
  %67 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %65, i32 %66)
  br label %75

68:                                               ; preds = %56
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  %71 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %69, i32 %70)
  br label %75

72:                                               ; preds = %56
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = call i32 @scsi_eh_scmd_add(%struct.scsi_cmnd* %73)
  br label %75

75:                                               ; preds = %72, %68, %64, %61
  ret void
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @scsi_decide_disposition(%struct.scsi_cmnd*) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i64) #1

declare dso_local i32 @scsi_log_completion(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_finish_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_queue_insert(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_eh_scmd_add(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
