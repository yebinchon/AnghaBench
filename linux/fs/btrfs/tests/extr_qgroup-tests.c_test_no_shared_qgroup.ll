; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_test_no_shared_qgroup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_test_no_shared_qgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.ulist = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"running qgroup add/remove tests\00", align 1
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't create a qgroup %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't find old roots: %d\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't account space for a qgroup %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"qgroup counts didn't match expected values\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32, i32)* @test_no_shared_qgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_no_shared_qgroup(%struct.btrfs_root* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle, align 4
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.ulist*, align 8
  %11 = alloca %struct.ulist*, align 8
  %12 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %9, align 8
  store %struct.ulist* null, %struct.ulist** %10, align 8
  store %struct.ulist* null, %struct.ulist** %11, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %17 = call i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %16)
  %18 = call i32 @test_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %20 = call i32 @btrfs_create_qgroup(%struct.btrfs_trans_handle* %8, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %145

27:                                               ; preds = %3
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %28, i32 %29, i32 0, %struct.ulist** %10, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.ulist*, %struct.ulist** %10, align 8
  %35 = call i32 @ulist_free(%struct.ulist* %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %145

39:                                               ; preds = %27
  %40 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %44 = call i32 @insert_normal_tree_ref(%struct.btrfs_root* %40, i32 %41, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %145

49:                                               ; preds = %39
  %50 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %50, i32 %51, i32 0, %struct.ulist** %11, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.ulist*, %struct.ulist** %10, align 8
  %57 = call i32 @ulist_free(%struct.ulist* %56)
  %58 = load %struct.ulist*, %struct.ulist** %11, align 8
  %59 = call i32 @ulist_free(%struct.ulist* %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %145

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ulist*, %struct.ulist** %10, align 8
  %67 = load %struct.ulist*, %struct.ulist** %11, align 8
  %68 = call i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %8, i32 %64, i32 %65, %struct.ulist* %66, %struct.ulist* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %145

75:                                               ; preds = %63
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %77 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %145

86:                                               ; preds = %75
  store %struct.ulist* null, %struct.ulist** %10, align 8
  store %struct.ulist* null, %struct.ulist** %11, align 8
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %87, i32 %88, i32 0, %struct.ulist** %10, i32 0)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.ulist*, %struct.ulist** %10, align 8
  %94 = call i32 @ulist_free(%struct.ulist* %93)
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %145

98:                                               ; preds = %86
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @remove_extent_item(%struct.btrfs_root* %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %145

108:                                              ; preds = %98
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %109, i32 %110, i32 0, %struct.ulist** %11, i32 0)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.ulist*, %struct.ulist** %10, align 8
  %116 = call i32 @ulist_free(%struct.ulist* %115)
  %117 = load %struct.ulist*, %struct.ulist** %11, align 8
  %118 = call i32 @ulist_free(%struct.ulist* %117)
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %145

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.ulist*, %struct.ulist** %10, align 8
  %126 = load %struct.ulist*, %struct.ulist** %11, align 8
  %127 = call i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %8, i32 %123, i32 %124, %struct.ulist* %125, %struct.ulist* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %145

135:                                              ; preds = %122
  %136 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %137 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %138 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %136, i32 %137, i32 0, i32 0)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %145

144:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %140, %130, %114, %105, %92, %82, %71, %55, %47, %33, %23
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*) #1

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @btrfs_create_qgroup(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, i32, i32, %struct.ulist**, i32) #1

declare dso_local i32 @ulist_free(%struct.ulist*) #1

declare dso_local i32 @insert_normal_tree_ref(%struct.btrfs_root*, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle*, i32, i32, %struct.ulist*, %struct.ulist*) #1

declare dso_local i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info*, i32, i32, i32) #1

declare dso_local i32 @remove_extent_item(%struct.btrfs_root*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
