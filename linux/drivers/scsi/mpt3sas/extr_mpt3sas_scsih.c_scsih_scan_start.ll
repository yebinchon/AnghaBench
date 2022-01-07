; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }

@diag_buffer_enable = common dso_local global i32 0, align 4
@disable_discovery = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"port enable: FAILED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @scsih_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsih_scan_start(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %5)
  store %struct.MPT3SAS_ADAPTER* %6, %struct.MPT3SAS_ADAPTER** %3, align 8
  %7 = load i32, i32* @diag_buffer_enable, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @diag_buffer_enable, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %14 = load i32, i32* @diag_buffer_enable, align 4
  %15 = call i32 @mpt3sas_enable_diag_buffer(%struct.MPT3SAS_ADAPTER* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %9, %1
  %17 = load i64, i64* @disable_discovery, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %30

20:                                               ; preds = %16
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %22 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %24 = call i32 @mpt3sas_port_enable(%struct.MPT3SAS_ADAPTER* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %29 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %19, %27, %20
  ret void
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mpt3sas_enable_diag_buffer(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @mpt3sas_port_enable(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
