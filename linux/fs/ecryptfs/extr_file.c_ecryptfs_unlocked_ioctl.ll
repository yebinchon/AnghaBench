; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_unlocked_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_file.c_ecryptfs_unlocked_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @ecryptfs_unlocked_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecryptfs_unlocked_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.file* @ecryptfs_file_to_lower(%struct.file* %10)
  store %struct.file* %11, %struct.file** %8, align 8
  %12 = load i64, i64* @ENOTTY, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %9, align 8
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i64 (%struct.file*, i32, i64)**
  %19 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %18, align 8
  %20 = icmp ne i64 (%struct.file*, i32, i64)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %4, align 8
  br label %44

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %42 [
    i32 132, label %25
    i32 131, label %25
    i32 129, label %25
    i32 130, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23, %23
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i64 (%struct.file*, i32, i64)**
  %31 = load i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)** %30, align 8
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i64 %31(%struct.file* %32, i32 %33, i64 %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = call i32 @file_inode(%struct.file* %36)
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = call i32 @file_inode(%struct.file* %38)
  %40 = call i32 @fsstack_copy_attr_all(i32 %37, i32 %39)
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %4, align 8
  br label %44

42:                                               ; preds = %23
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %25, %21
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local %struct.file* @ecryptfs_file_to_lower(%struct.file*) #1

declare dso_local i32 @fsstack_copy_attr_all(i32, i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
