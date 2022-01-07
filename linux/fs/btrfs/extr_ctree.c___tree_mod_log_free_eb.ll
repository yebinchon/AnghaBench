; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c___tree_mod_log_free_eb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c___tree_mod_log_free_eb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.tree_mod_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.tree_mod_elem**, i32)* @__tree_mod_log_free_eb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tree_mod_log_free_eb(%struct.btrfs_fs_info* %0, %struct.tree_mod_elem** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.tree_mod_elem**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.tree_mod_elem** %1, %struct.tree_mod_elem*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %18 = load %struct.tree_mod_elem**, %struct.tree_mod_elem*** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tree_mod_elem*, %struct.tree_mod_elem** %18, i64 %20
  %22 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %21, align 8
  %23 = call i32 @__tree_mod_log_insert(%struct.btrfs_fs_info* %17, %struct.tree_mod_elem* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %43, %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.tree_mod_elem**, %struct.tree_mod_elem*** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tree_mod_elem*, %struct.tree_mod_elem** %34, i64 %36
  %38 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %37, align 8
  %39 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %38, i32 0, i32 0
  %40 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %40, i32 0, i32 0
  %42 = call i32 @rb_erase(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %9, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %13

52:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @__tree_mod_log_insert(%struct.btrfs_fs_info*, %struct.tree_mod_elem*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
