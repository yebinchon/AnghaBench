; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_kill_all_delayed_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-inode.c_btrfs_kill_all_delayed_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32 }
%struct.btrfs_delayed_node = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_kill_all_delayed_nodes(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [8 x %struct.btrfs_delayed_node*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %1, %70
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 1
  %13 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 0
  %14 = bitcast %struct.btrfs_delayed_node** %13 to i8**
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(%struct.btrfs_delayed_node** %16)
  %18 = call i32 @radix_tree_gang_lookup(i32* %12, i8** %14, i64 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %71

25:                                               ; preds = %7
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 %28
  %30 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %29, align 8
  %31 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %45, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 %40
  %42 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %41, align 8
  %43 = getelementptr inbounds %struct.btrfs_delayed_node, %struct.btrfs_delayed_node* %42, i32 0, i32 0
  %44 = call i32 @refcount_inc(i32* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %67, %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 %58
  %60 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %59, align 8
  %61 = call i32 @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node* %60)
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x %struct.btrfs_delayed_node*], [8 x %struct.btrfs_delayed_node*]* %4, i64 0, i64 %63
  %65 = load %struct.btrfs_delayed_node*, %struct.btrfs_delayed_node** %64, align 8
  %66 = call i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node* %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %52

70:                                               ; preds = %52
  br label %7

71:                                               ; preds = %21
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_gang_lookup(i32*, i8**, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.btrfs_delayed_node**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @__btrfs_kill_delayed_node(%struct.btrfs_delayed_node*) #1

declare dso_local i32 @btrfs_release_delayed_node(%struct.btrfs_delayed_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
