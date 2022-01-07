; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_sp_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_ms_sp_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }
%struct.rtsx_chip = type { i32 }

@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@MS_FORMAT = common dso_local global i64 0, align 8
@GET_MS_INFORMATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @ms_sp_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_sp_cmnd(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %4, align 8
  %6 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MS_FORMAT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %17 = call i32 @ms_format_cmnd(%struct.scsi_cmnd* %15, %struct.rtsx_chip* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @ms_format_cmnd(%struct.scsi_cmnd*, %struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
