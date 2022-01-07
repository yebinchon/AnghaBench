; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_advance.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, i32*, i32, i32, %struct.btrfs_key*)* @tree_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_advance(%struct.btrfs_path* %0, i32* %1, i32 %2, i32 %3, %struct.btrfs_key* %4) #0 {
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_key*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_path* %0, %struct.btrfs_path** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.btrfs_key* %4, %struct.btrfs_key** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %5
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @tree_move_next_or_upnext(%struct.btrfs_path* %19, i32* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @tree_move_down(%struct.btrfs_path* %24, i32* %25)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %36 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %44 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @btrfs_item_key_to_cpu(i32 %42, %struct.btrfs_key* %43, i32 %51)
  br label %72

53:                                               ; preds = %30
  %54 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.btrfs_key*, %struct.btrfs_key** %10, align 8
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @btrfs_node_key_to_cpu(i32 %61, %struct.btrfs_key* %62, i32 %70)
  br label %72

72:                                               ; preds = %53, %34
  br label %73

73:                                               ; preds = %72, %27
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @tree_move_next_or_upnext(%struct.btrfs_path*, i32*, i32) #1

declare dso_local i32 @tree_move_down(%struct.btrfs_path*, i32*) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_node_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
