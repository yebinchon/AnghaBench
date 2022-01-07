; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.v9fs_inode = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.v9fs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %4)
  store %struct.v9fs_inode* %5, %struct.v9fs_inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @truncate_inode_pages_final(i32* %7)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call i32 @clear_inode(%struct.inode* %9)
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call i32 @filemap_fdatawrite(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = call i32 @v9fs_cache_inode_put_cookie(%struct.inode* %14)
  %16 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %17 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %22 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @p9_client_clunk(i32* %23)
  %25 = load %struct.v9fs_inode*, %struct.v9fs_inode** %3, align 8
  %26 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite(i32*) #1

declare dso_local i32 @v9fs_cache_inode_put_cookie(%struct.inode*) #1

declare dso_local i32 @p9_client_clunk(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
