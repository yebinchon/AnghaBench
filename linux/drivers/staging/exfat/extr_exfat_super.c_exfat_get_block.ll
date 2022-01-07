; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i64 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.buffer_head*, i32)* @exfat_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = lshr i64 %20, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.super_block*, %struct.super_block** %10, align 8
  %26 = call i32 @__lock_super(%struct.super_block* %25)
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @exfat_bmap(%struct.inode* %27, i64 %28, i64* %14, i64* %13, i32* %9)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.super_block*, %struct.super_block** %10, align 8
  %34 = call i32 @__unlock_super(%struct.super_block* %33)
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %73

36:                                               ; preds = %4
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @min(i64 %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.super_block*, %struct.super_block** %10, align 8
  %48 = getelementptr inbounds %struct.super_block, %struct.super_block* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %46, %49
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call %struct.TYPE_2__* @EXFAT_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %50
  store i64 %55, i64* %53, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = call i32 @set_buffer_new(%struct.buffer_head* %56)
  br label %58

58:                                               ; preds = %45, %39
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = load %struct.super_block*, %struct.super_block** %10, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @map_bh(%struct.buffer_head* %59, %struct.super_block* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.super_block*, %struct.super_block** %10, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 %64, %67
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.super_block*, %struct.super_block** %10, align 8
  %72 = call i32 @__unlock_super(%struct.super_block* %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %63, %32
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @__lock_super(%struct.super_block*) #1

declare dso_local i32 @exfat_bmap(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i32 @__unlock_super(%struct.super_block*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.TYPE_2__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
