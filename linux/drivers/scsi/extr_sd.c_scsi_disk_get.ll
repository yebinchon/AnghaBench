; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_scsi_disk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_scsi_disk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32 }
%struct.gendisk = type { i64 }

@sd_ref_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_disk* (%struct.gendisk*)* @scsi_disk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_disk* @scsi_disk_get(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  store %struct.scsi_disk* null, %struct.scsi_disk** %3, align 8
  %4 = call i32 @mutex_lock(i32* @sd_ref_mutex)
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %11 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %10)
  store %struct.scsi_disk* %11, %struct.scsi_disk** %3, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @scsi_device_get(i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 0
  %20 = call i32 @get_device(i32* %19)
  br label %22

21:                                               ; preds = %9
  store %struct.scsi_disk* null, %struct.scsi_disk** %3, align 8
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %1
  %24 = call i32 @mutex_unlock(i32* @sd_ref_mutex)
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  ret %struct.scsi_disk* %25
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i64 @scsi_device_get(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
