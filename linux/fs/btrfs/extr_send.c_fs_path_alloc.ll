; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FS_PATH_INLINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_path* ()* @fs_path_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_path* @fs_path_alloc() #0 {
  %1 = alloca %struct.fs_path*, align 8
  %2 = alloca %struct.fs_path*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.fs_path* @kmalloc(i32 24, i32 %3)
  store %struct.fs_path* %4, %struct.fs_path** %2, align 8
  %5 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %6 = icmp ne %struct.fs_path* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.fs_path* null, %struct.fs_path** %1, align 8
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %10 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %12 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %15 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @FS_PATH_INLINE_SIZE, align 4
  %17 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %18 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %20 = call i32 @fs_path_reset(%struct.fs_path* %19)
  %21 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  store %struct.fs_path* %21, %struct.fs_path** %1, align 8
  br label %22

22:                                               ; preds = %8, %7
  %23 = load %struct.fs_path*, %struct.fs_path** %1, align 8
  ret %struct.fs_path* %23
}

declare dso_local %struct.fs_path* @kmalloc(i32, i32) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
