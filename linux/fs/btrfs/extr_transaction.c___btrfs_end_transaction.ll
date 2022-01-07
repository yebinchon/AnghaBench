; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c___btrfs_end_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c___btrfs_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32, i64, i32*, i32*, i32, %struct.btrfs_transaction*, %struct.btrfs_fs_info* }
%struct.btrfs_transaction = type { i32, i32, i32 }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_transaction*, i32 }

@TRANS_JOIN_NOLOCK = common dso_local global i32 0, align 4
@TRANS_STATE_BLOCKED = common dso_local global i64 0, align 8
@__TRANS_FREEZABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_FS_STATE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, i32)* @__btrfs_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_end_transaction(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.btrfs_transaction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 6
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %11, align 8
  store %struct.btrfs_fs_info* %12, %struct.btrfs_fs_info** %6, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 5
  %15 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %14, align 8
  store %struct.btrfs_transaction* %15, %struct.btrfs_transaction** %7, align 8
  %16 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TRANS_JOIN_NOLOCK, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %22, i32 0, i32 4
  %24 = call i32 @refcount_read(i32* %23)
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %27, i32 0, i32 4
  %29 = call i32 @refcount_dec(i32* %28)
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %31 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  store i32 0, i32* %3, align 4
  br label %141

35:                                               ; preds = %2
  %36 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %37 = call i32 @btrfs_trans_release_metadata(%struct.btrfs_trans_handle* %36)
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %41 = call i32 @btrfs_create_pending_block_groups(%struct.btrfs_trans_handle* %40)
  %42 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %43 = call i32 @btrfs_trans_release_chunk_metadata(%struct.btrfs_trans_handle* %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %35
  %47 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %48 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @READ_ONCE(i32 %49)
  %51 = load i64, i64* @TRANS_STATE_BLOCKED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %58 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %57)
  store i32 %58, i32* %3, align 4
  br label %141

59:                                               ; preds = %53
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wake_up_process(i32 %62)
  br label %64

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %46, %35
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @__TRANS_FREEZABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sb_end_intwrite(i32 %75)
  br label %77

77:                                               ; preds = %72, %65
  %78 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %80 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %79, i32 0, i32 2
  %81 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %80, align 8
  %82 = icmp ne %struct.btrfs_transaction* %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @WARN_ON(i32 %83)
  %85 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %86 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %85, i32 0, i32 1
  %87 = call i32 @atomic_read(i32* %86)
  %88 = icmp slt i32 %87, 1
  %89 = zext i1 %88 to i32
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %92 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %91, i32 0, i32 1
  %93 = call i32 @atomic_dec(i32* %92)
  %94 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %95 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %96 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @extwriter_counter_dec(%struct.btrfs_transaction* %94, i32 %97)
  %99 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %100 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %99, i32 0, i32 0
  %101 = call i32 @cond_wake_up(i32* %100)
  %102 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %7, align 8
  %103 = call i32 @btrfs_put_transaction(%struct.btrfs_transaction* %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %105, align 8
  %107 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %108 = icmp eq %struct.btrfs_trans_handle* %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %77
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %111, align 8
  br label %112

112:                                              ; preds = %109, %77
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %117 = call i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %120 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @BTRFS_FS_STATE_ERROR, align 4
  %125 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %126 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %125, i32 0, i32 1
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123, %118
  %130 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %131 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @wake_up_process(i32 %132)
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %129, %123
  %137 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %138 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %139 = call i32 @kmem_cache_free(i32 %137, %struct.btrfs_trans_handle* %138)
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %136, %56, %26
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @btrfs_trans_release_metadata(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_create_pending_block_groups(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_trans_release_chunk_metadata(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @extwriter_counter_dec(%struct.btrfs_transaction*, i32) #1

declare dso_local i32 @cond_wake_up(i32*) #1

declare dso_local i32 @btrfs_put_transaction(%struct.btrfs_transaction*) #1

declare dso_local i32 @btrfs_run_delayed_iputs(%struct.btrfs_fs_info*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
