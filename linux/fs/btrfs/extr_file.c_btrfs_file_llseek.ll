; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_file_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_file_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @btrfs_file_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_file_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call i32 @inode_lock(%struct.inode* %15)
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %44 [
    i32 129, label %18
    i32 131, label %18
    i32 130, label %23
    i32 128, label %23
  ]

18:                                               ; preds = %3, %3
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @generic_file_llseek(%struct.file* %19, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %53

23:                                               ; preds = %3, %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call i32 @i_size_read(%struct.inode* %25)
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i32 @inode_unlock(%struct.inode* %29)
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %23
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @find_desired_extent(%struct.inode* %34, i32* %6, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @inode_unlock(%struct.inode* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %57

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @vfs_setpos(%struct.file* %45, i32 %46, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %44, %18
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @inode_unlock(%struct.inode* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %39, %28
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @find_desired_extent(%struct.inode*, i32*, i32) #1

declare dso_local i32 @vfs_setpos(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
