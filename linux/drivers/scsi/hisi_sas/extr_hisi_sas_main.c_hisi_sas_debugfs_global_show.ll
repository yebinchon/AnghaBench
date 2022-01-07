; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_global_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_global_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hisi_hba* }
%struct.hisi_hba = type { i32*, %struct.hisi_sas_hw* }
%struct.hisi_sas_hw = type { i8** }

@DEBUGFS_GLOBAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hisi_sas_debugfs_global_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_debugfs_global_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.hisi_sas_hw*, align 8
  %7 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %9, align 8
  store %struct.hisi_hba* %10, %struct.hisi_hba** %5, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 1
  %13 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %12, align 8
  store %struct.hisi_sas_hw* %13, %struct.hisi_sas_hw** %6, align 8
  %14 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %6, align 8
  %15 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i64, i64* @DEBUGFS_GLOBAL, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %21 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DEBUGFS_GLOBAL, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @hisi_sas_debugfs_print_reg(i32 %25, i8* %26, %struct.seq_file* %27)
  ret i32 0
}

declare dso_local i32 @hisi_sas_debugfs_print_reg(i32, i8*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
