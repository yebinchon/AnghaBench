; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_inode_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_btrfs_log_inode_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { i64, i64, %struct.TYPE_2__, %struct.btrfs_root* }
%struct.TYPE_2__ = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.btrfs_root = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.btrfs_log_ctx = type { i64 }

@NOTREELOG = common dso_local global i32 0, align 4
@BTRFS_NO_LOG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, i32, i32, i32, %struct.btrfs_log_ctx*)* @btrfs_log_inode_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_log_inode_parent(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1, %struct.dentry* %2, i32 %3, i32 %4, i32 %5, %struct.btrfs_log_ctx* %6) #0 {
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_log_ctx*, align 8
  %15 = alloca %struct.btrfs_root*, align 8
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca %struct.super_block*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.btrfs_log_ctx* %6, %struct.btrfs_log_ctx** %14, align 8
  %21 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %22 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %21, i32 0, i32 3
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %22, align 8
  store %struct.btrfs_root* %23, %struct.btrfs_root** %15, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 1
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %25, align 8
  store %struct.btrfs_fs_info* %26, %struct.btrfs_fs_info** %16, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %30 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %17, align 8
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %35 = load i32, i32* @NOTREELOG, align 4
  %36 = call i64 @btrfs_test_opt(%struct.btrfs_fs_info* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i32 1, i32* %18, align 4
  br label %186

39:                                               ; preds = %7
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %18, align 4
  br label %186

48:                                               ; preds = %39
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  %51 = call i64 @btrfs_root_refs(i32* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %18, align 4
  br label %186

54:                                               ; preds = %48
  %55 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %56 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = load %struct.super_block*, %struct.super_block** %17, align 8
  %59 = load i64, i64* %19, align 8
  %60 = call i32 @check_parent_dirs_for_sync(%struct.btrfs_trans_handle* %55, %struct.btrfs_inode* %56, %struct.dentry* %57, %struct.super_block* %58, i64 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %186

64:                                               ; preds = %54
  %65 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %67 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @btrfs_inode_in_log(%struct.btrfs_inode* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %73 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71, %64
  %78 = load i32, i32* @BTRFS_NO_LOG_SYNC, align 4
  store i32 %78, i32* %18, align 4
  br label %186

79:                                               ; preds = %71
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %82 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %83 = call i32 @start_log_trans(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, %struct.btrfs_log_ctx* %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %186

87:                                               ; preds = %79
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %89 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %90 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %95 = call i32 @btrfs_log_inode(%struct.btrfs_trans_handle* %88, %struct.btrfs_root* %89, %struct.btrfs_inode* %90, i32 %91, i32 %92, i32 %93, %struct.btrfs_log_ctx* %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %170

99:                                               ; preds = %87
  %100 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %101 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @S_ISREG(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %108 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = icmp sle i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %114 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %19, align 8
  %117 = icmp sle i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 0, i32* %18, align 4
  br label %170

119:                                              ; preds = %112, %106, %99
  %120 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %121 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @S_ISDIR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %128 = icmp ne %struct.btrfs_log_ctx* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %131 = getelementptr inbounds %struct.btrfs_log_ctx, %struct.btrfs_log_ctx* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %134, %129, %126, %119
  %136 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %137 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %19, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %143 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %144 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %145 = call i32 @btrfs_log_all_parents(%struct.btrfs_trans_handle* %142, %struct.btrfs_inode* %143, %struct.btrfs_log_ctx* %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %170

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149, %135
  %151 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %152 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %153 = load %struct.dentry*, %struct.dentry** %10, align 8
  %154 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %155 = call i32 @log_all_new_ancestors(%struct.btrfs_trans_handle* %151, %struct.btrfs_inode* %152, %struct.dentry* %153, %struct.btrfs_log_ctx* %154)
  store i32 %155, i32* %18, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  br label %170

159:                                              ; preds = %150
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %164 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %165 = load %struct.btrfs_inode*, %struct.btrfs_inode** %9, align 8
  %166 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %167 = call i32 @log_new_dir_dentries(%struct.btrfs_trans_handle* %163, %struct.btrfs_root* %164, %struct.btrfs_inode* %165, %struct.btrfs_log_ctx* %166)
  store i32 %167, i32* %18, align 4
  br label %169

168:                                              ; preds = %159
  store i32 0, i32* %18, align 4
  br label %169

169:                                              ; preds = %168, %162
  br label %170

170:                                              ; preds = %169, %158, %148, %118, %98
  %171 = load i32, i32* %18, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %175 = call i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle* %174)
  store i32 1, i32* %18, align 4
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32, i32* %18, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %181 = load %struct.btrfs_log_ctx*, %struct.btrfs_log_ctx** %14, align 8
  %182 = call i32 @btrfs_remove_log_ctx(%struct.btrfs_root* %180, %struct.btrfs_log_ctx* %181)
  br label %183

183:                                              ; preds = %179, %176
  %184 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  %185 = call i32 @btrfs_end_log_trans(%struct.btrfs_root* %184)
  br label %186

186:                                              ; preds = %183, %86, %77, %63, %53, %47, %38
  %187 = load i32, i32* %18, align 4
  ret i32 %187
}

declare dso_local i64 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i64 @btrfs_root_refs(i32*) #1

declare dso_local i32 @check_parent_dirs_for_sync(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, %struct.super_block*, i64) #1

declare dso_local i64 @btrfs_inode_in_log(%struct.btrfs_inode*, i32) #1

declare dso_local i32 @start_log_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_log_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_inode*, i32, i32, i32, %struct.btrfs_log_ctx*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @btrfs_log_all_parents(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @log_all_new_ancestors(%struct.btrfs_trans_handle*, %struct.btrfs_inode*, %struct.dentry*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @log_new_dir_dentries(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_inode*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_set_log_full_commit(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_remove_log_ctx(%struct.btrfs_root*, %struct.btrfs_log_ctx*) #1

declare dso_local i32 @btrfs_end_log_trans(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
