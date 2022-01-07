; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @affs_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @affs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.TYPE_3__* @d_inode(%struct.dentry* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.buffer_head* @affs_bread(i32 %8, i32 %12)
  store %struct.buffer_head* %13, %struct.buffer_head** %5, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %2, align 8
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.dentry*, %struct.dentry** %3, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %28 = call %struct.TYPE_4__* @AFFS_TAIL(i32 %26, %struct.buffer_head* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = call %struct.inode* @affs_iget(i32 %23, i32 %31)
  store %struct.inode* %32, %struct.inode** %4, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = call i32 @brelse(%struct.buffer_head* %33)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i64 @IS_ERR(%struct.inode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call %struct.dentry* @ERR_CAST(%struct.inode* %39)
  store %struct.dentry* %40, %struct.dentry** %2, align 8
  br label %44

41:                                               ; preds = %20
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call %struct.dentry* @d_obtain_alias(%struct.inode* %42)
  store %struct.dentry* %43, %struct.dentry** %2, align 8
  br label %44

44:                                               ; preds = %41, %38, %16
  %45 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %45
}

declare dso_local %struct.buffer_head* @affs_bread(i32, i32) #1

declare dso_local %struct.TYPE_3__* @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @affs_iget(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @AFFS_TAIL(i32, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
