; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %17, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ext2_get_blocks(%struct.inode* %22, i32 %23, i32 %24, i32* %13, i32* %11, i32* %12, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %57

31:                                               ; preds = %4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @map_bh(%struct.buffer_head* %32, i32 %35, i32 %36)
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = call i32 @set_buffer_new(%struct.buffer_head* %48)
  br label %50

50:                                               ; preds = %47, %31
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = call i32 @set_buffer_boundary(%struct.buffer_head* %54)
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ext2_get_blocks(%struct.inode*, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
