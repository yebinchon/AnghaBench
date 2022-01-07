; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_destroy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.iblock_dev = type { i32, i32* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*)* @iblock_destroy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iblock_destroy_device(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.iblock_dev*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %4 = load %struct.se_device*, %struct.se_device** %2, align 8
  %5 = call %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device* %4)
  store %struct.iblock_dev* %5, %struct.iblock_dev** %3, align 8
  %6 = load %struct.iblock_dev*, %struct.iblock_dev** %3, align 8
  %7 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.iblock_dev*, %struct.iblock_dev** %3, align 8
  %12 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @FMODE_WRITE, align 4
  %15 = load i32, i32* @FMODE_READ, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FMODE_EXCL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @blkdev_put(i32* %13, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.iblock_dev*, %struct.iblock_dev** %3, align 8
  %22 = getelementptr inbounds %struct.iblock_dev, %struct.iblock_dev* %21, i32 0, i32 0
  %23 = call i32 @bioset_exit(i32* %22)
  ret void
}

declare dso_local %struct.iblock_dev* @IBLOCK_DEV(%struct.se_device*) #1

declare dso_local i32 @blkdev_put(i32*, i32) #1

declare dso_local i32 @bioset_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
