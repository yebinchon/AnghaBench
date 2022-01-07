; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.mvs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sas_ha_struct = type { %struct.mvs_prv_info* }
%struct.mvs_prv_info = type { i16, i32, %struct.mvs_info** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvs_scan_start(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca %struct.sas_ha_struct*, align 8
  %8 = alloca %struct.mvs_prv_info*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %10 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %9)
  store %struct.sas_ha_struct* %10, %struct.sas_ha_struct** %7, align 8
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %12, align 8
  store %struct.mvs_prv_info* %13, %struct.mvs_prv_info** %8, align 8
  %14 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %15 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %14, i32 0, i32 0
  %16 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %15, align 8
  %17 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  store i16 %18, i16* %5, align 2
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %50, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %7, align 8
  %26 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %25, i32 0, i32 0
  %27 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %26, align 8
  %28 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %27, i32 0, i32 2
  %29 = load %struct.mvs_info**, %struct.mvs_info*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mvs_info*, %struct.mvs_info** %29, i64 %31
  %33 = load %struct.mvs_info*, %struct.mvs_info** %32, align 8
  store %struct.mvs_info* %33, %struct.mvs_info** %6, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %46, %24
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %37 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @mvs_bytes_dmaed(%struct.mvs_info* %43, i32 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %34

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load %struct.mvs_prv_info*, %struct.mvs_prv_info** %8, align 8
  %55 = getelementptr inbounds %struct.mvs_prv_info, %struct.mvs_prv_info* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  ret void
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @mvs_bytes_dmaed(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
