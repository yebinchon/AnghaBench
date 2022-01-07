; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cramfs_inode = type { i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cramfs_inode*, i32)* @cramino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cramino(%struct.cramfs_inode* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cramfs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.cramfs_inode* %0, %struct.cramfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %7 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %3, align 8
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @S_IFMT, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %35 [
    i32 128, label %29
    i32 130, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %23, %23, %23
  %30 = load %struct.cramfs_inode*, %struct.cramfs_inode** %4, align 8
  %31 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 2
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %3, align 8
  br label %40

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %29, %19, %10
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
