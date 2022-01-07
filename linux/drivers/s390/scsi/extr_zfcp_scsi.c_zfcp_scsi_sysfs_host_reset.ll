; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_sysfs_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_sysfs_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64* }
%struct.zfcp_adapter = type { i32 }

@SCSI_ADAPTER_RESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"scshr_n\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"scshr_y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @zfcp_scsi_sysfs_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_sysfs_host_reset(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %13, %struct.zfcp_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SCSI_ADAPTER_RESET, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @zfcp_dbf_scsi_eh(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_adapter* %20, i32 -1, i32 %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %26 = call i32 @zfcp_erp_adapter_reset_sync(%struct.zfcp_adapter* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @zfcp_dbf_scsi_eh(i8*, %struct.zfcp_adapter*, i32, i32) #1

declare dso_local i32 @zfcp_erp_adapter_reset_sync(%struct.zfcp_adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
