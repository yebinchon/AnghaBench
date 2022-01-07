; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32, i32 }

@SCSI_DH_DEV_UNSUPP = common dso_local global i32 0, align 4
@TPGS_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_dh_data*)* @alua_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_initialize(%struct.scsi_device* %0, %struct.alua_dh_data* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.alua_dh_data* %1, %struct.alua_dh_data** %4, align 8
  %7 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %9 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = call i32 @alua_check_tpgs(%struct.scsi_device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TPGS_MODE_NONE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @alua_check_vpd(%struct.scsi_device* %17, %struct.alua_dh_data* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %24 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %26 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @alua_check_tpgs(%struct.scsi_device*) #1

declare dso_local i32 @alua_check_vpd(%struct.scsi_device*, %struct.alua_dh_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
