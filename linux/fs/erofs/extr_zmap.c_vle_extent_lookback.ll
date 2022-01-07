; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_extent_lookback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_vle_extent_lookback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i64, i32, i32*, i64, %struct.TYPE_2__*, %struct.erofs_map_blocks* }
%struct.TYPE_2__ = type { i32 }
%struct.erofs_map_blocks = type { i64, i32 }
%struct.erofs_inode = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"bogus lookback distance @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid lookback distance 0 @ nid %llu\00", align 1
@EROFS_MAP_ZIPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unknown type %u @ lcn %lu of nid %llu\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i32)* @vle_extent_lookback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vle_extent_lookback(%struct.z_erofs_maprecorder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_maprecorder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.erofs_inode*, align 8
  %7 = alloca %struct.erofs_map_blocks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %12 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.erofs_inode* @EROFS_I(%struct.TYPE_2__* %13)
  store %struct.erofs_inode* %14, %struct.erofs_inode** %6, align 8
  %15 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %16 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %15, i32 0, i32 5
  %17 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %16, align 8
  store %struct.erofs_map_blocks* %17, %struct.erofs_map_blocks** %7, align 8
  %18 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %19 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %22 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %30 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %35 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, i32, ...) @erofs_err(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @DBG_BUGON(i32 1)
  %39 = load i32, i32* @EFSCORRUPTED, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %121

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @vle_load_cluster_from_disk(%struct.z_erofs_maprecorder* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %121

53:                                               ; preds = %41
  %54 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %55 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %103 [
    i32 129, label %57
    i32 128, label %85
    i32 130, label %92
  ]

57:                                               ; preds = %53
  %58 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %59 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %57
  %65 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %66 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %71 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, ...) @erofs_err(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @DBG_BUGON(i32 1)
  %75 = load i32, i32* @EFSCORRUPTED, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %121

77:                                               ; preds = %57
  %78 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %79 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %80 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @vle_extent_lookback(%struct.z_erofs_maprecorder* %78, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %121

85:                                               ; preds = %53
  %86 = load i32, i32* @EROFS_MAP_ZIPPED, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %89 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %53, %85
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = shl i64 %93, %95
  %97 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %98 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %96, %99
  %101 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %102 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %120

103:                                              ; preds = %53
  %104 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %105 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %110 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.erofs_inode*, %struct.erofs_inode** %6, align 8
  %114 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @erofs_err(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %111, i64 %112, i32 %115)
  %117 = call i32 @DBG_BUGON(i32 1)
  %118 = load i32, i32* @EOPNOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %103, %77, %64, %51, %28
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.TYPE_2__*) #1

declare dso_local i32 @erofs_err(i32, i8*, i32, ...) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @vle_load_cluster_from_disk(%struct.z_erofs_maprecorder*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
