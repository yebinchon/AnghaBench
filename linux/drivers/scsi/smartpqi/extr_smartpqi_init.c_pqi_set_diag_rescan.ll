; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_set_diag_rescan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_set_diag_rescan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.bmic_diag_options = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BMIC_SENSE_DIAG_OPTIONS = common dso_local global i32 0, align 4
@PQI_FETCH_PTRAID_DATA = common dso_local global i32 0, align 4
@BMIC_SET_DIAG_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_set_diag_rescan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_set_diag_rescan(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmic_diag_options*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bmic_diag_options* @kzalloc(i32 4, i32 %6)
  store %struct.bmic_diag_options* %7, %struct.bmic_diag_options** %5, align 8
  %8 = load %struct.bmic_diag_options*, %struct.bmic_diag_options** %5, align 8
  %9 = icmp ne %struct.bmic_diag_options* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %15 = load i32, i32* @BMIC_SENSE_DIAG_OPTIONS, align 4
  %16 = load %struct.bmic_diag_options*, %struct.bmic_diag_options** %5, align 8
  %17 = call i32 @pqi_send_ctrl_raid_request(%struct.pqi_ctrl_info* %14, i32 %15, %struct.bmic_diag_options* %16, i32 4)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %32

21:                                               ; preds = %13
  %22 = load i32, i32* @PQI_FETCH_PTRAID_DATA, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.bmic_diag_options*, %struct.bmic_diag_options** %5, align 8
  %25 = getelementptr inbounds %struct.bmic_diag_options, %struct.bmic_diag_options* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %29 = load i32, i32* @BMIC_SET_DIAG_OPTIONS, align 4
  %30 = load %struct.bmic_diag_options*, %struct.bmic_diag_options** %5, align 8
  %31 = call i32 @pqi_send_ctrl_raid_request(%struct.pqi_ctrl_info* %28, i32 %29, %struct.bmic_diag_options* %30, i32 4)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load %struct.bmic_diag_options*, %struct.bmic_diag_options** %5, align 8
  %34 = call i32 @kfree(%struct.bmic_diag_options* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.bmic_diag_options* @kzalloc(i32, i32) #1

declare dso_local i32 @pqi_send_ctrl_raid_request(%struct.pqi_ctrl_info*, i32, %struct.bmic_diag_options*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kfree(%struct.bmic_diag_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
