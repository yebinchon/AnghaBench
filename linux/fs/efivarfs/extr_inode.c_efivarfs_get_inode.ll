; ModuleID = '/home/carl/AnghaBench/linux/fs/efivarfs/extr_inode.c_efivarfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efivarfs/extr_inode.c_efivarfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }

@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@efivarfs_file_operations = common dso_local global i32 0, align 4
@efivarfs_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @efivarfs_get_inode(%struct.super_block* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.super_block*, %struct.super_block** %6, align 8
  %13 = call %struct.inode* @new_inode(%struct.super_block* %12)
  store %struct.inode* %13, %struct.inode** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %11, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %5
  %17 = call i32 (...) @get_next_ino()
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.inode*, %struct.inode** %11, align 8
  %24 = call i32 @current_time(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %11, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 5
  store i32 %24, i32* %28, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 6
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %36

34:                                               ; preds = %16
  %35 = load i32, i32* @S_IMMUTABLE, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  %38 = load %struct.inode*, %struct.inode** %11, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @S_IFMT, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %53 [
    i32 128, label %43
    i32 129, label %46
  ]

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32* @efivarfs_file_operations, i32** %45, align 8
  br label %53

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  store i32* @efivarfs_dir_inode_operations, i32** %48, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i32 @inc_nlink(%struct.inode* %51)
  br label %53

53:                                               ; preds = %36, %46, %43
  br label %54

54:                                               ; preds = %53, %5
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  ret %struct.inode* %55
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
