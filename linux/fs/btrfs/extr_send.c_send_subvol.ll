; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_subvol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_subvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i64, i32 }

@BTRFS_SEND_FLAG_OMIT_STREAM_HEADER = common dso_local global i32 0, align 4
@changed_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*)* @send_subvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_subvol(%struct.send_ctx* %0) #0 {
  %2 = alloca %struct.send_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %2, align 8
  %4 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BTRFS_SEND_FLAG_OMIT_STREAM_HEADER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %12 = call i32 @send_header(%struct.send_ctx* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %56

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %19 = call i32 @send_subvol_begin(%struct.send_ctx* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %56

23:                                               ; preds = %17
  %24 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @changed_cb, align 4
  %36 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %37 = call i32 @btrfs_compare_trees(i32 %31, i64 %34, i32 %35, %struct.send_ctx* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %56

41:                                               ; preds = %28
  %42 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %43 = call i32 @finish_inode_if_needed(%struct.send_ctx* %42, i32 1)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %23
  %49 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %50 = call i32 @full_send_tree(%struct.send_ctx* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %56

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %53, %46, %40, %22, %15
  %57 = load %struct.send_ctx*, %struct.send_ctx** %2, align 8
  %58 = call i32 @free_recorded_refs(%struct.send_ctx* %57)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @send_header(%struct.send_ctx*) #1

declare dso_local i32 @send_subvol_begin(%struct.send_ctx*) #1

declare dso_local i32 @btrfs_compare_trees(i32, i64, i32, %struct.send_ctx*) #1

declare dso_local i32 @finish_inode_if_needed(%struct.send_ctx*, i32) #1

declare dso_local i32 @full_send_tree(%struct.send_ctx*) #1

declare dso_local i32 @free_recorded_refs(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
