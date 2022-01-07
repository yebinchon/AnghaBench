; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_map_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_map_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.erofs_map_blocks = type { i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @erofs_map_blocks(%struct.inode* %0, %struct.erofs_map_blocks* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.erofs_map_blocks*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.erofs_map_blocks* %1, %struct.erofs_map_blocks** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_2__* @EROFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @erofs_inode_is_data_compressed(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @z_erofs_map_blocks_iter(%struct.inode* %16, %struct.erofs_map_blocks* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %6, align 8
  %21 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %6, align 8
  %26 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @put_page(i32* %27)
  %29 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %6, align 8
  %30 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @erofs_map_blocks_flatmode(%struct.inode* %34, %struct.erofs_map_blocks* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @erofs_inode_is_data_compressed(i32) #1

declare dso_local %struct.TYPE_2__* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @z_erofs_map_blocks_iter(%struct.inode*, %struct.erofs_map_blocks*, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @erofs_map_blocks_flatmode(%struct.inode*, %struct.erofs_map_blocks*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
