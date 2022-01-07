; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_data.c_erofs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EROFS_INODE_FLAT_INLINE = common dso_local global i64 0, align 8
@LOG_BLOCK_SIZE = common dso_local global i64 0, align 8
@LOG_SECTORS_PER_BLOCK = common dso_local global i64 0, align 8
@erofs_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @erofs_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.TYPE_2__* @EROFS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EROFS_INODE_FLAT_INLINE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i64 @i_size_read(%struct.inode* %18)
  %20 = load i64, i64* @LOG_BLOCK_SIZE, align 8
  %21 = ashr i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* @LOG_SECTORS_PER_BLOCK, align 8
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %36

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.address_space*, %struct.address_space** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @erofs_get_block, align 4
  %35 = call i32 @generic_block_bmap(%struct.address_space* %32, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @EROFS_I(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @generic_block_bmap(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
