; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_bulk_srb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_bulk_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.scsi_cmnd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_bulk_srb(%struct.us_data* %0, i32 %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = call i32 @scsi_sglist(%struct.scsi_cmnd* %11)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %14 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %16 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %15)
  %17 = call i32 @usb_stor_bulk_transfer_sglist(%struct.us_data* %9, i32 %10, i32 %12, i32 %14, i64 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %19)
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = sub nsw i64 %20, %22
  %24 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %18, i64 %23)
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @usb_stor_bulk_transfer_sglist(%struct.us_data*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
