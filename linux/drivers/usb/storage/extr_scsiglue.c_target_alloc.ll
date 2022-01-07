; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_scsiglue.c_target_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_scsiglue.c_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.us_data = type { i64 }

@USB_SC_UFI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.us_data*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %4 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_to_shost(i32 %7)
  %9 = call %struct.us_data* @host_to_us(i32 %8)
  store %struct.us_data* %9, %struct.us_data** %3, align 8
  %10 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_SC_UFI, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.us_data* @host_to_us(i32) #1

declare dso_local i32 @dev_to_shost(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
