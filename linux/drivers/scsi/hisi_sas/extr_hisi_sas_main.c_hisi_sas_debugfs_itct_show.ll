; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_itct_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_itct_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.hisi_sas_itct* }
%struct.hisi_sas_itct = type { i32 }

@HISI_SAS_MAX_ITCT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hisi_sas_debugfs_itct_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_debugfs_itct_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.hisi_sas_itct*, align 8
  %8 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %10, align 8
  store %struct.hisi_hba* %11, %struct.hisi_hba** %6, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %13, align 8
  store %struct.hisi_sas_itct* %14, %struct.hisi_sas_itct** %7, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %26, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HISI_SAS_MAX_ITCT_ENTRIES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %7, align 8
  %21 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %20, i32 0, i32 0
  store i32* %21, i32** %8, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @hisi_sas_show_row_64(%struct.seq_file* %22, i32 %23, i32 4, i32* %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %7, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %29, i32 1
  store %struct.hisi_sas_itct* %30, %struct.hisi_sas_itct** %7, align 8
  br label %15

31:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @hisi_sas_show_row_64(%struct.seq_file*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
