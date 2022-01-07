; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_boards = type { i8* }
%struct.Scsi_Host = type { i64 }
%struct.scsi_qla_host = type { i64, i32, i32, i32 }

@qla1280_info.qla1280_scsi_name_buffer = internal global [125 x i8] zeroinitializer, align 16
@ql1280_board_tbl = common dso_local global %struct.qla_boards* null, align 8
@.str = private unnamed_addr constant [93 x i8] c"QLogic %s PCI to SCSI Host Adapter\0A       Firmware version: %2d.%02d.%02d, Driver version %s\00", align 1
@QLA1280_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @qla1280_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla1280_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla_boards*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  store i8* getelementptr inbounds ([125 x i8], [125 x i8]* @qla1280_info.qla1280_scsi_name_buffer, i64 0, i64 0), i8** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.scsi_qla_host*
  store %struct.scsi_qla_host* %9, %struct.scsi_qla_host** %4, align 8
  %10 = load %struct.qla_boards*, %struct.qla_boards** @ql1280_board_tbl, align 8
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.qla_boards, %struct.qla_boards* %10, i64 %13
  store %struct.qla_boards* %14, %struct.qla_boards** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @memset(i8* %15, i32 0, i32 125)
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.qla_boards*, %struct.qla_boards** %5, align 8
  %19 = getelementptr inbounds %struct.qla_boards, %struct.qla_boards* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** @QLA1280_VERSION, align 8
  %32 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i32 %27, i32 %30, i8* %31)
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
