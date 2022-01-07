; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_temp_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/addac/extr_adt7316.c_adt7316_store_temp_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7316_chip_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i64)*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adt7316_chip_info*, i32, i8*, i64)* @adt7316_store_temp_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adt7316_store_temp_offset(%struct.adt7316_chip_info* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.adt7316_chip_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.adt7316_chip_info* %0, %struct.adt7316_chip_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @kstrtoint(i8* %13, i32 10, i32* %10)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 127
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, -128
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17, %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %53

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 256
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %36 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %37, align 8
  %39 = load %struct.adt7316_chip_info*, %struct.adt7316_chip_info** %6, align 8
  %40 = getelementptr inbounds %struct.adt7316_chip_info, %struct.adt7316_chip_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %11, align 8
  %45 = call i32 %38(i32 %42, i32 %43, i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load i64, i64* @EIO, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %53

51:                                               ; preds = %32
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %51, %48, %23
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
