; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_do_scsi_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_do_scsi_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.scsi_cmnd = type { i32 }

@__const.do_scsi_inquiry.data_ptr = private unnamed_addr constant [36 x i8] c"\00\00\02\00\1F\00\00\00USB2.0  CardReader      0100", align 16
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @do_scsi_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_scsi_inquiry(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca [36 x i8], align 16
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = bitcast [36 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([36 x i8], [36 x i8]* @__const.do_scsi_inquiry.data_ptr, i32 0, i32 0), i64 36, i1 false)
  %7 = getelementptr inbounds [36 x i8], [36 x i8]* %5, i64 0, i64 0
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = call i32 @usb_stor_set_xfer_buf(i8* %7, i32 36, %struct.scsi_cmnd* %8)
  %10 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
