; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_bist_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_bist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"bist\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"link_rate\00", align 1
@hisi_sas_debugfs_bist_linkrate_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"code_mode\00", align 1
@hisi_sas_debugfs_bist_code_mode_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"phy_id\00", align 1
@hisi_sas_debugfs_bist_phy_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"cnt\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"loopback_mode\00", align 1
@hisi_sas_debugfs_bist_mode_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@hisi_sas_debugfs_bist_enable_ops = common dso_local global i32 0, align 4
@SAS_LINK_RATE_1_5_GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_bist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_bist_init(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %3 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %4 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %13 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %11, %struct.hisi_hba* %12, i32* @hisi_sas_debugfs_bist_linkrate_ops)
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 384, i32 %16, %struct.hisi_hba* %17, i32* @hisi_sas_debugfs_bist_code_mode_ops)
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %23 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %21, %struct.hisi_hba* %22, i32* @hisi_sas_debugfs_bist_phy_ops)
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %28 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %27, i32 0, i32 2
  %29 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 384, i32 %26, i32* %28)
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %34 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 384, i32 %32, %struct.hisi_hba* %33, i32* @hisi_sas_debugfs_bist_mode_ops)
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %36 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %39 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 384, i32 %37, %struct.hisi_hba* %38, i32* @hisi_sas_debugfs_bist_enable_ops)
  %40 = load i32, i32* @SAS_LINK_RATE_1_5_GBPS, align 4
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hisi_hba*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
