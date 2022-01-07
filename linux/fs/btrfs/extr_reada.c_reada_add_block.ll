; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_add_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_reada.c_reada_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reada_control = type { i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.reada_extent = type { i32, i32 }
%struct.reada_extctl = type { i32, i32, %struct.reada_control* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reada_control*, i32, %struct.btrfs_key*, i32)* @reada_add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_add_block(%struct.reada_control* %0, i32 %1, %struct.btrfs_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reada_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca %struct.reada_extent*, align 8
  %12 = alloca %struct.reada_extctl*, align 8
  store %struct.reada_control* %0, %struct.reada_control** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.btrfs_key* %2, %struct.btrfs_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.reada_control*, %struct.reada_control** %6, align 8
  %14 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %13, i32 0, i32 1
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  store %struct.btrfs_fs_info* %15, %struct.btrfs_fs_info** %10, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %19 = call %struct.reada_extent* @reada_find_extent(%struct.btrfs_fs_info* %16, i32 %17, %struct.btrfs_key* %18)
  store %struct.reada_extent* %19, %struct.reada_extent** %11, align 8
  %20 = load %struct.reada_extent*, %struct.reada_extent** %11, align 8
  %21 = icmp ne %struct.reada_extent* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.reada_extctl* @kzalloc(i32 16, i32 %24)
  store %struct.reada_extctl* %25, %struct.reada_extctl** %12, align 8
  %26 = load %struct.reada_extctl*, %struct.reada_extctl** %12, align 8
  %27 = icmp ne %struct.reada_extctl* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %30 = load %struct.reada_extent*, %struct.reada_extent** %11, align 8
  %31 = call i32 @reada_extent_put(%struct.btrfs_fs_info* %29, %struct.reada_extent* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load %struct.reada_control*, %struct.reada_control** %6, align 8
  %36 = load %struct.reada_extctl*, %struct.reada_extctl** %12, align 8
  %37 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %36, i32 0, i32 2
  store %struct.reada_control* %35, %struct.reada_control** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.reada_extctl*, %struct.reada_extctl** %12, align 8
  %40 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.reada_control*, %struct.reada_control** %6, align 8
  %42 = getelementptr inbounds %struct.reada_control, %struct.reada_control* %41, i32 0, i32 0
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.reada_extent*, %struct.reada_extent** %11, align 8
  %45 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.reada_extctl*, %struct.reada_extctl** %12, align 8
  %48 = getelementptr inbounds %struct.reada_extctl, %struct.reada_extctl* %47, i32 0, i32 0
  %49 = load %struct.reada_extent*, %struct.reada_extent** %11, align 8
  %50 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %49, i32 0, i32 1
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.reada_extent*, %struct.reada_extent** %11, align 8
  %53 = getelementptr inbounds %struct.reada_extent, %struct.reada_extent* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %34, %28, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.reada_extent* @reada_find_extent(%struct.btrfs_fs_info*, i32, %struct.btrfs_key*) #1

declare dso_local %struct.reada_extctl* @kzalloc(i32, i32) #1

declare dso_local i32 @reada_extent_put(%struct.btrfs_fs_info*, %struct.reada_extent*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
