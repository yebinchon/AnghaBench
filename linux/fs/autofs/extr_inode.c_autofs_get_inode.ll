; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@autofs_dir_inode_operations = common dso_local global i32 0, align 4
@autofs_dir_operations = common dso_local global i32 0, align 4
@autofs_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @autofs_get_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.inode* @new_inode(%struct.super_block* %7)
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = icmp eq %struct.inode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %71

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.TYPE_2__* @d_inode(i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.TYPE_2__* @d_inode(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %20, %12
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @current_time(%struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  store i32 %39, i32* %43, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 5
  store i32 %39, i32* %45, align 4
  %46 = call i32 (...) @get_next_ino()
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @set_nlink(%struct.inode* %53, i32 2)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  store i32* @autofs_dir_inode_operations, i32** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32* @autofs_dir_operations, i32** %58, align 8
  br label %69

59:                                               ; preds = %37
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @S_ISLNK(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  store i32* @autofs_symlink_inode_operations, i32** %65, align 8
  br label %68

66:                                               ; preds = %59
  %67 = call i32 @WARN_ON(i32 1)
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %70, %struct.inode** %3, align 8
  br label %71

71:                                               ; preds = %69, %11
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %72
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @d_inode(i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
