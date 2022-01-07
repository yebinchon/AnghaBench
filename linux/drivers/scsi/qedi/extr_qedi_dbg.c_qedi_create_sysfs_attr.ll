; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_dbg.c_qedi_create_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_dbg.c_qedi_create_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sysfs_bin_attrs = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to create sysfs %s attr, err(%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedi_create_sysfs_attr(%struct.Scsi_Host* %0, %struct.sysfs_bin_attrs* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sysfs_bin_attrs*, align 8
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.sysfs_bin_attrs* %1, %struct.sysfs_bin_attrs** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %8 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %16 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sysfs_create_bin_file(i32* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %23 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %11
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %30 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %29, i32 1
  store %struct.sysfs_bin_attrs* %30, %struct.sysfs_bin_attrs** %4, align 8
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @sysfs_create_bin_file(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
