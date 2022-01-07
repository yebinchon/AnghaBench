; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_callback.c___afs_break_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_callback.c___afs_break_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_VNODE_NEW_CONTENT = common dso_local global i32 0, align 4
@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4
@AFS_VNODE_LOCK_WAITING_FOR_CB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__afs_break_callback(%struct.afs_vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.afs_vnode*, align 8
  %4 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @AFS_VNODE_NEW_CONTENT, align 4
  %7 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %8 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %7, i32 0, i32 3
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 3
  %13 = call i64 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %21 = call i32 @afs_clear_permits(%struct.afs_vnode* %20)
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AFS_VNODE_LOCK_WAITING_FOR_CB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %29 = call i32 @afs_lock_may_be_available(%struct.afs_vnode* %28)
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 2
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %34 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @trace_afs_cb_break(i32* %32, i32 %35, i32 %36, i32 1)
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 2
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %42 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @trace_afs_cb_break(i32* %40, i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %38, %30
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @afs_clear_permits(%struct.afs_vnode*) #1

declare dso_local i32 @afs_lock_may_be_available(%struct.afs_vnode*) #1

declare dso_local i32 @trace_afs_cb_break(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
