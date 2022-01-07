; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_i_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_i_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@afs_lock_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @afs_i_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_i_init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.afs_vnode*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.afs_vnode*
  store %struct.afs_vnode* %5, %struct.afs_vnode** %3, align 8
  %6 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %7 = call i32 @memset(%struct.afs_vnode* %6, i32 0, i32 40)
  %8 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %9 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %8, i32 0, i32 9
  %10 = call i32 @inode_init_once(i32* %9)
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 8
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 7
  %16 = call i32 @init_rwsem(i32* %15)
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 6
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 5
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %30 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %29, i32 0, i32 2
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 1
  %34 = load i32, i32* @afs_lock_work, align 4
  %35 = call i32 @INIT_DELAYED_WORK(i32* %33, i32 %34)
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %3, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  %38 = call i32 @seqlock_init(i32* %37)
  ret void
}

declare dso_local i32 @memset(%struct.afs_vnode*, i32, i32) #1

declare dso_local i32 @inode_init_once(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @seqlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
