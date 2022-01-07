; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i64*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)* }
%struct.bq27xxx_device_info.0 = type opaque

@INVALID_REG_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to write register 0x%02x (index %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32, i32, i32)* @bq27xxx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_write(%struct.bq27xxx_device_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq27xxx_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %12 = icmp ne %struct.bq27xxx_device_info* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %15 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INVALID_REG_ADDR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %13
  %27 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %28 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)*, i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %69

35:                                               ; preds = %26
  %36 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %37 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)*, i32 (%struct.bq27xxx_device_info.0*, i64, i32, i32)** %38, align 8
  %40 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %41 = bitcast %struct.bq27xxx_device_info* %40 to %struct.bq27xxx_device_info.0*
  %42 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %43 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 %39(%struct.bq27xxx_device_info.0* %41, i64 %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %35
  %55 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %56 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %6, align 8
  %59 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %35
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %32, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
