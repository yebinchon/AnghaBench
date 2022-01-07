; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_alloc_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_alloc_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i64 }
%struct.fs_info_t = type { i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_alloc_cluster(%struct.super_block* %0, i32 %1, %struct.chain_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.chain_t* %2, %struct.chain_t** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = call i64 @CLUSTER_32(i32 -1)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.fs_info_t* %17, %struct.fs_info_t** %13, align 8
  %18 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %19 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @CLUSTER_32(i32 -1)
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %26 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  br label %36

28:                                               ; preds = %3
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i64 2, i64* %10, align 8
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35, %24
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call i32 @__set_sb_dirty(%struct.super_block* %37)
  %39 = call i64 @CLUSTER_32(i32 -1)
  %40 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %41 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 2, i32* %8, align 4
  br label %42

42:                                               ; preds = %119, %36
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %46 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %122

49:                                               ; preds = %42
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @FAT_read(%struct.super_block* %50, i64 %51, i64* %12)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %140

55:                                               ; preds = %49
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @CLUSTER_32(i32 0)
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @CLUSTER_32(i32 -1)
  %63 = call i64 @FAT_write(%struct.super_block* %60, i64 %61, i64 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %140

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %70 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @CLUSTER_32(i32 -1)
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %77 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %86

78:                                               ; preds = %66
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @FAT_write(%struct.super_block* %79, i64 %80, i64 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %140

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %11, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %94 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %96 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UINT_MAX, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %104 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %100, %91
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %140

109:                                              ; preds = %86
  br label %110

110:                                              ; preds = %109, %55
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %10, align 8
  %113 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %114 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i64 2, i64* %10, align 8
  br label %118

118:                                              ; preds = %117, %110
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %42

122:                                              ; preds = %42
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %125 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %127 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @UINT_MAX, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %135 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %131, %122
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %107, %84, %65, %54
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i64 @CLUSTER_32(i32) #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @__set_sb_dirty(%struct.super_block*) #1

declare dso_local i64 @FAT_read(%struct.super_block*, i64, i64*) #1

declare dso_local i64 @FAT_write(%struct.super_block*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
