; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scan_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_scsi.c_csio_scan_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.csio_lnode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@csio_max_scan_tmo = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@csio_delta_scan_tmo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i64)* @csio_scan_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_scan_finished(%struct.Scsi_Host* %0, i64 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.csio_lnode* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.csio_lnode* %8, %struct.csio_lnode** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @spin_lock_irq(i32 %11)
  %13 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %14 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %19 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @csio_list_deleted(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %26 = load i32, i32* @jiffies, align 4
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @csio_max_scan_tmo, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @csio_delta_scan_tmo, align 4
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @csio_scan_done(%struct.csio_lnode* %25, i32 %26, i64 %27, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %24, %23
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_unlock_irq(i32 %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.csio_lnode* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @csio_list_deleted(i32*) #1

declare dso_local i32 @csio_scan_done(%struct.csio_lnode*, i32, i64, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
