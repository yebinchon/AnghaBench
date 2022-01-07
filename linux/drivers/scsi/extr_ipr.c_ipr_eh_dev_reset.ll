; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_eh_dev_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_eh_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i64, %struct.TYPE_2__*, %struct.ipr_resource_entry* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ipr_ioa_cfg = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ipr_match_res = common dso_local global i32 0, align 4
@ipr_match_lun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ipr_eh_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_eh_dev_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %8, align 8
  %10 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %14, %struct.ipr_ioa_cfg** %5, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %16, align 8
  %18 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %17, i32 0, i32 2
  %19 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %18, align 8
  store %struct.ipr_resource_entry* %19, %struct.ipr_resource_entry** %6, align 8
  %20 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %21 = icmp ne %struct.ipr_resource_entry* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @FAILED, align 4
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %1
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 0
  %27 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %26, align 8
  %28 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @spin_lock_irq(i32 %31)
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %34 = call i32 @__ipr_eh_dev_reset(%struct.scsi_cmnd* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %36, align 8
  %38 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @spin_unlock_irq(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @SUCCESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %24
  %47 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %48 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %57 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %58 = load i32, i32* @ipr_match_res, align 4
  %59 = call i32 @ipr_wait_for_ops(%struct.ipr_ioa_cfg* %56, %struct.ipr_resource_entry* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %67

60:                                               ; preds = %50, %46
  %61 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %63, align 8
  %65 = load i32, i32* @ipr_match_lun, align 4
  %66 = call i32 @ipr_wait_for_ops(%struct.ipr_ioa_cfg* %61, %struct.ipr_resource_entry* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @__ipr_eh_dev_reset(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_wait_for_ops(%struct.ipr_ioa_cfg*, %struct.ipr_resource_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
