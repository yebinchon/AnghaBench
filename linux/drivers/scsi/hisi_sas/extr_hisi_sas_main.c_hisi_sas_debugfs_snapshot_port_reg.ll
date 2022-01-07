; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_port_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_port_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hisi_sas_debugfs_reg* }
%struct.hisi_sas_debugfs_reg = type { i32, i64 (%struct.hisi_hba.0*, i32, i64)*, i64 }
%struct.hisi_hba.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_snapshot_port_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_snapshot_port_reg(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.hisi_sas_debugfs_reg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %8 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %9 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %11, align 8
  store %struct.hisi_sas_debugfs_reg* %12, %struct.hisi_sas_debugfs_reg** %3, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %7, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %51, %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %3, align 8
  %31 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %3, align 8
  %36 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 4, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %6, align 8
  %42 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %3, align 8
  %43 = getelementptr inbounds %struct.hisi_sas_debugfs_reg, %struct.hisi_sas_debugfs_reg* %42, i32 0, i32 1
  %44 = load i64 (%struct.hisi_hba.0*, i32, i64)*, i64 (%struct.hisi_hba.0*, i32, i64)** %43, align 8
  %45 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %46 = bitcast %struct.hisi_hba* %45 to %struct.hisi_hba.0*
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* %6, align 8
  %49 = call i64 %44(%struct.hisi_hba.0* %46, i32 %47, i64 %48)
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %7, align 8
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %13

60:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
