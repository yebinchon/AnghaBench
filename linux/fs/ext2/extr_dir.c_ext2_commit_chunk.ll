; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_commit_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_commit_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @ext2_commit_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_commit_chunk(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %7, align 8
  %13 = load %struct.address_space*, %struct.address_space** %7, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call i32 @inode_inc_iversion(%struct.inode* %16)
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @block_write_end(i32* null, %struct.address_space* %18, i32 %19, i32 %20, i32 %21, %struct.page* %22, i32* null)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %33, %34
  %36 = call i32 @i_size_write(%struct.inode* %32, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @mark_inode_dirty(%struct.inode* %37)
  br label %39

39:                                               ; preds = %31, %3
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i64 @IS_DIRSYNC(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @write_one_page(%struct.page* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @sync_inode_metadata(%struct.inode* %49, i32 1)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %55

52:                                               ; preds = %39
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @block_write_end(i32*, %struct.address_space*, i32, i32, i32, %struct.page*, i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @write_one_page(%struct.page*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
