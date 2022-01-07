; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_attr.c_qla4_8xxx_alloc_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_attr.c_qla4_8xxx_alloc_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_entry = type { i64, i32 }
%struct.scsi_qla_host = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bin_file_entries = common dso_local global %struct.sysfs_entry* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to create sysfs %s binary attribute (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4_8xxx_alloc_sysfs_attr(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sysfs_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 0
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.sysfs_entry*, %struct.sysfs_entry** @bin_file_entries, align 8
  store %struct.sysfs_entry* %9, %struct.sysfs_entry** %4, align 8
  br label %10

10:                                               ; preds = %34, %1
  %11 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %12 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %20 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sysfs_create_bin_file(i32* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %29 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %15
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.sysfs_entry*, %struct.sysfs_entry** %4, align 8
  %36 = getelementptr inbounds %struct.sysfs_entry, %struct.sysfs_entry* %35, i32 1
  store %struct.sysfs_entry* %36, %struct.sysfs_entry** %4, align 8
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @sysfs_create_bin_file(i32*, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
