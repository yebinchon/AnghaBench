; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_dbg.c_qedi_remove_sysfs_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_dbg.c_qedi_remove_sysfs_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sysfs_bin_attrs = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_remove_sysfs_attr(%struct.Scsi_Host* %0, %struct.sysfs_bin_attrs* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sysfs_bin_attrs*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.sysfs_bin_attrs* %1, %struct.sysfs_bin_attrs** %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %7 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %15 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sysfs_remove_bin_file(i32* %13, i32 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load %struct.sysfs_bin_attrs*, %struct.sysfs_bin_attrs** %4, align 8
  %20 = getelementptr inbounds %struct.sysfs_bin_attrs, %struct.sysfs_bin_attrs* %19, i32 1
  store %struct.sysfs_bin_attrs* %20, %struct.sysfs_bin_attrs** %4, align 8
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
