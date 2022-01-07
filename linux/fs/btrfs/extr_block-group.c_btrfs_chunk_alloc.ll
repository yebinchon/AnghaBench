; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_block-group.c_btrfs_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, i64, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.btrfs_space_info = type { i32, i32, i32, i32, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i64 0, align 8
@BTRFS_BLOCK_GROUP_METADATA = common dso_local global i64 0, align 8
@CHUNK_ALLOC_NO_FORCE = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_chunk_alloc(%struct.btrfs_trans_handle* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  %9 = alloca %struct.btrfs_space_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 2
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %190

23:                                               ; preds = %3
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %24, i64 %25)
  store %struct.btrfs_space_info* %26, %struct.btrfs_space_info** %9, align 8
  %27 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %28 = call i32 @ASSERT(%struct.btrfs_space_info* %27)
  br label %29

29:                                               ; preds = %95, %23
  %30 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %30, i32 0, i32 3
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %35 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %40 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %44 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @should_alloc_chunk(%struct.btrfs_fs_info* %43, %struct.btrfs_space_info* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %48 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @ENOSPC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %60 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %59, i32 0, i32 3
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %190

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %68 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %190

70:                                               ; preds = %63
  %71 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %72 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  %76 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %77 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %80 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %79, i32 0, i32 2
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %83 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %91

85:                                               ; preds = %70
  %86 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %87 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  store i32 0, i32* %10, align 4
  %88 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %89 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %88, i32 0, i32 3
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %85, %75
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = call i32 (...) @cond_resched()
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %29, label %98

98:                                               ; preds = %95
  %99 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %100 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %99, i32 0, i32 2
  %101 = call i32 @mutex_lock(i32* %100)
  %102 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %103 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %105 = call i64 @btrfs_mixed_space_info(%struct.btrfs_space_info* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i64, i64* @BTRFS_BLOCK_GROUP_DATA, align 8
  %109 = load i64, i64* @BTRFS_BLOCK_GROUP_METADATA, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* %6, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %107, %98
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @BTRFS_BLOCK_GROUP_DATA, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %120 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %118
  %124 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %125 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %129 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %132 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = srem i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %123
  %137 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %138 = call i32 @force_metadata_allocation(%struct.btrfs_fs_info* %137)
  br label %139

139:                                              ; preds = %136, %123
  br label %140

140:                                              ; preds = %139, %118, %113
  %141 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @check_system_chunk(%struct.btrfs_trans_handle* %141, i64 %142)
  %144 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @btrfs_alloc_chunk(%struct.btrfs_trans_handle* %144, i64 %145)
  store i32 %146, i32* %12, align 4
  %147 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %148 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %150 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %149, i32 0, i32 3
  %151 = call i32 @spin_lock(i32* %150)
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %140
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %161 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  br label %163

162:                                              ; preds = %154
  br label %171

163:                                              ; preds = %159
  br label %167

164:                                              ; preds = %140
  store i32 1, i32* %12, align 4
  %165 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %166 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %165, i32 0, i32 4
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %163
  %168 = load i32, i32* @CHUNK_ALLOC_NO_FORCE, align 4
  %169 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %170 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %162
  %172 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %173 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %172, i32 0, i32 2
  store i32 0, i32* %173, align 8
  %174 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %9, align 8
  %175 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %174, i32 0, i32 3
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %178 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %177, i32 0, i32 2
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %181 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SZ_2M, align 8
  %184 = icmp sge i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %171
  %186 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %187 = call i32 @btrfs_create_pending_block_groups(%struct.btrfs_trans_handle* %186)
  br label %188

188:                                              ; preds = %185, %171
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %188, %66, %58, %20
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i64) #1

declare dso_local i32 @ASSERT(%struct.btrfs_space_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @should_alloc_chunk(%struct.btrfs_fs_info*, %struct.btrfs_space_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @btrfs_mixed_space_info(%struct.btrfs_space_info*) #1

declare dso_local i32 @force_metadata_allocation(%struct.btrfs_fs_info*) #1

declare dso_local i32 @check_system_chunk(%struct.btrfs_trans_handle*, i64) #1

declare dso_local i32 @btrfs_alloc_chunk(%struct.btrfs_trans_handle*, i64) #1

declare dso_local i32 @btrfs_create_pending_block_groups(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
