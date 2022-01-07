; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_cleanup_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_cleanup_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32, i32, %struct.btrfs_transaction*, i32, %struct.btrfs_fs_info* }
%struct.btrfs_transaction = type { i32, i32, i32, i32 }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_transaction* }

@TRANS_STATE_COMMIT_DOING = common dso_local global i32 0, align 4
@__TRANS_FREEZABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, i32)* @cleanup_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_transaction(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_transaction*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %7, i32 0, i32 4
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %5, align 8
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 2
  %12 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %11, align 8
  store %struct.btrfs_transaction* %12, %struct.btrfs_transaction** %6, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %13, i32 0, i32 3
  %15 = call i32 @refcount_read(i32* %14)
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %19, i32 %20)
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %26 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %25, i32 0, i32 3
  %27 = call i32 @list_empty(i32* %26)
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %29, i32 0, i32 3
  %31 = call i32 @list_del_init(i32* %30)
  %32 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %33, i32 0, i32 2
  %35 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %34, align 8
  %36 = icmp eq %struct.btrfs_transaction* %32, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %2
  %38 = load i32, i32* @TRANS_STATE_COMMIT_DOING, align 4
  %39 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %48 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %47, i32 0, i32 0
  %49 = call i32 @atomic_read(i32* %48)
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event(i32 %46, i32 %51)
  %53 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  br label %56

56:                                               ; preds = %37, %2
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %58 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %61 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %60, i32 0, i32 2
  %62 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %61, align 8
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %64 = call i32 @btrfs_cleanup_one_transaction(%struct.btrfs_transaction* %62, %struct.btrfs_fs_info* %63)
  %65 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %66 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %65, i32 0, i32 1
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %69, i32 0, i32 2
  %71 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %70, align 8
  %72 = icmp eq %struct.btrfs_transaction* %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %74, i32 0, i32 2
  store %struct.btrfs_transaction* null, %struct.btrfs_transaction** %75, align 8
  br label %76

76:                                               ; preds = %73, %56
  %77 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %81 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @__TRANS_FREEZABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %88 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @sb_end_intwrite(i32 %89)
  br label %91

91:                                               ; preds = %86, %76
  %92 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %93 = call i32 @btrfs_put_transaction(%struct.btrfs_transaction* %92)
  %94 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %6, align 8
  %95 = call i32 @btrfs_put_transaction(%struct.btrfs_transaction* %94)
  %96 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %97 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @trace_btrfs_transaction_commit(i32 %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %101, align 8
  %103 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %104 = icmp eq %struct.btrfs_trans_handle* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %107, align 8
  br label %108

108:                                              ; preds = %105, %91
  %109 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %110 = call i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info* %109)
  %111 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  %113 = call i32 @kmem_cache_free(i32 %111, %struct.btrfs_trans_handle* %112)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @btrfs_cleanup_one_transaction(%struct.btrfs_transaction*, %struct.btrfs_fs_info*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @btrfs_put_transaction(%struct.btrfs_transaction*) #1

declare dso_local i32 @trace_btrfs_transaction_commit(i32) #1

declare dso_local i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
