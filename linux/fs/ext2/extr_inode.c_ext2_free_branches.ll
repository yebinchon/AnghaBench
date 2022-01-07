; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_free_branches.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_free_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"ext2_free_branches\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Read failure, inode=%ld, block=%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64*, i64*, i32)* @ext2_free_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_free_branches(%struct.inode* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @EXT2_ADDR_PER_BLOCK(i32 %18)
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %70, %15
  %21 = load i64*, i64** %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = icmp ult i64* %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @le32_to_cpu(i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %70

31:                                               ; preds = %24
  %32 = load i64*, i64** %6, align 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call %struct.buffer_head* @sb_bread(i32 %35, i64 %36)
  store %struct.buffer_head* %37, %struct.buffer_head** %9, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = icmp ne %struct.buffer_head* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @ext2_error(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %47)
  br label %70

49:                                               ; preds = %31
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i64*
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  call void @ext2_free_branches(%struct.inode* %50, i64* %54, i64* %61, i32 %62)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %64 = call i32 @bforget(%struct.buffer_head* %63)
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @ext2_free_blocks(%struct.inode* %65, i64 %66, i32 1)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @mark_inode_dirty(%struct.inode* %68)
  br label %70

70:                                               ; preds = %49, %40, %30
  %71 = load i64*, i64** %6, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %6, align 8
  br label %20

73:                                               ; preds = %20
  br label %79

74:                                               ; preds = %4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = call i32 @ext2_free_data(%struct.inode* %75, i64* %76, i64* %77)
  br label %79

79:                                               ; preds = %74, %73
  ret void
}

declare dso_local i32 @EXT2_ADDR_PER_BLOCK(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @ext2_error(i32, i8*, i8*, i32, i64) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_free_data(%struct.inode*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
