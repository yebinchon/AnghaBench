; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_get_alignment_offset_lbas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_get_alignment_offset_lbas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.iblock_dev = type { %struct.block_device* }
%struct.block_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @iblock_get_alignment_offset_lbas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iblock_get_alignment_offset_lbas(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.iblock_dev*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %7)
  store %struct.iblock_dev* %8, %struct.iblock_dev** %4, align 8
  %9 = load %struct.iblock_dev*, %struct.iblock_dev** %4, align 8
  %10 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %9, i32 0, i32 0
  %11 = load %struct.block_device*, %struct.block_device** %10, align 8
  store %struct.block_device* %11, %struct.block_device** %5, align 8
  %12 = load %struct.block_device*, %struct.block_device** %5, align 8
  %13 = call i32 @bdev_alignment_offset(%struct.block_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.block_device*, %struct.block_device** %5, align 8
  %20 = call i32 @bdev_logical_block_size(%struct.block_device* %19)
  %21 = sdiv i32 %18, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @bdev_alignment_offset(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
