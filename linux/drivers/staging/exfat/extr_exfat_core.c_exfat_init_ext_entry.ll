; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_init_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_init_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.uni_name_t = type { i32, i32, i32* }
%struct.dos_name_t = type { i32 }
%struct.file_dentry_t = type { i64 }
%struct.strm_dentry_t = type { i32, i32 }
%struct.name_dentry_t = type { i32 }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.chain_t*, i32, i32, %struct.uni_name_t*, %struct.dos_name_t*)* @exfat_init_ext_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_init_ext_entry(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32 %3, %struct.uni_name_t* %4, %struct.dos_name_t* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uni_name_t*, align 8
  %13 = alloca %struct.dos_name_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.file_dentry_t*, align 8
  %18 = alloca %struct.strm_dentry_t*, align 8
  %19 = alloca %struct.name_dentry_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.uni_name_t* %4, %struct.uni_name_t** %12, align 8
  store %struct.dos_name_t* %5, %struct.dos_name_t** %13, align 8
  %20 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %21 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %16, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @get_entry_in_dir(%struct.super_block* %23, %struct.chain_t* %24, i32 %25, i32* %15)
  %27 = inttoptr i64 %26 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %27, %struct.file_dentry_t** %17, align 8
  %28 = load %struct.file_dentry_t*, %struct.file_dentry_t** %17, align 8
  %29 = icmp ne %struct.file_dentry_t* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %31, i32* %7, align 4
  br label %101

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load %struct.file_dentry_t*, %struct.file_dentry_t** %17, align 8
  %37 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %8, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @buf_modify(%struct.super_block* %38, i32 %39)
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i64 @get_entry_in_dir(%struct.super_block* %41, %struct.chain_t* %42, i32 %44, i32* %15)
  %46 = inttoptr i64 %45 to %struct.strm_dentry_t*
  store %struct.strm_dentry_t* %46, %struct.strm_dentry_t** %18, align 8
  %47 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %18, align 8
  %48 = icmp ne %struct.strm_dentry_t* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %50, i32* %7, align 4
  br label %101

51:                                               ; preds = %32
  %52 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %53 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %18, align 8
  %56 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.strm_dentry_t*, %struct.strm_dentry_t** %18, align 8
  %58 = getelementptr inbounds %struct.strm_dentry_t, %struct.strm_dentry_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uni_name_t*, %struct.uni_name_t** %12, align 8
  %61 = getelementptr inbounds %struct.uni_name_t, %struct.uni_name_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @SET16_A(i32 %59, i32 %62)
  %64 = load %struct.super_block*, %struct.super_block** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @buf_modify(%struct.super_block* %64, i32 %65)
  store i32 2, i32* %14, align 4
  br label %67

67:                                               ; preds = %92, %51
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load %struct.super_block*, %struct.super_block** %8, align 8
  %73 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i64 @get_entry_in_dir(%struct.super_block* %72, %struct.chain_t* %73, i32 %76, i32* %15)
  %78 = inttoptr i64 %77 to %struct.name_dentry_t*
  store %struct.name_dentry_t* %78, %struct.name_dentry_t** %19, align 8
  %79 = load %struct.name_dentry_t*, %struct.name_dentry_t** %19, align 8
  %80 = icmp ne %struct.name_dentry_t* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %82, i32* %7, align 4
  br label %101

83:                                               ; preds = %71
  %84 = load %struct.name_dentry_t*, %struct.name_dentry_t** %19, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 @init_name_entry(%struct.name_dentry_t* %84, i32* %85)
  %87 = load %struct.super_block*, %struct.super_block** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @buf_modify(%struct.super_block* %87, i32 %88)
  %90 = load i32*, i32** %16, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 15
  store i32* %91, i32** %16, align 8
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %67

95:                                               ; preds = %67
  %96 = load %struct.super_block*, %struct.super_block** %8, align 8
  %97 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @update_dir_checksum(%struct.super_block* %96, %struct.chain_t* %97, i32 %98)
  %100 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %95, %81, %49, %30
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

declare dso_local i32 @SET16_A(i32, i32) #1

declare dso_local i32 @init_name_entry(%struct.name_dentry_t*, i32*) #1

declare dso_local i32 @update_dir_checksum(%struct.super_block*, %struct.chain_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
