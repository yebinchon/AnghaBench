; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_ras_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_ras_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_hw*, i32** }
%struct.hisi_sas_hw = type { %struct.hisi_sas_debugfs_reg** }
%struct.hisi_sas_debugfs_reg = type { i32, i64, i32 (%struct.hisi_hba.0*, i64)* }
%struct.hisi_hba.0 = type opaque

@DEBUGFS_RAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_snapshot_ras_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_snapshot_ras_reg(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hisi_sas_hw*, align 8
  %5 = alloca %struct.hisi_sas_debugfs_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load i64, i64* @DEBUGFS_RAS, align 8
  %11 = getelementptr inbounds i32*, i32** %9, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %14, align 8
  store %struct.hisi_sas_hw* %15, %struct.hisi_sas_hw** %4, align 8
  %16 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %4, align 8
  %17 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %16, i32 0, i32 0
  %18 = load %struct.hisi_sas_debugfs_reg**, %struct.hisi_sas_debugfs_reg*** %17, align 8
  %19 = load i64, i64* @DEBUGFS_RAS, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %18, i64 %19
  %21 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %20, align 8
  store %struct.hisi_sas_debugfs_reg* %21, %struct.hisi_sas_debugfs_reg** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %5, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %29, i32 0, i32 2
  %31 = load i32 (%struct.hisi_hba.0*, i64)*, i32 (%struct.hisi_hba.0*, i64)** %30, align 8
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %33 = bitcast %struct.hisi_hba* %32 to %struct.hisi_hba.0*
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %5, align 8
  %38 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 %31(%struct.hisi_hba.0* %33, i64 %40)
  %42 = load i32*, i32** %3, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %3, align 8
  br label %22

48:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
