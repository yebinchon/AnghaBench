; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fault_inject.c_nvme_fault_inject_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fault_inject.c_nvme_fault_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fault_attr = type { i32 }
%struct.nvme_fault_inject = type { i32, i32, %struct.dentry*, %struct.fault_attr }
%struct.dentry = type { i32 }

@fail_request = common dso_local global i64 0, align 8
@fail_default_attr = common dso_local global %struct.fault_attr zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: failed to create debugfs directory\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fault_inject\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: failed to create debugfs attr\0A\00", align 1
@NVME_SC_INVALID_OPCODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dont_retry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_fault_inject_init(%struct.nvme_fault_inject* %0, i8* %1) #0 {
  %3 = alloca %struct.nvme_fault_inject*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.fault_attr*, align 8
  store %struct.nvme_fault_inject* %0, %struct.nvme_fault_inject** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %8, i32 0, i32 3
  store %struct.fault_attr* %9, %struct.fault_attr** %7, align 8
  %10 = load i64, i64* @fail_request, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* @fail_request, align 8
  %14 = call i32 @setup_fault_attr(%struct.fault_attr* @fail_default_attr, i64 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call %struct.dentry* @debugfs_create_dir(i8* %16, i32* null)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %54

23:                                               ; preds = %15
  %24 = load %struct.fault_attr*, %struct.fault_attr** %7, align 8
  %25 = bitcast %struct.fault_attr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.fault_attr* @fail_default_attr to i8*), i64 4, i1 false)
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = load %struct.fault_attr*, %struct.fault_attr** %7, align 8
  %28 = call %struct.dentry* @fault_create_debugfs_attr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %26, %struct.fault_attr* %27)
  store %struct.dentry* %28, %struct.dentry** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call i64 @IS_ERR(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = call i32 @debugfs_remove_recursive(%struct.dentry* %35)
  br label %54

37:                                               ; preds = %23
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %39, i32 0, i32 2
  store %struct.dentry* %38, %struct.dentry** %40, align 8
  %41 = load i32, i32* @NVME_SC_INVALID_OPCODE, align 4
  %42 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %47, i32 0, i32 1
  %49 = call i32 @debugfs_create_x16(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %46, i32* %48)
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = load %struct.nvme_fault_inject*, %struct.nvme_fault_inject** %3, align 8
  %52 = getelementptr inbounds %struct.nvme_fault_inject, %struct.nvme_fault_inject* %51, i32 0, i32 0
  %53 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %50, i32* %52)
  br label %54

54:                                               ; preds = %37, %32, %20
  ret void
}

declare dso_local i32 @setup_fault_attr(%struct.fault_attr*, i64) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.dentry* @fault_create_debugfs_attr(i8*, %struct.dentry*, %struct.fault_attr*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @debugfs_create_x16(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
