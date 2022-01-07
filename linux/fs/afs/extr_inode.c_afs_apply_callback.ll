; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_apply_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_apply_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_fs_cursor = type { %struct.afs_cb_interest* }
%struct.afs_cb_interest = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.afs_status_cb = type { %struct.afs_callback }
%struct.afs_callback = type { i32 }

@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.afs_status_cb*, i32)* @afs_apply_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_apply_callback(%struct.afs_fs_cursor* %0, %struct.afs_vnode* %1, %struct.afs_status_cb* %2, i32 %3) #0 {
  %5 = alloca %struct.afs_fs_cursor*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_cb_interest*, align 8
  %10 = alloca %struct.afs_callback*, align 8
  store %struct.afs_fs_cursor* %0, %struct.afs_fs_cursor** %5, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %12 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %11, i32 0, i32 0
  store %struct.afs_callback* %12, %struct.afs_callback** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %15 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %16 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %15, i32 0, i32 0
  %17 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %16, align 8
  %18 = call i32 @afs_cb_is_broken(i32 %13, %struct.afs_vnode* %14, %struct.afs_cb_interest* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %4
  %21 = load %struct.afs_callback*, %struct.afs_callback** %10, align 8
  %22 = getelementptr inbounds %struct.afs_callback, %struct.afs_callback* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %30 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @lockdep_is_held(i32* %31)
  %33 = call %struct.afs_cb_interest* @rcu_dereference_protected(i32 %28, i32 %32)
  store %struct.afs_cb_interest* %33, %struct.afs_cb_interest** %9, align 8
  %34 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %35 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %36 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %35, i32 0, i32 0
  %37 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %36, align 8
  %38 = icmp ne %struct.afs_cb_interest* %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %20
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %41 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.afs_fs_cursor*, %struct.afs_fs_cursor** %5, align 8
  %44 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %43, i32 0, i32 0
  %45 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %44, align 8
  %46 = call i32 @afs_get_cb_interest(%struct.afs_cb_interest* %45)
  %47 = call i32 @rcu_assign_pointer(i32 %42, i32 %46)
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %49 = call i32 @afs_v2net(%struct.afs_vnode* %48)
  %50 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %51 = call i32 @afs_put_cb_interest(i32 %49, %struct.afs_cb_interest* %50)
  br label %52

52:                                               ; preds = %39, %20
  %53 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %55 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %52, %4
  ret void
}

declare dso_local i32 @afs_cb_is_broken(i32, %struct.afs_vnode*, %struct.afs_cb_interest*) #1

declare dso_local %struct.afs_cb_interest* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @afs_get_cb_interest(%struct.afs_cb_interest*) #1

declare dso_local i32 @afs_put_cb_interest(i32, %struct.afs_cb_interest*) #1

declare dso_local i32 @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
