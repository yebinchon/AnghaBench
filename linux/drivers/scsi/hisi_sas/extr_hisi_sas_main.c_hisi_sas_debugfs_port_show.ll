; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_port_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_port_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { %struct.TYPE_2__, %struct.hisi_hba* }
%struct.TYPE_2__ = type { i64 }
%struct.hisi_hba = type { i32**, %struct.hisi_sas_hw* }
%struct.hisi_sas_hw = type { %struct.hisi_sas_debugfs_reg* }
%struct.hisi_sas_debugfs_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @hisi_sas_debugfs_port_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_debugfs_port_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_sas_phy*, align 8
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.hisi_sas_hw*, align 8
  %8 = alloca %struct.hisi_sas_debugfs_reg*, align 8
  %9 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %11, align 8
  store %struct.hisi_sas_phy* %12, %struct.hisi_sas_phy** %5, align 8
  %13 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %14 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %13, i32 0, i32 1
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %14, align 8
  store %struct.hisi_hba* %15, %struct.hisi_hba** %6, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 1
  %18 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %17, align 8
  store %struct.hisi_sas_hw* %18, %struct.hisi_sas_hw** %7, align 8
  %19 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %7, align 8
  %20 = getelementptr inbounds %struct.hisi_sas_hw, %struct.hisi_sas_hw* %19, i32 0, i32 0
  %21 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %20, align 8
  store %struct.hisi_sas_debugfs_reg* %21, %struct.hisi_sas_debugfs_reg** %8, align 8
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %5, align 8
  %26 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %24, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.hisi_sas_debugfs_reg*, %struct.hisi_sas_debugfs_reg** %8, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = call i32 @hisi_sas_debugfs_print_reg(i32* %31, %struct.hisi_sas_debugfs_reg* %32, %struct.seq_file* %33)
  ret i32 0
}

declare dso_local i32 @hisi_sas_debugfs_print_reg(i32*, %struct.hisi_sas_debugfs_reg*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
