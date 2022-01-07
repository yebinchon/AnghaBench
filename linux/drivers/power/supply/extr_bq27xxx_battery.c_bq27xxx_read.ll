; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.bq27xxx_device_info.0*, i64, i32)* }
%struct.bq27xxx_device_info.0 = type opaque

@INVALID_REG_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to read register 0x%02x (index %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32, i32)* @bq27xxx_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_read(%struct.bq27xxx_device_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bq27xxx_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %10 = icmp ne %struct.bq27xxx_device_info* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INVALID_REG_ADDR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %11
  %25 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %26 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.bq27xxx_device_info.0*, i64, i32)*, i32 (%struct.bq27xxx_device_info.0*, i64, i32)** %27, align 8
  %29 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %30 = bitcast %struct.bq27xxx_device_info* %29 to %struct.bq27xxx_device_info.0*
  %31 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %32 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 %28(%struct.bq27xxx_device_info.0* %30, i64 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %24
  %43 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %44 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %47 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %24
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
