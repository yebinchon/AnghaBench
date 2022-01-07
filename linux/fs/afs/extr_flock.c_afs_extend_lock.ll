; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_extend_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_extend_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_fs_cursor = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s{%llx:%llu.%u},%x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.key*)* @afs_extend_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_extend_lock(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.afs_status_cb*, align 8
  %7 = alloca %struct.afs_fs_cursor, align 4
  %8 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %9 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %10 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.key*, %struct.key** %5, align 8
  %27 = call i32 @key_serial(%struct.key* %26)
  %28 = call i32 @_enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21, i32 %25, i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %29)
  store %struct.afs_status_cb* %30, %struct.afs_status_cb** %6, align 8
  %31 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %32 = icmp ne %struct.afs_status_cb* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %2
  %37 = load i32, i32* @ERESTARTSYS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %40 = load %struct.key*, %struct.key** %5, align 8
  %41 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %7, %struct.afs_vnode* %39, %struct.key* %40, i32 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %47, %43
  %45 = call i64 @afs_select_current_fileserver(%struct.afs_fs_cursor* %7)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %49 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %48)
  %50 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %7, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %52 = call i32 @afs_fs_extend_lock(%struct.afs_fs_cursor* %7, %struct.afs_status_cb* %51)
  br label %44

53:                                               ; preds = %44
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %55 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %7, %struct.afs_vnode* %54)
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %57 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %60 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %7, %struct.afs_vnode* %56, i32 %58, i32* null, %struct.afs_status_cb* %59)
  %61 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %7)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %36
  %63 = load %struct.afs_status_cb*, %struct.afs_status_cb** %6, align 8
  %64 = call i32 @kfree(%struct.afs_status_cb* %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %33
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_current_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_extend_lock(%struct.afs_fs_cursor*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, %struct.afs_vnode*) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
