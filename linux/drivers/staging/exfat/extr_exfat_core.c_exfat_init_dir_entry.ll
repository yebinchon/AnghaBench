; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_init_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_init_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.file_dentry_t = type { i32 }
%struct.strm_dentry_t = type { i32 }

@TYPE_FILE = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @exfat_init_dir_entry(%struct.super_block* %0, %struct.chain_t* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.file_dentry_t*, align 8
  %17 = alloca %struct.strm_dentry_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @TYPE_FILE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 3
  store i32 %22, i32* %15, align 4
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @get_entry_in_dir(%struct.super_block* %23, %struct.chain_t* %24, i64 %25, i32* %14)
  %27 = inttoptr i64 %26 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %27, %struct.file_dentry_t** %16, align 8
  %28 = load %struct.file_dentry_t*, %struct.file_dentry_t** %16, align 8
  %29 = icmp ne %struct.file_dentry_t* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %31, i64* %7, align 8
  br label %59

32:                                               ; preds = %6
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i64 @get_entry_in_dir(%struct.super_block* %33, %struct.chain_t* %34, i64 %36, i32* %14)
  %38 = inttoptr i64 %37 to %struct.strm_dentry_t*
  store %struct.strm_dentry_t* %38, %struct.strm_dentry_t** %17, align 8
  %39 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %17, align 8
  %40 = icmp ne %struct.strm_dentry_t* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %42, i64* %7, align 8
  br label %59

43:                                               ; preds = %32
  %44 = load %struct.file_dentry_t*, %struct.file_dentry_t** %16, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @init_file_entry(%struct.file_dentry_t* %44, i32 %45)
  %47 = load %struct.super_block*, %struct.super_block** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @buf_modify(%struct.super_block* %47, i32 %48)
  %50 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %17, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @init_strm_entry(%struct.strm_dentry_t* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.super_block*, %struct.super_block** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @buf_modify(%struct.super_block* %55, i32 %56)
  %58 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %43, %41, %30
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i32 @init_file_entry(%struct.file_dentry_t*, i32) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i32 @init_strm_entry(%struct.strm_dentry_t*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
