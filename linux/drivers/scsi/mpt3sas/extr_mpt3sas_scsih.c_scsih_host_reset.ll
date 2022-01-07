; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c_scsih_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"attempting host reset! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Blocking the host reset\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@FORCE_BIG_HAMMER = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"host reset: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsih_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsih_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %10)
  store %struct.MPT3SAS_ADAPTER* %11, %struct.MPT3SAS_ADAPTER** %3, align 8
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = call i32 @scsi_print_command(%struct.scsi_cmnd* %15)
  %17 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21, %1
  %27 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %28 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @FAILED, align 4
  store i32 %29, i32* %4, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %32 = load i32, i32* @FORCE_BIG_HAMMER, align 4
  %33 = call i32 @mpt3sas_base_hard_reset_handler(%struct.MPT3SAS_ADAPTER* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @FAILED, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @SUCCESS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = call i32 (%struct.MPT3SAS_ADAPTER*, i8*, ...) @ioc_info(%struct.MPT3SAS_ADAPTER* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %48, %struct.scsi_cmnd* %49)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, ...) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @mpt3sas_base_hard_reset_handler(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
