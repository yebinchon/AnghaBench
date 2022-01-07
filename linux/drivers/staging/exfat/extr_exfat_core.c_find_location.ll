; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_find_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64 }
%struct.fs_info_t = type { i32, i64 }
%struct.bd_info_t = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@DENTRY_SIZE_BITS = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_location(%struct.super_block* %0, %struct.chain_t* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.chain_t*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fs_info_t*, align 8
  %16 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.chain_t* %1, %struct.chain_t** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.fs_info_t* %19, %struct.fs_info_t** %15, align 8
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.bd_info_t* %22, %struct.bd_info_t** %16, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @DENTRY_SIZE_BITS, align 8
  %25 = shl i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %27 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @CLUSTER_32(i32 0)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %5
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %34 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %32, %35
  %37 = load i64*, i64** %11, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %40 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = ashr i64 %38, %41
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  %44 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %45 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %46
  store i64 %49, i64* %47, align 8
  br label %85

50:                                               ; preds = %5
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = load %struct.chain_t*, %struct.chain_t** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @_walk_fat_chain(%struct.super_block* %51, %struct.chain_t* %52, i64 %53, i32* %14)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @FFS_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %6, align 8
  br label %87

60:                                               ; preds = %50
  %61 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %62 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %12, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %70 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = and i64 %68, %71
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %76 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = ashr i64 %74, %77
  %79 = load i64*, i64** %10, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @START_SECTOR(i32 %80)
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %60, %31
  %86 = load i64, i64* @FFS_SUCCESS, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %85, %58
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @_walk_fat_chain(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i64 @START_SECTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
