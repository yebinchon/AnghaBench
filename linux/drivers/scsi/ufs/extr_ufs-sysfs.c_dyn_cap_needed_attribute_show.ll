; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_dyn_cap_needed_attribute_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-sysfs.c_dyn_cap_needed_attribute_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32, i32 }
%struct.ufs_hba = type { i32 }

@UPIU_QUERY_OPCODE_READ_ATTR = common dso_local global i32 0, align 4
@QUERY_ATTR_IDN_DYN_CAP_NEEDED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dyn_cap_needed_attribute_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_cap_needed_attribute_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.ufs_hba*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %9, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ufs_hba* @shost_priv(i32 %16)
  store %struct.ufs_hba* %17, %struct.ufs_hba** %10, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ufshcd_scsi_to_upiu_lun(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %10, align 8
  %23 = load i32, i32* @UPIU_QUERY_OPCODE_READ_ATTR, align 4
  %24 = load i32, i32* @QUERY_ATTR_IDN_DYN_CAP_NEEDED, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @ufshcd_query_attr(%struct.ufs_hba* %22, i32 %23, i32 %24, i32 %25, i32 0, i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ufs_hba* @shost_priv(i32) #1

declare dso_local i32 @ufshcd_scsi_to_upiu_lun(i32) #1

declare dso_local i64 @ufshcd_query_attr(%struct.ufs_hba*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
