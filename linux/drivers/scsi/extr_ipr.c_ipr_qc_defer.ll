; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_qc_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_qc_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ipr_cmnd*, %struct.ata_port* }
%struct.ipr_cmnd = type { i32 }
%struct.ata_port = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.ipr_hrr_queue* }
%struct.ipr_hrr_queue = type { i32, i32, i32 }

@ATA_DEFER_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ipr_qc_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_qc_defer(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ipr_sata_port*, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca %struct.ipr_cmnd*, align 8
  %8 = alloca %struct.ipr_hrr_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 1
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %4, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %14, align 8
  store %struct.ipr_sata_port* %15, %struct.ipr_sata_port** %5, align 8
  %16 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %17 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %16, i32 0, i32 0
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %17, align 8
  store %struct.ipr_ioa_cfg* %18, %struct.ipr_ioa_cfg** %6, align 8
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %20 = call i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 0
  %23 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %23, i64 %25
  store %struct.ipr_hrr_queue* %26, %struct.ipr_hrr_queue** %8, align 8
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 0
  store %struct.ipr_cmnd* null, %struct.ipr_cmnd** %28, align 8
  %29 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %30 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %33 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %39 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  store i32 0, i32* %2, align 4
  br label %72

41:                                               ; preds = %1
  %42 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %43 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %52 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* @ATA_DEFER_LINK, align 4
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %41
  %56 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %57 = call %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue* %56)
  store %struct.ipr_cmnd* %57, %struct.ipr_cmnd** %7, align 8
  %58 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %59 = icmp eq %struct.ipr_cmnd* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %62 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* @ATA_DEFER_LINK, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %55
  %66 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %67 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %68 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %67, i32 0, i32 0
  store %struct.ipr_cmnd* %66, %struct.ipr_cmnd** %68, align 8
  %69 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %8, align 8
  %70 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock(i32* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %60, %50, %37
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
