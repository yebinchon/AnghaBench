; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_dlm_create_debug_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_dlm_create_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i8*, i8*, i8*, i8*, i8*, i8* }

@DLM_LOCKSPACE_LEN = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@dlm_root = common dso_local global i32 0, align 4
@format1_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s_locks\00", align 1
@format2_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s_all\00", align 1
@format3_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s_toss\00", align 1
@format4_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%s_waiters\00", align 1
@waiters_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_create_debug_file(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  %5 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %6 = add nsw i32 %5, 8
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @S_IFREG, align 4
  %14 = load i32, i32* @S_IRUGO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @dlm_root, align 4
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %18 = call i8* @debugfs_create_file(i8* %12, i32 %15, i32 %16, %struct.dlm_ls* %17, i32* @format1_fops)
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = trunc i64 %7 to i32
  %22 = call i32 @memset(i8* %9, i32 0, i32 %21)
  %23 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %24 = add nsw i32 %23, 8
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @snprintf(i8* %9, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @S_IFREG, align 4
  %30 = load i32, i32* @S_IRUGO, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @dlm_root, align 4
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %34 = call i8* @debugfs_create_file(i8* %9, i32 %31, i32 %32, %struct.dlm_ls* %33, i32* @format2_fops)
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %36 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = trunc i64 %7 to i32
  %38 = call i32 @memset(i8* %9, i32 0, i32 %37)
  %39 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %40 = add nsw i32 %39, 8
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %42 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %9, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @S_IFREG, align 4
  %46 = load i32, i32* @S_IRUGO, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @dlm_root, align 4
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %50 = call i8* @debugfs_create_file(i8* %9, i32 %47, i32 %48, %struct.dlm_ls* %49, i32* @format3_fops)
  %51 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %52 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = trunc i64 %7 to i32
  %54 = call i32 @memset(i8* %9, i32 0, i32 %53)
  %55 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %56 = add nsw i32 %55, 8
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %58 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %9, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @S_IFREG, align 4
  %62 = load i32, i32* @S_IRUGO, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @dlm_root, align 4
  %65 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %66 = call i8* @debugfs_create_file(i8* %9, i32 %63, i32 %64, %struct.dlm_ls* %65, i32* @format4_fops)
  %67 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %68 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = trunc i64 %7 to i32
  %70 = call i32 @memset(i8* %9, i32 0, i32 %69)
  %71 = load i32, i32* @DLM_LOCKSPACE_LEN, align 4
  %72 = add nsw i32 %71, 8
  %73 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %74 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @snprintf(i8* %9, i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @S_IFREG, align 4
  %78 = load i32, i32* @S_IRUGO, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @dlm_root, align 4
  %81 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %82 = call i8* @debugfs_create_file(i8* %9, i32 %79, i32 %80, %struct.dlm_ls* %81, i32* @waiters_fops)
  %83 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %84 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.dlm_ls*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
