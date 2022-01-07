; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_alloc_data_chunk_ondemand.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delalloc-space.c_btrfs_alloc_data_chunk_ondemand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.btrfs_inode = type { %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_space_info* }
%struct.btrfs_space_info = type { i64, i32, i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@CHUNK_ALLOC_FORCE = common dso_local global i32 0, align 4
@CHUNK_ALLOC_NO_FORCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_TOTAL_BYTES_PINNED_BATCH = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@BTRFS_TRANS_HAVE_FREE_BGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"space_info:enospc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_data_chunk_ondemand(%struct.btrfs_inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_space_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btrfs_trans_handle*, align 8
  %14 = alloca i64, align 8
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 0
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %16, align 8
  store %struct.btrfs_root* %17, %struct.btrfs_root** %6, align 8
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 0
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %19, align 8
  store %struct.btrfs_fs_info* %20, %struct.btrfs_fs_info** %7, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 1
  %23 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %22, align 8
  store %struct.btrfs_space_info* %23, %struct.btrfs_space_info** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @ALIGN(i64 %24, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %30 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ASSERT(i32 %35)
  br label %37

37:                                               ; preds = %32, %2
  br label %38

38:                                               ; preds = %157, %90, %37
  %39 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %43 = call i64 @btrfs_space_info_used(%struct.btrfs_space_info* %42, i32 1)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %171

51:                                               ; preds = %38
  %52 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %53 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %91, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @CHUNK_ALLOC_FORCE, align 4
  %58 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %59 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %61 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %64 = call i64 @btrfs_data_alloc_profile(%struct.btrfs_fs_info* %63)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %66 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %65)
  store %struct.btrfs_trans_handle* %66, %struct.btrfs_trans_handle** %13, align 8
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %68 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %72 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %71)
  store i32 %72, i32* %3, align 4
  br label %179

73:                                               ; preds = %56
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @CHUNK_ALLOC_NO_FORCE, align 4
  %77 = call i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %74, i64 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %79 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %179

89:                                               ; preds = %82
  store i32 1, i32* %12, align 4
  br label %106

90:                                               ; preds = %73
  br label %38

91:                                               ; preds = %51
  %92 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %93 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %92, i32 0, i32 3
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %5, align 8
  %96 = add nsw i64 %94, %95
  %97 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %98 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = load i32, i32* @BTRFS_TOTAL_BYTES_PINNED_BATCH, align 4
  %102 = call i32 @__percpu_counter_compare(i32* %93, i64 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %104 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  br label %106

106:                                              ; preds = %91, %89
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %162

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %116 = call i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info* %115, i32 -1)
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %118 = load i32, i32* @U64_MAX, align 4
  %119 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %117, i32 %118, i32 0, i64 -1)
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %122 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %121)
  store %struct.btrfs_trans_handle* %122, %struct.btrfs_trans_handle** %13, align 8
  %123 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %124 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %128 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %127)
  store i32 %128, i32* %3, align 4
  br label %179

129:                                              ; preds = %120
  %130 = load i32, i32* %12, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @BTRFS_TRANS_HAVE_FREE_BGS, align 4
  %134 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %135 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %134, i32 0, i32 0
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = call i64 @test_bit(i32 %133, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %11, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140, %132, %129
  %144 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %145 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %179

150:                                              ; preds = %143
  %151 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %152 = call i32 @btrfs_wait_on_delayed_iputs(%struct.btrfs_fs_info* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %3, align 4
  br label %179

157:                                              ; preds = %150
  br label %38

158:                                              ; preds = %140
  %159 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %160 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %159)
  br label %161

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %106
  %163 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %164 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %165 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %166, i64 %167, i32 1)
  %169 = load i32, i32* @ENOSPC, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %179

171:                                              ; preds = %38
  %172 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %173 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info* %172, %struct.btrfs_space_info* %173, i64 %174)
  %176 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %8, align 8
  %177 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %176, i32 0, i32 1
  %178 = call i32 @spin_unlock(i32* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %171, %162, %155, %148, %126, %87, %70
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_space_info_used(%struct.btrfs_space_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @btrfs_data_alloc_profile(%struct.btrfs_fs_info*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle*, i64, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @__percpu_counter_compare(i32*, i64, i32) #1

declare dso_local i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i32, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_wait_on_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

declare dso_local i32 @btrfs_space_info_update_bytes_may_use(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
