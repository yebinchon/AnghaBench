; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_cache.c_v9fs_cache_inode_set_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_cache.c_v9fs_cache_inode_set_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.v9fs_inode = type { i32, i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_cache_inode_set_cookie(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v9fs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %6)
  store %struct.v9fs_inode* %7, %struct.v9fs_inode** %5, align 8
  %8 = load %struct.v9fs_inode*, %struct.v9fs_inode** %5, align 8
  %9 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.v9fs_inode*, %struct.v9fs_inode** %5, align 8
  %15 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @O_ACCMODE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call i32 @v9fs_cache_inode_flush_cookie(%struct.inode* %25)
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call i32 @v9fs_cache_inode_get_cookie(%struct.inode* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.v9fs_inode*, %struct.v9fs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  br label %34

34:                                               ; preds = %30, %12
  ret void
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v9fs_cache_inode_flush_cookie(%struct.inode*) #1

declare dso_local i32 @v9fs_cache_inode_get_cookie(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
