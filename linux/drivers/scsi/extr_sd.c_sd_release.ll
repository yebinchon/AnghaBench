; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sd_release\0A\00", align 1
@SCSI_REMOVAL_ALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @sd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %7)
  store %struct.scsi_disk* %8, %struct.scsi_disk** %5, align 8
  %9 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %10 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %9, i32 0, i32 1
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  %12 = load i32, i32* @KERN_INFO, align 4
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %14 = call i32 @sd_printk(i32 %12, %struct.scsi_disk* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %14)
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 0
  %18 = call i64 @atomic_dec_return(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %27 = call i64 @scsi_block_when_processing_errors(%struct.scsi_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %31 = load i32, i32* @SCSI_REMOVAL_ALLOW, align 4
  %32 = call i32 @scsi_set_medium_removal(%struct.scsi_device* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33, %20, %2
  %35 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %36 = call i32 @scsi_disk_put(%struct.scsi_disk* %35)
  ret void
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

declare dso_local i32 @scsi_set_medium_removal(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_disk_put(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
