; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c___scsi_queue_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c___scsi_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i64, %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Inserting command %p into mlqueue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i32, i32)* @__scsi_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scsi_queue_insert(%struct.scsi_cmnd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %7, align 8
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = call i32 @scmd_printk(i32 %11, %struct.scsi_cmnd* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %13)
  %15 = call i32 @SCSI_LOG_MLQUEUE(i32 1, i32 %14)
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @scsi_set_blocked(%struct.scsi_cmnd* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %23 = call i32 @scsi_device_unbusy(%struct.scsi_device* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @blk_mq_requeue_request(i32 %29, i32 1)
  ret void
}

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_blocked(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_device_unbusy(%struct.scsi_device*) #1

declare dso_local i32 @blk_mq_requeue_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
