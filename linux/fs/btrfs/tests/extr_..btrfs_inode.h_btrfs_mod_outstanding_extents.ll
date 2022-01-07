; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..btrfs_inode.h_btrfs_mod_outstanding_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..btrfs_inode.h_btrfs_mod_outstanding_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_inode = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_inode*, i32)* @btrfs_mod_outstanding_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_mod_outstanding_extents(%struct.btrfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_inode* %0, %struct.btrfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %5, i32 0, i32 2
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %14 = call i64 @btrfs_is_free_space_inode(%struct.btrfs_inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %22 = call i32 @btrfs_ino(%struct.btrfs_inode* %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @trace_btrfs_inode_mod_outstanding_extents(i32 %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @btrfs_is_free_space_inode(%struct.btrfs_inode*) #1

declare dso_local i32 @trace_btrfs_inode_mod_outstanding_extents(i32, i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
