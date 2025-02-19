; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_scan_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_scan_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64 }
%struct.ipr_ioa_cfg = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i64)* @ipr_scan_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_scan_finished(%struct.Scsi_Host* %0, i64 %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %11, %struct.ipr_ioa_cfg** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %2
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @HZ, align 8
  %34 = udiv i64 %32, %33
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
