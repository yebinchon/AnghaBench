; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_init_ctrl_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_init_ctrl_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@UNAVAILABLE = common dso_local global i32 0, align 4
@megasas_poll_wait_aen = common dso_local global i64 0, align 8
@MEGASAS_HBA_OPERATIONAL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_LSI_SAS0073SKINNY = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_LSI_SAS0071SKINNY = common dso_local global i64 0, align 8
@megasas_dbg_lvl = common dso_local global i64 0, align 8
@smp_affinity_enable = common dso_local global i64 0, align 8
@MFI_SERIES = common dso_local global i64 0, align 8
@megasas_fusion_ocr_wq = common dso_local global i32 0, align 4
@process_fw_state_change_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_init_ctrl_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_init_ctrl_params(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %3 = load i32, i32* @UNAVAILABLE, align 4
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 25
  store i32 %3, i32* %5, align 4
  store i64 0, i64* @megasas_poll_wait_aen, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 24
  %10 = load i32, i32* @MEGASAS_HBA_OPERATIONAL, align 4
  %11 = call i32 @atomic_set(i32* %9, i32 %10)
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 23
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 22
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 21
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 20
  %23 = call i32 @atomic64_set(i32* %22, i32 0)
  %24 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %25 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %24, i32 0, i32 19
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 18
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %31 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %30, i32 0, i32 17
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 16
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 15
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %40 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %39, i32 0, i32 14
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %43 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %42, i32 0, i32 13
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 12
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 11
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS0073SKINNY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %1
  %56 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %57 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %56, i32 0, i32 11
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCI_DEVICE_ID_LSI_SAS0071SKINNY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %1
  %64 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %65 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %55
  store i64 0, i64* @megasas_dbg_lvl, align 8
  %67 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %68 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %67, i32 0, i32 10
  store i64 0, i64* %68, align 8
  %69 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %70 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %74 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 8
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* @smp_affinity_enable, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %84 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %83, i32 0, i32 5
  store i32 0, i32* %84, align 4
  %85 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %86 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MFI_SERIES, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %66
  %91 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %92 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %91, i32 0, i32 7
  %93 = load i32, i32* @megasas_fusion_ocr_wq, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  br label %100

95:                                               ; preds = %66
  %96 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %97 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %96, i32 0, i32 7
  %98 = load i32, i32* @process_fw_state_change_wq, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
