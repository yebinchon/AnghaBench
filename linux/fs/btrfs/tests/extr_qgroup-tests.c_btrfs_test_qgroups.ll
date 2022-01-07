; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_btrfs_test_qgroups.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_btrfs_test_qgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root*, %struct.btrfs_root* }
%struct.TYPE_4__ = type { i32 }

@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"couldn't allocate dummy buffer\00", align 1
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"couldn't insert fs root %d\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"running qgroup tests\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_test_qgroups(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %10, i32 %11)
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %6, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %14 = icmp ne %struct.btrfs_fs_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %17 = call i32 @test_std_err(i32 %16)
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %157

20:                                               ; preds = %2
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %22 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %21)
  store %struct.btrfs_root* %22, %struct.btrfs_root** %7, align 8
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %24 = call i64 @IS_ERR(%struct.btrfs_root* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %28 = call i32 @test_std_err(i32 %27)
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %30 = call i32 @PTR_ERR(%struct.btrfs_root* %29)
  store i32 %30, i32* %9, align 4
  br label %151

31:                                               ; preds = %20
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store %struct.btrfs_root* %32, %struct.btrfs_root** %36, align 8
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store %struct.btrfs_root* %37, %struct.btrfs_root** %41, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %43 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %44 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store %struct.btrfs_root* %42, %struct.btrfs_root** %46, align 8
  %47 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @alloc_test_extent_buffer(%struct.TYPE_5__* %53, i32 %54)
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %57 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %31
  %63 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %151

66:                                               ; preds = %31
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @btrfs_set_header_level(i32 %69, i32 0)
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @btrfs_set_header_nritems(i32 %73, i32 0)
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 2, %75
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %82 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %81)
  store %struct.btrfs_root* %82, %struct.btrfs_root** %8, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %84 = call i64 @IS_ERR(%struct.btrfs_root* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %88 = call i32 @test_std_err(i32 %87)
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %90 = call i32 @PTR_ERR(%struct.btrfs_root* %89)
  store i32 %90, i32* %9, align 4
  br label %151

91:                                               ; preds = %66
  %92 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %98 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.btrfs_root* %96, %struct.btrfs_root** %100, align 8
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %102 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %105 = call i32 @btrfs_insert_fs_root(%struct.TYPE_5__* %103, %struct.btrfs_root* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %151

111:                                              ; preds = %91
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %113 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %112)
  store %struct.btrfs_root* %113, %struct.btrfs_root** %8, align 8
  %114 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %115 = call i64 @IS_ERR(%struct.btrfs_root* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %119 = call i32 @test_std_err(i32 %118)
  %120 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %121 = call i32 @PTR_ERR(%struct.btrfs_root* %120)
  store i32 %121, i32* %9, align 4
  br label %151

122:                                              ; preds = %111
  %123 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %125 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %128 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %131 = call i32 @btrfs_insert_fs_root(%struct.TYPE_5__* %129, %struct.btrfs_root* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %151

137:                                              ; preds = %122
  %138 = call i32 @test_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %139 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @test_no_shared_qgroup(%struct.btrfs_root* %139, i32 %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %151

146:                                              ; preds = %137
  %147 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @test_multiple_refs(%struct.btrfs_root* %147, i32 %148, i32 %149)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %146, %145, %134, %117, %108, %86, %62, %26
  %152 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %153 = call i32 @btrfs_free_dummy_root(%struct.btrfs_root* %152)
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %155 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %151, %15
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_root*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @alloc_test_extent_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_set_header_level(i32, i32) #1

declare dso_local i32 @btrfs_set_header_nritems(i32, i32) #1

declare dso_local i32 @btrfs_insert_fs_root(%struct.TYPE_5__*, %struct.btrfs_root*) #1

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @test_no_shared_qgroup(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @test_multiple_refs(%struct.btrfs_root*, i32, i32) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
