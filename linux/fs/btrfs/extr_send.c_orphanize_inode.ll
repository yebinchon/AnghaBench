; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_orphanize_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_orphanize_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32, %struct.fs_path*)* @orphanize_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orphanize_inode(%struct.send_ctx* %0, i32 %1, i32 %2, %struct.fs_path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.send_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fs_path*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fs_path* %3, %struct.fs_path** %9, align 8
  %12 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %12, %struct.fs_path** %11, align 8
  %13 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %14 = icmp ne %struct.fs_path* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %23 = call i32 @gen_unique_name(%struct.send_ctx* %19, i32 %20, i32 %21, %struct.fs_path* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.send_ctx*, %struct.send_ctx** %6, align 8
  %29 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %30 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %31 = call i32 @send_rename(%struct.send_ctx* %28, %struct.fs_path* %29, %struct.fs_path* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = load %struct.fs_path*, %struct.fs_path** %11, align 8
  %34 = call i32 @fs_path_free(%struct.fs_path* %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @gen_unique_name(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @send_rename(%struct.send_ctx*, %struct.fs_path*, %struct.fs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
