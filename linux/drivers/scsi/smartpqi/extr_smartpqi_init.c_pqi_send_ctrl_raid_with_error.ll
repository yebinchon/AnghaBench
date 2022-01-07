; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_ctrl_raid_with_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_send_ctrl_raid_with_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_raid_error_info = type { i32 }

@RAID_CTLR_LUNID = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, i32, i8*, i64, %struct.pqi_raid_error_info*)* @pqi_send_ctrl_raid_with_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_send_ctrl_raid_with_error(%struct.pqi_ctrl_info* %0, i32 %1, i8* %2, i64 %3, %struct.pqi_raid_error_info* %4) #0 {
  %6 = alloca %struct.pqi_ctrl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pqi_raid_error_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.pqi_raid_error_info* %4, %struct.pqi_raid_error_info** %10, align 8
  %11 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RAID_CTLR_LUNID, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.pqi_raid_error_info*, %struct.pqi_raid_error_info** %10, align 8
  %17 = load i32, i32* @NO_TIMEOUT, align 4
  %18 = call i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info* %11, i32 %12, i32 %13, i8* %14, i64 %15, i32 0, %struct.pqi_raid_error_info* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @pqi_send_scsi_raid_request(%struct.pqi_ctrl_info*, i32, i32, i8*, i64, i32, %struct.pqi_raid_error_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
