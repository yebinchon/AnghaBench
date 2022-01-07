; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_super.c_erofs_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_super.c_erofs_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32* }
%struct.erofs_inode = type { i32 }

@erofs_fast_symlink_iops = common dso_local global i32 0, align 4
@erofs_inode_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @erofs_free_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erofs_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.erofs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %4)
  store %struct.erofs_inode* %5, %struct.erofs_inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @erofs_fast_symlink_iops
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kfree(i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.erofs_inode*, %struct.erofs_inode** %3, align 8
  %17 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load i32, i32* @erofs_inode_cachep, align 4
  %21 = load %struct.erofs_inode*, %struct.erofs_inode** %3, align 8
  %22 = call i32 @kmem_cache_free(i32 %20, %struct.erofs_inode* %21)
  ret void
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.erofs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
