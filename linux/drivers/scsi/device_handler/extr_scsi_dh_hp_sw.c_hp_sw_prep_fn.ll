; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_prep_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_hp_sw.c_hp_sw_prep_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.hp_sw_dh_data* }
%struct.hp_sw_dh_data = type { i64 }
%struct.request = type { i32 }

@HP_SW_PATH_ACTIVE = common dso_local global i64 0, align 8
@RQF_QUIET = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @hp_sw_prep_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sw_prep_fn(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.hp_sw_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %8, align 8
  store %struct.hp_sw_dh_data* %9, %struct.hp_sw_dh_data** %6, align 8
  %10 = load %struct.hp_sw_dh_data*, %struct.hp_sw_dh_data** %6, align 8
  %11 = getelementptr inbounds %struct.hp_sw_dh_data, %struct.hp_sw_dh_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HP_SW_PATH_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @RQF_QUIET, align 4
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
