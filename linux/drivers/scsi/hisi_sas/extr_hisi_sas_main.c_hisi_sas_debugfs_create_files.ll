; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_create_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_debugfs_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32, %struct.hisi_hba*, %struct.hisi_hba*, %struct.hisi_hba*, %struct.dentry*, %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@hisi_sas_debugfs_global_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@hisi_sas_debugfs_port_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"cq\00", align 1
@hisi_sas_debugfs_cq_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"dq\00", align 1
@hisi_sas_debugfs_dq_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"iost\00", align 1
@hisi_sas_debugfs_iost_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"iost_cache\00", align 1
@hisi_sas_debugfs_iost_cache_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"itct\00", align 1
@hisi_sas_debugfs_itct_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"itct_cache\00", align 1
@hisi_sas_debugfs_itct_cache_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@hisi_sas_debugfs_axi_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"ras\00", align 1
@hisi_sas_debugfs_ras_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @hisi_sas_debugfs_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_debugfs_create_files(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 6
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 5
  store %struct.dentry* %13, %struct.dentry** %15, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %18 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %16, %struct.hisi_hba* %17, i32* @hisi_sas_debugfs_global_fops)
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @snprintf(i8* %28, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %34 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %33, i32 0, i32 4
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %35, i64 %37
  %39 = call i32 @debugfs_create_file(i8* %31, i32 256, %struct.dentry* %32, %struct.hisi_hba* %38, i32* @hisi_sas_debugfs_port_fops)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %65, %43
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %49 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @snprintf(i8* %53, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %59 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %58, i32 0, i32 3
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %60, i64 %62
  %64 = call i32 @debugfs_create_file(i8* %56, i32 256, %struct.dentry* %57, %struct.hisi_hba* %63, i32* @hisi_sas_debugfs_cq_fops)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %46

68:                                               ; preds = %46
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  %70 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.dentry* %69)
  store %struct.dentry* %70, %struct.dentry** %4, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %90, %68
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %74 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @snprintf(i8* %78, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %84 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %83, i32 0, i32 2
  %85 = load %struct.hisi_hba*, %struct.hisi_hba** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %85, i64 %87
  %89 = call i32 @debugfs_create_file(i8* %81, i32 256, %struct.dentry* %82, %struct.hisi_hba* %88, i32* @hisi_sas_debugfs_dq_fops)
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.dentry*, %struct.dentry** %3, align 8
  %95 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %96 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 256, %struct.dentry* %94, %struct.hisi_hba* %95, i32* @hisi_sas_debugfs_iost_fops)
  %97 = load %struct.dentry*, %struct.dentry** %3, align 8
  %98 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %99 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 256, %struct.dentry* %97, %struct.hisi_hba* %98, i32* @hisi_sas_debugfs_iost_cache_fops)
  %100 = load %struct.dentry*, %struct.dentry** %3, align 8
  %101 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %102 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 256, %struct.dentry* %100, %struct.hisi_hba* %101, i32* @hisi_sas_debugfs_itct_fops)
  %103 = load %struct.dentry*, %struct.dentry** %3, align 8
  %104 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %105 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 256, %struct.dentry* %103, %struct.hisi_hba* %104, i32* @hisi_sas_debugfs_itct_cache_fops)
  %106 = load %struct.dentry*, %struct.dentry** %3, align 8
  %107 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %108 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 256, %struct.dentry* %106, %struct.hisi_hba* %107, i32* @hisi_sas_debugfs_axi_fops)
  %109 = load %struct.dentry*, %struct.dentry** %3, align 8
  %110 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %111 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 256, %struct.dentry* %109, %struct.hisi_hba* %110, i32* @hisi_sas_debugfs_ras_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.hisi_hba*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
