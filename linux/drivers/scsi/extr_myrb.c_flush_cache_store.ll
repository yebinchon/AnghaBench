; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_flush_cache_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_flush_cache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.myrb_hba = type { i32 }

@MYRB_CMD_FLUSH = common dso_local global i32 0, align 4
@MYRB_STATUS_SUCCESS = common dso_local global i16 0, align 2
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cache Flush Completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cache Flush Failed, status %x\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @flush_cache_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flush_cache_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.myrb_hba*, align 8
  %12 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %10, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %16 = call %struct.myrb_hba* @shost_priv(%struct.Scsi_Host* %15)
  store %struct.myrb_hba* %16, %struct.myrb_hba** %11, align 8
  %17 = load %struct.myrb_hba*, %struct.myrb_hba** %11, align 8
  %18 = load i32, i32* @MYRB_CMD_FLUSH, align 4
  %19 = call zeroext i16 @myrb_exec_type3(%struct.myrb_hba* %17, i32 %18, i32 0)
  store i16 %19, i16* %12, align 2
  %20 = load i16, i16* %12, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @MYRB_STATUS_SUCCESS, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %28 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %26, %struct.Scsi_Host* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %5, align 8
  br label %38

30:                                               ; preds = %4
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %33 = load i16, i16* %12, align 2
  %34 = zext i16 %33 to i32
  %35 = call i32 (i32, %struct.Scsi_Host*, i8*, ...) @shost_printk(i32 %31, %struct.Scsi_Host* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @EIO, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.myrb_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local zeroext i16 @myrb_exec_type3(%struct.myrb_hba*, i32, i32) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
