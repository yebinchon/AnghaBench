; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_init_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_init_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.uni_name_t = type { i32* }
%struct.dos_name_t = type { i32, i32 }
%struct.dos_dentry_t = type { i64, i32 }
%struct.ext_dentry_t = type { i32 }

@FFS_MEDIAERR = common dso_local global i64 0, align 8
@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, %struct.chain_t*, i64, i64, %struct.uni_name_t*, %struct.dos_name_t*)* @fat_init_ext_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fat_init_ext_entry(%struct.super_block* %0, %struct.chain_t* %1, i64 %2, i64 %3, %struct.uni_name_t* %4, %struct.dos_name_t* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.uni_name_t*, align 8
  %13 = alloca %struct.dos_name_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dos_dentry_t*, align 8
  %19 = alloca %struct.ext_dentry_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.uni_name_t* %4, %struct.uni_name_t** %12, align 8
  store %struct.dos_name_t* %5, %struct.dos_name_t** %13, align 8
  %20 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %21 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @get_entry_in_dir(%struct.super_block* %23, %struct.chain_t* %24, i64 %25, i32* %15)
  %27 = inttoptr i64 %26 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %27, %struct.dos_dentry_t** %18, align 8
  %28 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %18, align 8
  %29 = icmp ne %struct.dos_dentry_t* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %31, i64* %7, align 8
  br label %116

32:                                               ; preds = %6
  %33 = load %struct.dos_name_t*, %struct.dos_name_t** %13, align 8
  %34 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %18, align 8
  %37 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %18, align 8
  %39 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dos_name_t*, %struct.dos_name_t** %13, align 8
  %42 = getelementptr inbounds %struct.dos_name_t, %struct.dos_name_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %45 = call i32 @memcpy(i64 %40, i32 %43, i32 %44)
  %46 = load %struct.super_block*, %struct.super_block** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @buf_modify(%struct.super_block* %46, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %11, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %114

52:                                               ; preds = %32
  %53 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %18, align 8
  %54 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %58 = call i32 @calc_checksum_1byte(i8* %56, i32 %57, i32 0)
  store i32 %58, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %59

59:                                               ; preds = %88, %52
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.super_block*, %struct.super_block** %8, align 8
  %66 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %67, %69
  %71 = call i64 @get_entry_in_dir(%struct.super_block* %65, %struct.chain_t* %66, i64 %70, i32* %15)
  %72 = inttoptr i64 %71 to %struct.ext_dentry_t*
  store %struct.ext_dentry_t* %72, %struct.ext_dentry_t** %19, align 8
  %73 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %19, align 8
  %74 = icmp ne %struct.ext_dentry_t* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  %76 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %76, i64* %7, align 8
  br label %116

77:                                               ; preds = %64
  %78 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %19, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @init_ext_entry(%struct.ext_dentry_t* %78, i32 %79, i32 %80, i32* %81)
  %83 = load %struct.super_block*, %struct.super_block** %8, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @buf_modify(%struct.super_block* %83, i32 %84)
  %86 = load i32*, i32** %17, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  store i32* %87, i32** %17, align 8
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %59

91:                                               ; preds = %59
  %92 = load %struct.super_block*, %struct.super_block** %8, align 8
  %93 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = call i64 @get_entry_in_dir(%struct.super_block* %92, %struct.chain_t* %93, i64 %97, i32* %15)
  %99 = inttoptr i64 %98 to %struct.ext_dentry_t*
  store %struct.ext_dentry_t* %99, %struct.ext_dentry_t** %19, align 8
  %100 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %19, align 8
  %101 = icmp ne %struct.ext_dentry_t* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  %103 = load i64, i64* @FFS_MEDIAERR, align 8
  store i64 %103, i64* %7, align 8
  br label %116

104:                                              ; preds = %91
  %105 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %19, align 8
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 64
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @init_ext_entry(%struct.ext_dentry_t* %105, i32 %107, i32 %108, i32* %109)
  %111 = load %struct.super_block*, %struct.super_block** %8, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @buf_modify(%struct.super_block* %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %32
  %115 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %114, %102, %75, %30
  %117 = load i64, i64* %7, align 8
  ret i64 %117
}

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i32 @calc_checksum_1byte(i8*, i32, i32) #1

declare dso_local i32 @init_ext_entry(%struct.ext_dentry_t*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
