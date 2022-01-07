; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_fetch_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_read = type { i32 }
%struct.afs_fs_cursor = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s{%llx:%llu.%u},%x,,,\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@n_fetches = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fetch_data(%struct.afs_vnode* %0, %struct.key* %1, %struct.afs_read* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.afs_read*, align 8
  %8 = alloca %struct.afs_fs_cursor, align 4
  %9 = alloca %struct.afs_status_cb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store %struct.afs_read* %2, %struct.afs_read** %7, align 8
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %26 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.key*, %struct.key** %6, align 8
  %30 = call i32 @key_serial(%struct.key* %29)
  %31 = call i32 @_enter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24, i32 %28, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %32)
  store %struct.afs_status_cb* %33, %struct.afs_status_cb** %9, align 8
  %34 = load %struct.afs_status_cb*, %struct.afs_status_cb** %9, align 8
  %35 = icmp ne %struct.afs_status_cb* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %3
  %40 = load i32, i32* @ERESTARTSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %43 = load %struct.key*, %struct.key** %6, align 8
  %44 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %8, %struct.afs_vnode* %42, %struct.key* %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %39
  %47 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %48 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %54, %46
  %52 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %56 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %55)
  %57 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.afs_status_cb*, %struct.afs_status_cb** %9, align 8
  %59 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %60 = call i32 @afs_fs_fetch_data(%struct.afs_fs_cursor* %8, %struct.afs_status_cb* %58, %struct.afs_read* %59)
  br label %51

61:                                               ; preds = %51
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %63 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %8, %struct.afs_vnode* %62)
  %64 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %65 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.afs_status_cb*, %struct.afs_status_cb** %9, align 8
  %68 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %8, %struct.afs_vnode* %64, i32 %66, i32* %11, %struct.afs_status_cb* %67)
  %69 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %8)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %61, %39
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %75 = load i32, i32* @n_fetches, align 4
  %76 = call i32 @afs_stat_v(%struct.afs_vnode* %74, i32 %75)
  %77 = load %struct.afs_read*, %struct.afs_read** %7, align 8
  %78 = getelementptr inbounds %struct.afs_read, %struct.afs_read* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %81 = call %struct.TYPE_8__* @afs_v2net(%struct.afs_vnode* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @atomic_long_add(i32 %79, i32* %82)
  br label %84

84:                                               ; preds = %73, %70
  %85 = load %struct.afs_status_cb*, %struct.afs_status_cb** %9, align 8
  %86 = call i32 @kfree(%struct.afs_status_cb* %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %36
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_fetch_data(%struct.afs_fs_cursor*, %struct.afs_status_cb*, %struct.afs_read*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, %struct.afs_vnode*) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_stat_v(%struct.afs_vnode*, i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
