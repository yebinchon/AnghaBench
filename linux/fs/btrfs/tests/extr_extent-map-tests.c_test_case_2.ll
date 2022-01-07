; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_test_case_2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-map-tests.c_test_case_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.extent_map = type { i64, i64, i64, i8* }

@TEST_ALLOC_EXTENT_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i64 0, align 8
@EXTENT_MAP_INLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"cannot add extent range [0, 1K)\00", align 1
@SZ_4K = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot add extent range [4K, 8K)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"case2 [0 1K]: ret %d\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"case2 [0 1K]: ret %d return a wrong em (start %llu len %llu block_start %llu block_len %llu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_map_tree*)* @test_case_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_case_2(%struct.btrfs_fs_info* %0, %struct.extent_map_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.extent_map_tree*, align 8
  %6 = alloca %struct.extent_map*, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.extent_map_tree* %1, %struct.extent_map_tree** %5, align 8
  %8 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %8, %struct.extent_map** %6, align 8
  %9 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %10 = icmp ne %struct.extent_map* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %13 = call i32 @test_std_err(i32 %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %172

16:                                               ; preds = %2
  %17 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %18 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @SZ_1K, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %22 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @EXTENT_MAP_INLINE, align 8
  %24 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %25 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %27 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %26, i32 0, i32 2
  store i64 -1, i64* %27, align 8
  %28 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %29 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %28, i32 0, i32 0
  %30 = call i32 @write_lock(i32* %29)
  %31 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %32 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %33 = call i32 @add_extent_mapping(%struct.extent_map_tree* %31, %struct.extent_map* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %35 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %34, i32 0, i32 0
  %36 = call i32 @write_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %16
  %40 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %168

41:                                               ; preds = %16
  %42 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %43 = call i32 @free_extent_map(%struct.extent_map* %42)
  %44 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %44, %struct.extent_map** %6, align 8
  %45 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %46 = icmp ne %struct.extent_map* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %49 = call i32 @test_std_err(i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %168

52:                                               ; preds = %41
  %53 = load i8*, i8** @SZ_4K, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %56 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** @SZ_4K, align 8
  %58 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %59 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @SZ_4K, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %63 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** @SZ_4K, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %67 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %69 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %68, i32 0, i32 0
  %70 = call i32 @write_lock(i32* %69)
  %71 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %72 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %73 = call i32 @add_extent_mapping(%struct.extent_map_tree* %71, %struct.extent_map* %72, i32 0)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %75 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %74, i32 0, i32 0
  %76 = call i32 @write_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %52
  %80 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %168

81:                                               ; preds = %52
  %82 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %83 = call i32 @free_extent_map(%struct.extent_map* %82)
  %84 = call %struct.extent_map* (...) @alloc_extent_map()
  store %struct.extent_map* %84, %struct.extent_map** %6, align 8
  %85 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %86 = icmp ne %struct.extent_map* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @TEST_ALLOC_EXTENT_MAP, align 4
  %89 = call i32 @test_std_err(i32 %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %168

92:                                               ; preds = %81
  %93 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %94 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i64, i64* @SZ_1K, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %98 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* @EXTENT_MAP_INLINE, align 8
  %100 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %101 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %103 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %102, i32 0, i32 2
  store i64 -1, i64* %103, align 8
  %104 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %105 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %104, i32 0, i32 0
  %106 = call i32 @write_lock(i32* %105)
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %108 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %109 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %110 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %113 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @btrfs_add_extent_mapping(%struct.btrfs_fs_info* %107, %struct.extent_map_tree* %108, %struct.extent_map** %6, i64 %111, i8* %114)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %117 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %116, i32 0, i32 0
  %118 = call i32 @write_unlock(i32* %117)
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %92
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %168

124:                                              ; preds = %92
  %125 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %126 = icmp ne %struct.extent_map* %125, null
  br i1 %126, label %127, label %165

127:                                              ; preds = %124
  %128 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %129 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %127
  %133 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %134 = call i64 @extent_map_end(%struct.extent_map* %133)
  %135 = load i64, i64* @SZ_1K, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %148, label %137

137:                                              ; preds = %132
  %138 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %139 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @EXTENT_MAP_INLINE, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %137
  %144 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %145 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, -1
  br i1 %147, label %148, label %165

148:                                              ; preds = %143, %137, %132, %127
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %151 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %154 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %157 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %160 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %149, i64 %152, i8* %155, i64 %158, i64 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %148, %143, %124
  %166 = load %struct.extent_map*, %struct.extent_map** %6, align 8
  %167 = call i32 @free_extent_map(%struct.extent_map* %166)
  br label %168

168:                                              ; preds = %165, %121, %87, %79, %47, %39
  %169 = load %struct.extent_map_tree*, %struct.extent_map_tree** %5, align 8
  %170 = call i32 @free_extent_map_tree(%struct.extent_map_tree* %169)
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %11
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.extent_map* @alloc_extent_map(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @add_extent_mapping(%struct.extent_map_tree*, %struct.extent_map*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @btrfs_add_extent_mapping(%struct.btrfs_fs_info*, %struct.extent_map_tree*, %struct.extent_map**, i64, i8*) #1

declare dso_local i64 @extent_map_end(%struct.extent_map*) #1

declare dso_local i32 @free_extent_map_tree(%struct.extent_map_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
