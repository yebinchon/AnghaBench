; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c___test_case_4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c___test_case_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i32, i32, i64 }

@SZ_4K = common dso_local global i64 0, align 8
@TEST_ALLOC_EXTENT_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_8K = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot add extent range [0, 8K)\00", align 1
@SZ_1K = common dso_local global i32 0, align 4
@SZ_16K = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot add extent range [8K, 32K)\00", align 1
@SZ_32K = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"case4 [0x%llx 0x%llx): ret %d\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"case4 [0x%llx 0x%llx): ret %d, added wrong em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_map_tree*, i64)* @__test_case_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_case_4(%struct.btrfs_fs_info* %0, %struct.extent_map_tree* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.extent_map_tree*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.extent_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.extent_map_tree* %1, %struct.extent_map_tree** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @SZ_4K, align 8
  store i64 %11, i64* %9, align 8
  %12 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %12, %struct.extent_map** %8, align 8
  %13 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %14 = icmp ne %struct.extent_map* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %17 = call i32 @test_std_err(i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %170

20:                                               ; preds = %3
  %21 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %22 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** @SZ_8K, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %26 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %28 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** @SZ_8K, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %32 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %34 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %33, i32 0, i32 0
  %35 = call i32 @write_lock(i32* %34)
  %36 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %37 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %38 = call i32 @add_extent_mapping(%struct.extent_map_tree* %36, %struct.extent_map* %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %40 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %39, i32 0, i32 0
  %41 = call i32 @write_unlock(i32* %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %166

46:                                               ; preds = %20
  %47 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %48 = call i32 @free_extent_map(%struct.extent_map* %47)
  %49 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %49, %struct.extent_map** %8, align 8
  %50 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %51 = icmp ne %struct.extent_map* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %54 = call i32 @test_std_err(i32 %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %166

57:                                               ; preds = %46
  %58 = load i8*, i8** @SZ_8K, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %61 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @SZ_1K, align 4
  %63 = mul nsw i32 24, %62
  %64 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %65 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* @SZ_16K, align 8
  %67 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %68 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @SZ_1K, align 4
  %70 = mul nsw i32 24, %69
  %71 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %72 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %74 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %73, i32 0, i32 0
  %75 = call i32 @write_lock(i32* %74)
  %76 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %77 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %78 = call i32 @add_extent_mapping(%struct.extent_map_tree* %76, %struct.extent_map* %77, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %80 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %79, i32 0, i32 0
  %81 = call i32 @write_unlock(i32* %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %166

86:                                               ; preds = %57
  %87 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %88 = call i32 @free_extent_map(%struct.extent_map* %87)
  %89 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %89, %struct.extent_map** %8, align 8
  %90 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %91 = icmp ne %struct.extent_map* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %94 = call i32 @test_std_err(i32 %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %166

97:                                               ; preds = %86
  %98 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %99 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i8*, i8** @SZ_32K, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %103 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %105 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** @SZ_32K, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %109 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %111 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %110, i32 0, i32 0
  %112 = call i32 @write_lock(i32* %111)
  %113 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %114 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @btrfs_add_extent_mapping(%struct.btrfs_fs_info* %113, %struct.extent_map_tree* %114, %struct.extent_map** %8, i64 %115, i64 %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %119 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %118, i32 0, i32 0
  %120 = call i32 @write_unlock(i32* %119)
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %97
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %124, i64 %125, i32 %126)
  br label %166

128:                                              ; preds = %97
  %129 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %130 = icmp ne %struct.extent_map* %129, null
  br i1 %130, label %131, label %163

131:                                              ; preds = %128
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %134 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %131
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %9, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %142 = call i64 @extent_map_end(%struct.extent_map* %141)
  %143 = icmp sgt i64 %140, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %137, %131
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %149 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %152 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %155 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %158 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i64 %145, i64 %146, i32 %147, i64 %150, i32 %153, i64 %156, i32 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %144, %137, %128
  %164 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %165 = call i32 @free_extent_map(%struct.extent_map* %164)
  br label %166

166:                                              ; preds = %163, %123, %92, %84, %52, %44
  %167 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %168 = call i32 @free_extent_map_tree(%struct.extent_map_tree* %167)
  %169 = load i32, i32* %10, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %15
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @btrfs_add_extent_mapping(%struct.btrfs_fs_info*, %struct.extent_map_tree*, %struct.extent_map**, i64, i64) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map_tree(%struct.extent_map_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
