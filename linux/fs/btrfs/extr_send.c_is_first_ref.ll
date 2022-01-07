; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_first_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_is_first_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i64, i64, i8*, i32)* @is_first_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_first_ref(%struct.btrfs_root* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fs_path*, align 8
  %14 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %15, %struct.fs_path** %13, align 8
  %16 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %17 = icmp ne %struct.fs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %53

21:                                               ; preds = %5
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %25 = call i32 @get_first_ref(%struct.btrfs_root* %22, i64 %23, i64* %14, i32* null, %struct.fs_path* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %49

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %36 = call i32 @fs_path_len(%struct.fs_path* %35)
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %29
  store i32 0, i32* %12, align 4
  br label %49

39:                                               ; preds = %33
  %40 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %41 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memcmp(i32 %42, i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %39, %38, %28
  %50 = load %struct.fs_path*, %struct.fs_path** %13, align 8
  %51 = call i32 @fs_path_free(%struct.fs_path* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_first_ref(%struct.btrfs_root*, i64, i64*, i32*, %struct.fs_path*) #1

declare dso_local i32 @fs_path_len(%struct.fs_path*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
