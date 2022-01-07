; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_clear_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_clear_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.fs_info_t = type { i64, i64, i64 }
%struct.bd_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clear_cluster(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.fs_info_t*, align 8
  %11 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %12, i64* %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.fs_info_t* %15, %struct.fs_info_t** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.bd_info_t* %18, %struct.bd_info_t** %11, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @CLUSTER_32(i32 0)
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %24 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %27 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @START_SECTOR(i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %10, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %29, %22
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %38
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @sector_read(%struct.super_block* %43, i64 %44, %struct.buffer_head** %9, i32 0)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @FFS_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %3, align 8
  br label %76

51:                                               ; preds = %42
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.bd_info_t*, %struct.bd_info_t** %11, align 8
  %57 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i8* %55, i32 0, i32 %58)
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = call i64 @sector_write(%struct.super_block* %60, i64 %61, %struct.buffer_head* %62, i32 0)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @FFS_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %72

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %38

72:                                               ; preds = %67, %38
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %3, align 8
  br label %76

76:                                               ; preds = %72, %49
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @START_SECTOR(i64) #1

declare dso_local i64 @sector_read(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sector_write(%struct.super_block*, i64, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
