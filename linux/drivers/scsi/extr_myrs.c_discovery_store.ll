; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_discovery_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_discovery_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.myrs_hba = type { i32, i32, i32, i64, i32, %struct.myrs_cmdblk }
%struct.myrs_cmdblk = type { i8, %union.myrs_cmd_mbox }
%union.myrs_cmd_mbox = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MYRS_CMD_OP_IOCTL = common dso_local global i32 0, align 4
@MYRS_DCMD_TAG = common dso_local global i32 0, align 4
@MYRS_IOCTL_START_DISCOVERY = common dso_local global i32 0, align 4
@MYRS_STATUS_SUCCESS = common dso_local global i8 0, align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Discovery Not Initiated, status %02X\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Discovery Initiated\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Discovery Completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @discovery_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @discovery_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.myrs_hba*, align 8
  %12 = alloca %struct.myrs_cmdblk*, align 8
  %13 = alloca %union.myrs_cmd_mbox*, align 8
  %14 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = call %struct.myrs_hba* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.myrs_hba* %18, %struct.myrs_hba** %11, align 8
  %19 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %20 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %19, i32 0, i32 4
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %23 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %22, i32 0, i32 5
  store %struct.myrs_cmdblk* %23, %struct.myrs_cmdblk** %12, align 8
  %24 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %25 = call i32 @myrs_reset_cmd(%struct.myrs_cmdblk* %24)
  %26 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %27 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %26, i32 0, i32 1
  store %union.myrs_cmd_mbox* %27, %union.myrs_cmd_mbox** %13, align 8
  %28 = load i32, i32* @MYRS_CMD_OP_IOCTL, align 4
  %29 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %30 = bitcast %union.myrs_cmd_mbox* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @MYRS_DCMD_TAG, align 4
  %33 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %34 = bitcast %union.myrs_cmd_mbox* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %37 = bitcast %union.myrs_cmd_mbox* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %41 = bitcast %union.myrs_cmd_mbox* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @MYRS_IOCTL_START_DISCOVERY, align 4
  %45 = load %union.myrs_cmd_mbox*, %union.myrs_cmd_mbox** %13, align 8
  %46 = bitcast %union.myrs_cmd_mbox* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %49 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %50 = call i32 @myrs_exec_cmd(%struct.myrs_hba* %48, %struct.myrs_cmdblk* %49)
  %51 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %12, align 8
  %52 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 4
  store i8 %53, i8* %14, align 1
  %54 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %55 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %54, i32 0, i32 4
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i8, i8* %14, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @MYRS_STATUS_SUCCESS, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %4
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %65 = load i8, i8* %14, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %63, %struct.Scsi_Host* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %91

70:                                               ; preds = %4
  %71 = load i32, i32* @KERN_INFO, align 4
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %73 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %71, %struct.Scsi_Host* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %75 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %77 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %79 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %82 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %81, i32 0, i32 1
  %83 = call i32 @queue_delayed_work(i32 %80, i32* %82, i32 1)
  %84 = load %struct.myrs_hba*, %struct.myrs_hba** %11, align 8
  %85 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %84, i32 0, i32 1
  %86 = call i32 @flush_delayed_work(i32* %85)
  %87 = load i32, i32* @KERN_INFO, align 4
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %89 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %87, %struct.Scsi_Host* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %70, %62
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.myrs_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @myrs_reset_cmd(%struct.myrs_cmdblk*) #1

declare dso_local i32 @myrs_exec_cmd(%struct.myrs_hba*, %struct.myrs_cmdblk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
