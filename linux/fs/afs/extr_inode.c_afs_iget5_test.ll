; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget5_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget5_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.afs_iget_data = type { i32 }
%struct.afs_vnode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_iget5_test(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.afs_iget_data*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.afs_iget_data*
  store %struct.afs_iget_data* %8, %struct.afs_iget_data** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %9)
  store %struct.afs_vnode* %10, %struct.afs_vnode** %6, align 8
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 0
  %13 = load %struct.afs_iget_data*, %struct.afs_iget_data** %5, align 8
  %14 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %13, i32 0, i32 0
  %15 = call i64 @memcmp(i32* %12, i32* %14, i32 4)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
