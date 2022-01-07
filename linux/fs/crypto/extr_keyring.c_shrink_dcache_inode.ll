; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_shrink_dcache_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_shrink_dcache_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @shrink_dcache_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_dcache_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @S_ISDIR(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.dentry* @d_find_any_alias(%struct.inode* %10)
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = call i32 @shrink_dcache_parent(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = call i32 @dput(%struct.dentry* %17)
  br label %19

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 @d_prune_aliases(%struct.inode* %21)
  ret void
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_prune_aliases(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
