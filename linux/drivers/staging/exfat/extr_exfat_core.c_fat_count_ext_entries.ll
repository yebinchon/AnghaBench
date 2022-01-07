; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_count_ext_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_count_ext_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.dos_dentry_t = type { i64 }
%struct.ext_dentry_t = type { i64, i32 }
%struct.fs_info_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@TYPE_EXTEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fat_count_ext_entries(%struct.super_block* %0, %struct.chain_t* %1, i64 %2, %struct.dentry_t* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dentry_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dos_dentry_t*, align 8
  %13 = alloca %struct.ext_dentry_t*, align 8
  %14 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.dentry_t* %3, %struct.dentry_t** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct.dentry_t*, %struct.dentry_t** %9, align 8
  %16 = bitcast %struct.dentry_t* %15 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %16, %struct.dos_dentry_t** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.fs_info_t* %19, %struct.fs_info_t** %14, align 8
  %20 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %12, align 8
  %21 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %25 = call i64 @calc_checksum_1byte(i8* %23, i32 %24, i32 0)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %70, %4
  %29 = load i64, i64* %8, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %28
  %32 = load %struct.super_block*, %struct.super_block** %6, align 8
  %33 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @get_entry_in_dir(%struct.super_block* %32, %struct.chain_t* %33, i64 %34, i32* null)
  %36 = inttoptr i64 %35 to %struct.ext_dentry_t*
  store %struct.ext_dentry_t* %36, %struct.ext_dentry_t** %13, align 8
  %37 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %13, align 8
  %38 = icmp ne %struct.ext_dentry_t* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i64 -1, i64* %5, align 8
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %42 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %44, align 8
  %46 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %13, align 8
  %47 = bitcast %struct.ext_dentry_t* %46 to %struct.dentry_t*
  %48 = call i64 %45(%struct.dentry_t* %47)
  %49 = load i64, i64* @TYPE_EXTEND, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %13, align 8
  %53 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %10, align 8
  %60 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %13, align 8
  %61 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 64
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %10, align 8
  store i64 %65, i64* %5, align 8
  br label %75

66:                                               ; preds = %57
  br label %69

67:                                               ; preds = %51, %40
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %5, align 8
  br label %75

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %8, align 8
  br label %28

73:                                               ; preds = %28
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %67, %64, %39
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @calc_checksum_1byte(i8*, i32, i32) #1

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
