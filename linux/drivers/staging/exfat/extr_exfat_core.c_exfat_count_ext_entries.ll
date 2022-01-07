; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_count_ext_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_count_ext_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.file_dentry_t = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@TYPE_EXTEND = common dso_local global i64 0, align 8
@TYPE_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exfat_count_ext_entries(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, %struct.dentry_t* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.file_dentry_t*, align 8
  %14 = alloca %struct.dentry_t*, align 8
  %15 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dentry_t* %3, %struct.dentry_t** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.dentry_t*, %struct.dentry_t** %9, align 8
  %17 = bitcast %struct.dentry_t* %16 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %17, %struct.file_dentry_t** %13, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.fs_info_t* %20, %struct.fs_info_t** %15, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %58, %4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.file_dentry_t*, %struct.file_dentry_t** %13, align 8
  %26 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.super_block*, %struct.super_block** %6, align 8
  %31 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %30, %struct.chain_t* %31, i32 %32, i32* null)
  store %struct.dentry_t* %33, %struct.dentry_t** %14, align 8
  %34 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %35 = icmp ne %struct.dentry_t* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %65

37:                                               ; preds = %29
  %38 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %39 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %41, align 8
  %43 = load %struct.dentry_t*, %struct.dentry_t** %14, align 8
  %44 = call i64 %42(%struct.dentry_t* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @TYPE_EXTEND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @TYPE_STREAM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %37
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %55, %36
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
