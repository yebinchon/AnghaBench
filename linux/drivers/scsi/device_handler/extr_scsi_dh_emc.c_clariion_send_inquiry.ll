; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_send_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_emc.c_clariion_send_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.clariion_dh_data = type { i32 }

@SCSI_DH_IO = common dso_local global i32 0, align 4
@CLARIION_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.clariion_dh_data*)* @clariion_send_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clariion_send_inquiry(%struct.scsi_device* %0, %struct.clariion_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.clariion_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.clariion_dh_data* %1, %struct.clariion_dh_data** %4, align 8
  %6 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %9 = getelementptr inbounds %struct.clariion_dh_data, %struct.clariion_dh_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CLARIION_BUFFER_SIZE, align 4
  %12 = call i32 @scsi_get_vpd_page(%struct.scsi_device* %7, i32 192, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = load %struct.clariion_dh_data*, %struct.clariion_dh_data** %4, align 8
  %17 = call i32 @parse_sp_info_reply(%struct.scsi_device* %15, %struct.clariion_dh_data* %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @scsi_get_vpd_page(%struct.scsi_device*, i32, i32, i32) #1

declare dso_local i32 @parse_sp_info_reply(%struct.scsi_device*, %struct.clariion_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
