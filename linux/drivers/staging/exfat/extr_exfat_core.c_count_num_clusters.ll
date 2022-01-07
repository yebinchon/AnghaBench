; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_count_num_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_count_num_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64, i32, i32 }
%struct.fs_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_num_clusters(%struct.super_block* %0, %struct.chain_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.chain_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.chain_t* %1, %struct.chain_t** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fs_info_t* %12, %struct.fs_info_t** %9, align 8
  %13 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %14 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @CLUSTER_32(i32 0)
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %20 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @CLUSTER_32(i32 -1)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %27 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %30 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %35 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  br label %62

37:                                               ; preds = %25
  store i32 2, i32* %6, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %41 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @FAT_read(%struct.super_block* %47, i64 %48, i64* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %64

52:                                               ; preds = %44
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @CLUSTER_32(i32 -1)
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %61

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %38

61:                                               ; preds = %56, %38
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %51, %24
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
