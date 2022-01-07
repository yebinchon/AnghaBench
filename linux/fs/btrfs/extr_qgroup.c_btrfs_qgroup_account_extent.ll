; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_account_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_account_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32, i64, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ulist = type { i64 }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_QGROUP_STATUS_FLAG_RESCAN = common dso_local global i32 0, align 4
@UPDATE_OLD = common dso_local global i32 0, align 4
@UPDATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_account_extent(%struct.btrfs_trans_handle* %0, i64 %1, i64 %2, %struct.ulist* %3, %struct.ulist* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ulist*, align 8
  %11 = alloca %struct.ulist*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.ulist*, align 8
  %14 = alloca %struct.ulist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ulist* %3, %struct.ulist** %10, align 8
  store %struct.ulist* %4, %struct.ulist** %11, align 8
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %20 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %19, i32 0, i32 1
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  store %struct.btrfs_fs_info* %21, %struct.btrfs_fs_info** %12, align 8
  store %struct.ulist* null, %struct.ulist** %13, align 8
  store %struct.ulist* null, %struct.ulist** %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 6
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %174

28:                                               ; preds = %5
  %29 = load %struct.ulist*, %struct.ulist** %11, align 8
  %30 = icmp ne %struct.ulist* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.ulist*, %struct.ulist** %11, align 8
  %33 = call i32 @maybe_fs_roots(%struct.ulist* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %164

36:                                               ; preds = %31
  %37 = load %struct.ulist*, %struct.ulist** %11, align 8
  %38 = getelementptr inbounds %struct.ulist, %struct.ulist* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %16, align 8
  br label %40

40:                                               ; preds = %36, %28
  %41 = load %struct.ulist*, %struct.ulist** %10, align 8
  %42 = icmp ne %struct.ulist* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.ulist*, %struct.ulist** %10, align 8
  %45 = call i32 @maybe_fs_roots(%struct.ulist* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %164

48:                                               ; preds = %43
  %49 = load %struct.ulist*, %struct.ulist** %10, align 8
  %50 = getelementptr inbounds %struct.ulist, %struct.ulist* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %17, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i64, i64* %17, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %164

59:                                               ; preds = %55, %52
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %61 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %69 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @trace_btrfs_qgroup_account_extent(%struct.btrfs_fs_info* %67, i32 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i32, i32* @GFP_NOFS, align 4
  %77 = call %struct.ulist* @ulist_alloc(i32 %76)
  store %struct.ulist* %77, %struct.ulist** %13, align 8
  %78 = load %struct.ulist*, %struct.ulist** %13, align 8
  %79 = icmp ne %struct.ulist* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %59
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %18, align 4
  br label %164

83:                                               ; preds = %59
  %84 = load i32, i32* @GFP_NOFS, align 4
  %85 = call %struct.ulist* @ulist_alloc(i32 %84)
  store %struct.ulist* %85, %struct.ulist** %14, align 8
  %86 = load %struct.ulist*, %struct.ulist** %14, align 8
  %87 = icmp ne %struct.ulist* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %18, align 4
  br label %164

91:                                               ; preds = %83
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %93 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %92, i32 0, i32 3
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %96 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BTRFS_QGROUP_STATUS_FLAG_RESCAN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %91
  %102 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %103 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = icmp sle i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %110 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %109, i32 0, i32 3
  %111 = call i32 @mutex_unlock(i32* %110)
  store i32 0, i32* %18, align 4
  br label %164

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %91
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %115 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %114, i32 0, i32 3
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %118 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %117, i32 0, i32 2
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %121 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %15, align 8
  %123 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %124 = load %struct.ulist*, %struct.ulist** %10, align 8
  %125 = load %struct.ulist*, %struct.ulist** %14, align 8
  %126 = load %struct.ulist*, %struct.ulist** %13, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i32, i32* @UPDATE_OLD, align 4
  %129 = call i32 @qgroup_update_refcnt(%struct.btrfs_fs_info* %123, %struct.ulist* %124, %struct.ulist* %125, %struct.ulist* %126, i64 %127, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %113
  br label %160

133:                                              ; preds = %113
  %134 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %135 = load %struct.ulist*, %struct.ulist** %11, align 8
  %136 = load %struct.ulist*, %struct.ulist** %14, align 8
  %137 = load %struct.ulist*, %struct.ulist** %13, align 8
  %138 = load i64, i64* %15, align 8
  %139 = load i32, i32* @UPDATE_NEW, align 4
  %140 = call i32 @qgroup_update_refcnt(%struct.btrfs_fs_info* %134, %struct.ulist* %135, %struct.ulist* %136, %struct.ulist* %137, i64 %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %160

144:                                              ; preds = %133
  %145 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %146 = load %struct.ulist*, %struct.ulist** %13, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %15, align 8
  %151 = call i32 @qgroup_update_counters(%struct.btrfs_fs_info* %145, %struct.ulist* %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %16, align 8
  %154 = call i64 @max(i64 %152, i64 %153)
  %155 = add nsw i64 %154, 1
  %156 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %157 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %155
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %144, %143, %132
  %161 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %162 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %161, i32 0, i32 2
  %163 = call i32 @spin_unlock(i32* %162)
  br label %164

164:                                              ; preds = %160, %108, %88, %80, %58, %47, %35
  %165 = load %struct.ulist*, %struct.ulist** %14, align 8
  %166 = call i32 @ulist_free(%struct.ulist* %165)
  %167 = load %struct.ulist*, %struct.ulist** %13, align 8
  %168 = call i32 @ulist_free(%struct.ulist* %167)
  %169 = load %struct.ulist*, %struct.ulist** %10, align 8
  %170 = call i32 @ulist_free(%struct.ulist* %169)
  %171 = load %struct.ulist*, %struct.ulist** %11, align 8
  %172 = call i32 @ulist_free(%struct.ulist* %171)
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %164, %27
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @maybe_fs_roots(%struct.ulist*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_btrfs_qgroup_account_extent(%struct.btrfs_fs_info*, i32, i64, i64, i64, i64) #1

declare dso_local %struct.ulist* @ulist_alloc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @qgroup_update_refcnt(%struct.btrfs_fs_info*, %struct.ulist*, %struct.ulist*, %struct.ulist*, i64, i32) #1

declare dso_local i32 @qgroup_update_counters(%struct.btrfs_fs_info*, %struct.ulist*, i64, i64, i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ulist_free(%struct.ulist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
