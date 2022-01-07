; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c__adt7316_store_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c__adt7316_store_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7316_chip_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)*, i32 }

@ADT7316_EN = common dso_local global i32 0, align 4
@ADT7316_CONFIG1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7316_chip_info*, i32)* @_adt7316_store_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_adt7316_store_enabled(%struct.adt7316_chip_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adt7316_chip_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adt7316_chip_info* %0, %struct.adt7316_chip_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %12 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ADT7316_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %18 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ADT7316_EN, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %25 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %26, align 8
  %28 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %29 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ADT7316_CONFIG1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 %27(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %4, align 8
  %43 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
