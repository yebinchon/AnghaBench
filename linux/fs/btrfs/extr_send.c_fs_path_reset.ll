; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_reset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i32, i64*, i64*, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_path*)* @fs_path_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_path_reset(%struct.fs_path* %0) #0 {
  %2 = alloca %struct.fs_path*, align 8
  store %struct.fs_path* %0, %struct.fs_path** %2, align 8
  %3 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %4 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %9 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %8, i32 0, i32 3
  %10 = load i64*, i64** %9, align 8
  %11 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %12 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %10, i64 %14
  %16 = getelementptr inbounds i64, i64* %15, i64 -1
  %17 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %18 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %17, i32 0, i32 1
  store i64* %16, i64** %18, align 8
  %19 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %20 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %23 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %22, i32 0, i32 2
  store i64* %21, i64** %23, align 8
  %24 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %25 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  store i64 0, i64* %26, align 8
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %29 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %32 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %31, i32 0, i32 1
  store i64* %30, i64** %32, align 8
  %33 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %34 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %37 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %36, i32 0, i32 2
  store i64* %35, i64** %37, align 8
  %38 = load %struct.fs_path*, %struct.fs_path** %2, align 8
  %39 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %27, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
