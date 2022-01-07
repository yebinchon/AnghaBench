; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_scsi_disk_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_scsi_disk_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_disk = type { %struct.TYPE_2__*, i32, %struct.gendisk* }
%struct.TYPE_2__ = type { i32 }
%struct.gendisk = type { i32*, %struct.request_queue* }
%struct.request_queue = type { i32 }

@sd_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @scsi_disk_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_disk_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.request_queue*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %6)
  store %struct.scsi_disk* %7, %struct.scsi_disk** %3, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 2
  %10 = load %struct.gendisk*, %struct.gendisk** %9, align 8
  store %struct.gendisk* %10, %struct.gendisk** %4, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 1
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %5, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ida_free(i32* @sd_index_ida, i32 %16)
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %21 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %20)
  %22 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %25 = call i32 @put_disk(%struct.gendisk* %24)
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @put_device(i32* %29)
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %32 = call i32 @kfree(%struct.scsi_disk* %31)
  ret void
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
