; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.device* }
%struct.device = type { i32 }

@hisi_sas_debugfs_dir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"trigger_dump\00", align 1
@hisi_sas_debugfs_trigger_dump_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to init debugfs!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_debugfs_init(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %4 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %4, i32 0, i32 1
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @dev_name(%struct.device* %7)
  %9 = load i32, i32* @hisi_sas_debugfs_dir, align 4
  %10 = call i32 @debugfs_create_dir(i32 %8, i32 %9)
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %14 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %17 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 384, i32 %15, %struct.hisi_hba* %16, i32* @hisi_sas_debugfs_trigger_dump_fops)
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %19 = call i32 @hisi_sas_debugfs_bist_init(%struct.hisi_hba* %18)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %21 = call i64 @hisi_sas_debugfs_alloc(%struct.hisi_hba* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @debugfs_remove_recursive(i32 %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hisi_hba*, i32*) #1

declare dso_local i32 @hisi_sas_debugfs_bist_init(%struct.hisi_hba*) #1

declare dso_local i64 @hisi_sas_debugfs_alloc(%struct.hisi_hba*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
