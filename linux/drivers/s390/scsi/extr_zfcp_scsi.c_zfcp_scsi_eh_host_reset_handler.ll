; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_eh_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.zfcp_scsi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@FSF_FEATURE_NPIV_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"schrh_p\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"schrh_1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"schrh_r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @zfcp_scsi_eh_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_eh_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.zfcp_scsi_dev*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32 %9)
  store %struct.zfcp_scsi_dev* %10, %struct.zfcp_scsi_dev** %3, align 8
  %11 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  store %struct.zfcp_adapter* %15, %struct.zfcp_adapter** %4, align 8
  %16 = load i32, i32* @SUCCESS, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FSF_FEATURE_NPIV_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %25 = call i32 @zfcp_erp_port_forced_reopen_all(%struct.zfcp_adapter* %24, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %30 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %29, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %32 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %31)
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %34 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %28
  %40 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @zfcp_dbf_scsi_eh(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.zfcp_adapter* %40, i32 -1, i32 %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32) #1

declare dso_local i32 @zfcp_erp_port_forced_reopen_all(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_dbf_scsi_eh(i8*, %struct.zfcp_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
