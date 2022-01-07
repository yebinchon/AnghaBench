; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_read_capacity_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_read_capacity_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64 }
%struct.scsi_device = type { i64 }
%struct.scsi_sense_hdr = type { i64 }

@DRIVER_SENSE = common dso_local global i64 0, align 8
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sense not available.\0A\00", align 1
@NOT_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, %struct.scsi_device*, %struct.scsi_sense_hdr*, i32, i32)* @read_capacity_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_capacity_error(%struct.scsi_disk* %0, %struct.scsi_device* %1, %struct.scsi_sense_hdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_sense_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %6, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %7, align 8
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @driver_byte(i32 %11)
  %13 = load i64, i64* @DRIVER_SENSE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %17 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %18 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %16, %struct.scsi_sense_hdr* %17)
  br label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @KERN_NOTICE, align 4
  %21 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %22 = call i32 @sd_printk(i32 %20, %struct.scsi_disk* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NOT_READY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %39 = call i32 @set_media_not_present(%struct.scsi_disk* %38)
  br label %40

40:                                               ; preds = %37, %31, %28, %23
  %41 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %42 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @set_media_not_present(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
