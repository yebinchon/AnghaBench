; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i8* }

@bfad_im_info.bfa_buf = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [56 x i8] c"QLogic BR-series FC/FCOE Adapter, hwpath: %s driver: %s\00", align 1
@BFAD_DRIVER_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @bfad_im_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bfad_im_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.bfad_im_port_s*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %10, %struct.bfad_im_port_s** %3, align 8
  %11 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %11, i32 0, i32 0
  %13 = load %struct.bfad_s*, %struct.bfad_s** %12, align 8
  store %struct.bfad_s* %13, %struct.bfad_s** %4, align 8
  %14 = call i32 @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @bfad_im_info.bfa_buf, i64 0, i64 0), i32 0, i32 256)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @BFAD_DRIVER_VERSION, align 8
  %19 = call i32 @snprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @bfad_im_info.bfa_buf, i64 0, i64 0), i32 256, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @bfad_im_info.bfa_buf, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
