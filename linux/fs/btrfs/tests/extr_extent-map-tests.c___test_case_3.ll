; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c___test_case_3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c___test_case_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i64, i64 }

@SZ_4K = common dso_local global i8* null, align 8
@TEST_ALLOC_EXTENT_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot add extent range [4K, 8K)\00", align 1
@SZ_16K = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"case3 [0x%llx 0x%llx): ret %d\00", align 1
@.str.2 = private unnamed_addr constant [95 x i8] c"case3 [0x%llx 0x%llx): ret %d em (start 0x%llx len 0x%llx block_start 0x%llx block_len 0x%llx)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_map_tree*, i64)* @__test_case_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_case_3(%struct.btrfs_fs_info* %0, %struct.extent_map_tree* %1, i64 %2) #0 {
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
  %11 = load i8*, i8** @SZ_4K, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %9, align 8
  %13 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %13, %struct.extent_map** %8, align 8
  %14 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %15 = icmp ne %struct.extent_map* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %18 = call i32 @test_std_err(i32 %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %155

21:                                               ; preds = %3
  %22 = load i8*, i8** @SZ_4K, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %25 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i8*, i8** @SZ_4K, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %29 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i8*, i8** @SZ_4K, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %33 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load i8*, i8** @SZ_4K, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %37 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %39 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %38, i32 0, i32 0
  %40 = call i32 @write_lock(i32* %39)
  %41 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %42 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %43 = call i32 @add_extent_mapping(%struct.extent_map_tree* %41, %struct.extent_map* %42, i32 0)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %45 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %44, i32 0, i32 0
  %46 = call i32 @write_unlock(i32* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %21
  %50 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %151

51:                                               ; preds = %21
  %52 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %53 = call i32 @free_extent_map(%struct.extent_map* %52)
  %54 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %54, %struct.extent_map** %8, align 8
  %55 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %56 = icmp ne %struct.extent_map* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %59 = call i32 @test_std_err(i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %151

62:                                               ; preds = %51
  %63 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %64 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** @SZ_16K, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %68 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %70 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i8*, i8** @SZ_16K, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %74 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %73, i32 0, i32 3
  store i64 %72, i64* %74, align 8
  %75 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %76 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %75, i32 0, i32 0
  %77 = call i32 @write_lock(i32* %76)
  %78 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %79 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @btrfs_add_extent_mapping(%struct.btrfs_fs_info* %78, %struct.extent_map_tree* %79, %struct.extent_map** %8, i64 %80, i64 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %84 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %83, i32 0, i32 0
  %85 = call i32 @write_unlock(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %62
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %89, i64 %92, i32 %93)
  br label %151

95:                                               ; preds = %62
  %96 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %97 = icmp ne %struct.extent_map* %96, null
  br i1 %97, label %98, label %148

98:                                               ; preds = %95
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %101 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %127, label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %105, %106
  %108 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %109 = call i64 @extent_map_end(%struct.extent_map* %108)
  %110 = icmp sgt i64 %107, %109
  br i1 %110, label %127, label %111

111:                                              ; preds = %104
  %112 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %113 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %116 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %121 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %124 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %119, %111, %104, %98
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %134 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %137 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %140 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %143 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %131, i32 %132, i64 %135, i64 %138, i64 %141, i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %127, %119, %95
  %149 = load %struct.extent_map*, %struct.extent_map** %8, align 8
  %150 = call i32 @free_extent_map(%struct.extent_map* %149)
  br label %151

151:                                              ; preds = %148, %88, %57, %49
  %152 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %153 = call i32 @free_extent_map_tree(%struct.extent_map_tree* %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %16
  %156 = load i32, i32* %4, align 4
  ret i32 %156
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
