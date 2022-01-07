; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_add_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_fs_path_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_path = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_path*, %struct.fs_path*)* @fs_path_add_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_path_add_path(%struct.fs_path* %0, %struct.fs_path* %1) #0 {
  %3 = alloca %struct.fs_path*, align 8
  %4 = alloca %struct.fs_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.fs_path* %0, %struct.fs_path** %3, align 8
  store %struct.fs_path* %1, %struct.fs_path** %4, align 8
  %7 = load %struct.fs_path*, %struct.fs_path** %3, align 8
  %8 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %9 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %12 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = call i32 @fs_path_prepare_for_add(%struct.fs_path* %7, i64 %14, i8** %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %22 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %25 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fs_path*, %struct.fs_path** %4, align 8
  %28 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @memcpy(i8* %20, i64 %23, i64 %30)
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @fs_path_prepare_for_add(%struct.fs_path*, i64, i8**) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
