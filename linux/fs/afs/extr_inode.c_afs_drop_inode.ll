; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_drop_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_VNODE_PSEUDODIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @AFS_VNODE_PSEUDODIR, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @AFS_FS_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %5, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @generic_delete_inode(%struct.inode* %12)
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @generic_drop_inode(%struct.inode* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @generic_delete_inode(%struct.inode*) #1

declare dso_local i32 @generic_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
