; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_free_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_free_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i64 }
%struct.fs_info_t = type { i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_free_cluster(%struct.super_block* %0, %struct.chain_t* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.chain_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fs_info_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.chain_t* %1, %struct.chain_t** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.fs_info_t* %15, %struct.fs_info_t** %10, align 8
  %16 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %17 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @CLUSTER_32(i32 0)
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %23 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @CLUSTER_32(i32 -1)
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %3
  br label %102

28:                                               ; preds = %21
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = call i32 @__set_sb_dirty(%struct.super_block* %29)
  %31 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %32 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %35 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %102

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %86, %39
  %41 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %42 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %90

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @START_SECTOR(i64 %50)
  store i64 %51, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %65, %49
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %55 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 @buf_release(%struct.super_block* %59, i64 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %52

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %9, align 8
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @FAT_read(%struct.super_block* %71, i64 %72, i64* %8)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %90

76:                                               ; preds = %69
  %77 = load %struct.super_block*, %struct.super_block** %4, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @CLUSTER_32(i32 0)
  %80 = call i64 @FAT_write(%struct.super_block* %77, i64 %78, i64 %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %90

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @CLUSTER_32(i32 -1)
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %40, label %90

90:                                               ; preds = %86, %82, %75, %45
  %91 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %92 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @UINT_MAX, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %99 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %27, %38, %96, %90
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i32 @__set_sb_dirty(%struct.super_block*) #1

declare dso_local i64 @START_SECTOR(i64) #1

declare dso_local i32 @buf_release(%struct.super_block*, i64) #1

declare dso_local i32 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i64 @FAT_write(%struct.super_block*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
