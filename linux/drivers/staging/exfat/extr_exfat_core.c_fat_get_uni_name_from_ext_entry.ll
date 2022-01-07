; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_get_uni_name_from_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_get_uni_name_from_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.ext_dentry_t = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.dentry_t = type { i32 }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@TYPE_EXTEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_get_uni_name_from_ext_entry(%struct.super_block* %0, %struct.chain_t* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext_dentry_t*, align 8
  %11 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.fs_info_t* %14, %struct.fs_info_t** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %7, align 8
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %55, %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @get_entry_in_dir(%struct.super_block* %21, %struct.chain_t* %22, i64 %23, i32* null)
  %25 = inttoptr i64 %24 to %struct.ext_dentry_t*
  store %struct.ext_dentry_t* %25, %struct.ext_dentry_t** %10, align 8
  %26 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %10, align 8
  %27 = icmp ne %struct.ext_dentry_t* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %60

29:                                               ; preds = %20
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %11, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %33, align 8
  %35 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %10, align 8
  %36 = bitcast %struct.ext_dentry_t* %35 to %struct.dentry_t*
  %37 = call i64 %34(%struct.dentry_t* %36)
  %38 = load i64, i64* @TYPE_EXTEND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %29
  %41 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @extract_uni_name_from_ext_entry(%struct.ext_dentry_t* %41, i32* %42, i32 %43)
  %45 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %10, align 8
  %46 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 64
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %60

50:                                               ; preds = %40
  br label %52

51:                                               ; preds = %29
  br label %60

52:                                               ; preds = %50
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 13
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %17

60:                                               ; preds = %28, %49, %51, %17
  ret void
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i32 @extract_uni_name_from_ext_entry(%struct.ext_dentry_t*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
