; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_target_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_target_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__*, %struct.MR_PRIV_DEVICE* }
%struct.TYPE_6__ = type { i64 }
%struct.MR_PRIV_DEVICE = type { i32, i32 }
%struct.megasas_instance = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@MEGASAS_HBA_OPERATIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Controller is not OPERATIONAL,SCSI host:%d\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"device been deleted! scmd: (0x%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"target reset issued for invalid devhandle\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"attempting target reset! scmd(0x%p) tm_dev_handle: 0x%x\0A\00", align 1
@MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"target reset %s!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_reset_target_fusion(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.MR_PRIV_DEVICE*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %8 = load i32, i32* @FAILED, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %12, align 8
  store %struct.MR_PRIV_DEVICE* %13, %struct.MR_PRIV_DEVICE** %7, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.megasas_instance*
  store %struct.megasas_instance* %21, %struct.megasas_instance** %4, align 8
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 3
  %24 = call i64 @atomic_read(i32* %23)
  %25 = load i64, i64* @MEGASAS_HBA_OPERATIONAL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @FAILED, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %123

40:                                               ; preds = %1
  %41 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %42 = icmp ne %struct.MR_PRIV_DEVICE* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %44, %struct.TYPE_9__* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %48)
  %50 = load i32, i32* @DID_NO_CONNECT, align 4
  %51 = shl i32 %50, 16
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @SUCCESS, align 4
  store i32 %54, i32* %5, align 4
  br label %121

55:                                               ; preds = %40
  %56 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %57 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %5, align 4
  br label %121

62:                                               ; preds = %55
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @megasas_get_tm_devhandle(%struct.TYPE_9__* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @ULONG_MAX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %62
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @KERN_INFO, align 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %75, %struct.TYPE_9__* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %81 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %121

83:                                               ; preds = %62
  %84 = load i32, i32* @KERN_INFO, align 4
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %84, %struct.TYPE_9__* %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_cmnd* %88, i64 %89)
  %91 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %92 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, align 4
  %106 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %107 = call i32 @megasas_issue_tm(%struct.megasas_instance* %93, i64 %94, i32 %99, i32 %104, i32 0, i32 %105, %struct.MR_PRIV_DEVICE* %106)
  store i32 %107, i32* %5, align 4
  %108 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %7, align 8
  %109 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %111 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* @KERN_NOTICE, align 4
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %120 = call i32 @scmd_printk(i32 %113, %struct.scsi_cmnd* %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %83, %73, %60, %43
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %27
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @megasas_get_tm_devhandle(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @megasas_issue_tm(%struct.megasas_instance*, i64, i32, i32, i32, i32, %struct.MR_PRIV_DEVICE*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
