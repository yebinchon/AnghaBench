; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_tur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_tur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@ALUA_FAILOVER_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ALUA_FAILOVER_RETRIES = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i64 0, align 8
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @alua_tur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_tur(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_sense_hdr, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = load i32, i32* @ALUA_FAILOVER_TIMEOUT, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @ALUA_FAILOVER_RETRIES, align 4
  %11 = call i32 @scsi_test_unit_ready(%struct.scsi_device* %6, i32 %9, i32 %10, %struct.scsi_sense_hdr* %4)
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NOT_READY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %20, %16, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @scsi_test_unit_ready(%struct.scsi_device*, i32, i32, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
