; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_vnode_commit_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_vnode_commit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.afs_vnode = type { i32, i32, i32 }
%struct.afs_status_cb = type { i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@VNOVNODE = common dso_local global i64 0, align 8
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@afs_cb_break_for_deleted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_vnode_commit_status(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, i32 %2, i32* %3, %struct.afs_status_cb* %4) #0 {
  %6 = alloca %struct.afs_fs_cursor*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.afs_status_cb*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %6, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.afs_status_cb* %4, %struct.afs_status_cb** %10, align 8
  %11 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %12 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %89

17:                                               ; preds = %5
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = call i32 @write_seqlock(i32* %19)
  %21 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %22 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %27 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VNOVNODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 2
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %38 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %37, i32 0, i32 1
  %39 = call i32 @clear_nlink(i32* %38)
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %41 = load i32, i32* @afs_cb_break_for_deleted, align 4
  %42 = call i32 @__afs_break_callback(%struct.afs_vnode* %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %25
  br label %67

44:                                               ; preds = %17
  %45 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %46 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %52 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @afs_apply_status(%struct.afs_fs_cursor* %50, %struct.afs_vnode* %51, %struct.afs_status_cb* %52, i32* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %57 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %63 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @afs_apply_callback(%struct.afs_fs_cursor* %61, %struct.afs_vnode* %62, %struct.afs_status_cb* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %69 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %68, i32 0, i32 0
  %70 = call i32 @write_sequnlock(i32* %69)
  %71 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %72 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %67
  %77 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %78 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %83 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %6, align 8
  %84 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %88 = call i32 @afs_cache_permit(%struct.afs_vnode* %82, i32 %85, i32 %86, %struct.afs_status_cb* %87)
  br label %89

89:                                               ; preds = %16, %81, %76, %67
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_nlink(i32*) #1

declare dso_local i32 @__afs_break_callback(%struct.afs_vnode*, i32) #1

declare dso_local i32 @afs_apply_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.afs_status_cb*, i32*) #1

declare dso_local i32 @afs_apply_callback(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.afs_status_cb*, i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @afs_cache_permit(%struct.afs_vnode*, i32, i32, %struct.afs_status_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
