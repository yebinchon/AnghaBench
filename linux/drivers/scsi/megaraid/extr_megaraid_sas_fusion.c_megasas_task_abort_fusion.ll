; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_task_abort_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_task_abort_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_6__*, %struct.MR_PRIV_DEVICE* }
%struct.TYPE_6__ = type { i64 }
%struct.MR_PRIV_DEVICE = type { i32, i32 }
%struct.megasas_instance = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MEGASAS_HBA_OPERATIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Controller is not OPERATIONAL,SCSI host:%d\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"device been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Command for which abort is issued is not found in outstanding commands\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"task abort issued for invalid devhandle\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"attempting task abort! scmd(0x%p) tm_dev_handle 0x%x\0A\00", align 1
@MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"task abort %s!! scmd(0x%p)\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@megasas_dbg_lvl = common dso_local global i32 0, align 4
@TM_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_task_abort_fusion(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MR_PRIV_DEVICE*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %12, align 8
  store %struct.MR_PRIV_DEVICE* %13, %struct.MR_PRIV_DEVICE** %8, align 8
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
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %148

40:                                               ; preds = %1
  %41 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %8, align 8
  %42 = icmp ne %struct.MR_PRIV_DEVICE* %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %44, %struct.TYPE_9__* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %48)
  %50 = load i32, i32* @DID_NO_CONNECT, align 4
  %51 = shl i32 %50, 16
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @SUCCESS, align 4
  store i32 %54, i32* %7, align 4
  br label %136

55:                                               ; preds = %40
  %56 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %8, align 8
  %57 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %7, align 4
  br label %136

62:                                               ; preds = %55
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %67 = call i64 @megasas_fusion_smid_lookup(%struct.scsi_cmnd* %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @SUCCESS, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @KERN_NOTICE, align 4
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %72, %struct.scsi_cmnd* %73, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %136

78:                                               ; preds = %62
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = call i64 @megasas_get_tm_devhandle(%struct.TYPE_9__* %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @ULONG_MAX, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %78
  %87 = load i32, i32* @SUCCESS, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @KERN_INFO, align 4
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %88, %struct.TYPE_9__* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %94 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %136

96:                                               ; preds = %78
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 (i32, %struct.TYPE_9__*, i8*, ...) @sdev_printk(i32 %97, %struct.TYPE_9__* %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_cmnd* %101, i64 %102)
  %104 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %8, align 8
  %105 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK, align 4
  %120 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %8, align 8
  %121 = call i32 @megasas_issue_tm(%struct.megasas_instance* %106, i64 %107, i32 %112, i32 %117, i64 %118, i32 %119, %struct.MR_PRIV_DEVICE* %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.MR_PRIV_DEVICE*, %struct.MR_PRIV_DEVICE** %8, align 8
  %123 = getelementptr inbounds %struct.MR_PRIV_DEVICE, %struct.MR_PRIV_DEVICE* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %125 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* @KERN_INFO, align 4
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %135 = call i32 (i32, %struct.scsi_cmnd*, i8*, ...) @scmd_printk(i32 %127, %struct.scsi_cmnd* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %133, %struct.scsi_cmnd* %134)
  br label %136

136:                                              ; preds = %96, %86, %70, %60, %43
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %138 = call i32 @scsi_print_command(%struct.scsi_cmnd* %137)
  %139 = load i32, i32* @megasas_dbg_lvl, align 4
  %140 = load i32, i32* @TM_DEBUG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %145 = call i32 @megasas_dump_fusion_io(%struct.scsi_cmnd* %144)
  br label %146

146:                                              ; preds = %143, %136
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %27
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @megasas_fusion_smid_lookup(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @megasas_get_tm_devhandle(%struct.TYPE_9__*) #1

declare dso_local i32 @megasas_issue_tm(%struct.megasas_instance*, i64, i32, i32, i64, i32, %struct.MR_PRIV_DEVICE*) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @megasas_dump_fusion_io(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
