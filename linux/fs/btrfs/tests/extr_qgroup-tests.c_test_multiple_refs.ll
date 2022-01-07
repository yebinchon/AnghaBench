; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_test_multiple_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_test_multiple_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.ulist = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"running qgroup multiple refs test\00", align 1
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't create a qgroup %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't find old roots: %d\00", align 1
@BTRFS_FS_TREE_OBJECTID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't account space for a qgroup %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"qgroup counts didn't match expected values\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32, i32)* @test_multiple_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_multiple_refs(%struct.btrfs_root* %0, i32 %1, i32 %2) #0 {
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
  %18 = call i32 @test_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
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
  br label %223

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
  br label %223

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
  br label %223

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
  br label %223

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
  br label %223

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
  br label %223

86:                                               ; preds = %75
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
  br label %223

98:                                               ; preds = %86
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %103 = call i32 @add_tree_ref(%struct.btrfs_root* %99, i32 %100, i32 %101, i32 0, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %4, align 4
  br label %223

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
  br label %223

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.ulist*, %struct.ulist** %10, align 8
  %126 = load %struct.ulist*, %struct.ulist** %11, align 8
  %127 = call i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %8, i32 %123, i32 %124, %struct.ulist* %125, %struct.ulist* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %223

134:                                              ; preds = %122
  %135 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %136 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %135, i32 %136, i32 %137, i32 0)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %223

144:                                              ; preds = %134
  %145 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %146 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %145, i32 %146, i32 %147, i32 0)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %223

154:                                              ; preds = %144
  %155 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %155, i32 %156, i32 0, %struct.ulist** %10, i32 0)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.ulist*, %struct.ulist** %10, align 8
  %162 = call i32 @ulist_free(%struct.ulist* %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %4, align 4
  br label %223

166:                                              ; preds = %154
  %167 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %171 = call i32 @remove_extent_ref(%struct.btrfs_root* %167, i32 %168, i32 %169, i32 0, i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %4, align 4
  br label %223

176:                                              ; preds = %166
  %177 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @btrfs_find_all_roots(%struct.btrfs_trans_handle* %8, %struct.btrfs_fs_info* %177, i32 %178, i32 0, %struct.ulist** %11, i32 0)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.ulist*, %struct.ulist** %10, align 8
  %184 = call i32 @ulist_free(%struct.ulist* %183)
  %185 = load %struct.ulist*, %struct.ulist** %11, align 8
  %186 = call i32 @ulist_free(%struct.ulist* %185)
  %187 = load i32, i32* %12, align 4
  %188 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %4, align 4
  br label %223

190:                                              ; preds = %176
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.ulist*, %struct.ulist** %10, align 8
  %194 = load %struct.ulist*, %struct.ulist** %11, align 8
  %195 = call i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %8, i32 %191, i32 %192, %struct.ulist* %193, %struct.ulist* %194)
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load i32, i32* %12, align 4
  %200 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %4, align 4
  br label %223

202:                                              ; preds = %190
  %203 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %204 = load i32, i32* @BTRFS_FIRST_FREE_OBJECTID, align 4
  %205 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %203, i32 %204, i32 0, i32 0)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %223

211:                                              ; preds = %202
  %212 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %213 = load i32, i32* @BTRFS_FS_TREE_OBJECTID, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i64 @btrfs_verify_qgroup_counts(%struct.btrfs_fs_info* %212, i32 %213, i32 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %211
  %219 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %223

222:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %222, %218, %207, %198, %182, %174, %160, %150, %140, %130, %114, %106, %92, %82, %71, %55, %47, %33, %23
  %224 = load i32, i32* %4, align 4
  ret i32 %224
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

declare dso_local i32 @add_tree_ref(%struct.btrfs_root*, i32, i32, i32, i32) #1

declare dso_local i32 @remove_extent_ref(%struct.btrfs_root*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
