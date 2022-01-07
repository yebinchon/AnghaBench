; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_iost_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_iost_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_iost*, %struct.TYPE_2__*, i8*, i8* }
%struct.hisi_sas_iost = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32, i8*)* }

@HISI_SAS_MAX_COMMANDS = common dso_local global i32 0, align 4
@HISI_SAS_IOST_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_snapshot_iost_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_snapshot_iost_reg(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hisi_sas_iost*, align 8
  %7 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %8 = load i32, i32* @HISI_SAS_MAX_COMMANDS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 3
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hisi_hba*, i32, i8*)*, i32 (%struct.hisi_hba*, i32, i8*)** %18, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %21 = load i32, i32* @HISI_SAS_IOST_CACHE, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 %19(%struct.hisi_hba* %20, i32 %21, i8* %22)
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 0
  %26 = load %struct.hisi_sas_iost*, %struct.hisi_sas_iost** %25, align 8
  store %struct.hisi_sas_iost* %26, %struct.hisi_sas_iost** %6, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %37, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.hisi_sas_iost*, %struct.hisi_sas_iost** %6, align 8
  %34 = call i32 @memcpy(i8* %32, %struct.hisi_sas_iost* %33, i32 4)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr i8, i8* %35, i64 4
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hisi_sas_iost*, %struct.hisi_sas_iost** %6, align 8
  %41 = getelementptr inbounds %struct.hisi_sas_iost, %struct.hisi_sas_iost* %40, i32 1
  store %struct.hisi_sas_iost* %41, %struct.hisi_sas_iost** %6, align 8
  br label %27

42:                                               ; preds = %27
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.hisi_sas_iost*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
