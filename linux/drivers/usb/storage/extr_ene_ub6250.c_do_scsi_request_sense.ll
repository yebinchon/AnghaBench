; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_do_scsi_request_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_do_scsi_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.ene_ub6250_info = type { i32 }

@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @do_scsi_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_request_sense(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ene_ub6250_info*, align 8
  %6 = alloca [18 x i8], align 16
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %10, %struct.ene_ub6250_info** %5, align 8
  %11 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 18)
  %13 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  store i8 112, i8* %13, align 16
  %14 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %15 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 2
  store i8 %18, i8* %19, align 2
  %20 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 7
  store i8 10, i8* %20, align 1
  %21 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %22 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 12
  store i8 %25, i8* %26, align 4
  %27 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %5, align 8
  %28 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 13
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %34 = call i32 @usb_stor_set_xfer_buf(i8* %32, i32 18, %struct.scsi_cmnd* %33)
  %35 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %35
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
