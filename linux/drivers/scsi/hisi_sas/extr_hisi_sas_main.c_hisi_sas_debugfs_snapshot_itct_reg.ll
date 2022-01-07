; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_itct_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_snapshot_itct_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.hisi_sas_itct*, %struct.TYPE_2__*, i8*, i8* }
%struct.hisi_sas_itct = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.hisi_hba*, i32, i8*)* }

@HISI_SAS_ITCT_CACHE = common dso_local global i32 0, align 4
@HISI_SAS_MAX_ITCT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_snapshot_itct_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_snapshot_itct_reg(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_itct*, align 8
  %6 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hisi_hba*, i32, i8*)*, i32 (%struct.hisi_hba*, i32, i8*)** %16, align 8
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %19 = load i32, i32* @HISI_SAS_ITCT_CACHE, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 %17(%struct.hisi_hba* %18, i32 %19, i8* %20)
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 0
  %24 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %23, align 8
  store %struct.hisi_sas_itct* %24, %struct.hisi_sas_itct** %5, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %35, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HISI_SAS_MAX_ITCT_ENTRIES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %5, align 8
  %32 = call i32 @memcpy(i8* %30, %struct.hisi_sas_itct* %31, i32 4)
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr i8, i8* %33, i64 4
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %5, align 8
  %39 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %38, i32 1
  store %struct.hisi_sas_itct* %39, %struct.hisi_sas_itct** %5, align 8
  br label %25

40:                                               ; preds = %25
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.hisi_sas_itct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
