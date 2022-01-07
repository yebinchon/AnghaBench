; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_set_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_fs_cursor = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s{%llx:%llu.%u},%x,%u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.key*, i32)* @afs_set_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_set_lock(%struct.afs_vnode* %0, %struct.key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_status_cb*, align 8
  %9 = alloca %struct.afs_fs_cursor, align 4
  %10 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.key*, %struct.key** %6, align 8
  %29 = call i32 @key_serial(%struct.key* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @_enter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27, i32 %29, i32 %30)
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %32)
  store %struct.afs_status_cb* %33, %struct.afs_status_cb** %8, align 8
  %34 = load %struct.afs_status_cb*, %struct.afs_status_cb** %8, align 8
  %35 = icmp ne %struct.afs_status_cb* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %72

39:                                               ; preds = %3
  %40 = load i32, i32* @ERESTARTSYS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %43 = load %struct.key*, %struct.key** %6, align 8
  %44 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %9, %struct.afs_vnode* %42, %struct.key* %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %50, %46
  %48 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %52 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %51)
  %53 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.afs_status_cb*, %struct.afs_status_cb** %8, align 8
  %56 = call i32 @afs_fs_set_lock(%struct.afs_fs_cursor* %9, i32 %54, %struct.afs_status_cb* %55)
  br label %47

57:                                               ; preds = %47
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %59 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %9, %struct.afs_vnode* %58)
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %61 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.afs_status_cb*, %struct.afs_status_cb** %8, align 8
  %64 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %9, %struct.afs_vnode* %60, i32 %62, i32* null, %struct.afs_status_cb* %63)
  %65 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %9)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %57, %39
  %67 = load %struct.afs_status_cb*, %struct.afs_status_cb** %8, align 8
  %68 = call i32 @kfree(%struct.afs_status_cb* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %36
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_set_lock(%struct.afs_fs_cursor*, i32, %struct.afs_status_cb*) #1

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
