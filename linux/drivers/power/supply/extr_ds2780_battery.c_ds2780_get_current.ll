; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_get_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2780_battery.c_ds2780_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2780_device_info = type { i32 }

@DS2780_RSNSP_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"sense resistor value is 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CURRENT_NOW = common dso_local global i32 0, align 4
@DS2780_CURRENT_MSB_REG = common dso_local global i32 0, align 4
@CURRENT_AVG = common dso_local global i32 0, align 4
@DS2780_IAVG_MSB_REG = common dso_local global i32 0, align 4
@DS2780_CURRENT_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2780_device_info*, i32, i32*)* @ds2780_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2780_get_current(%struct.ds2780_device_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds2780_device_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ds2780_device_info* %0, %struct.ds2780_device_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %14 = load i32, i32* @DS2780_RSNSP_REG, align 4
  %15 = call i32 @ds2780_read8(%struct.ds2780_device_info* %13, i32* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %25 = getelementptr inbounds %struct.ds2780_device_info, %struct.ds2780_device_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %63

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  %32 = sdiv i32 1000, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CURRENT_NOW, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DS2780_CURRENT_MSB_REG, align 4
  store i32 %37, i32* %12, align 4
  br label %48

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CURRENT_AVG, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @DS2780_IAVG_MSB_REG, align 4
  store i32 %43, i32* %12, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.ds2780_device_info*, %struct.ds2780_device_info** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ds2780_read16(%struct.ds2780_device_info* %49, i32* %10, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %63

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @DS2780_CURRENT_UNITS, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %58, %59
  %61 = mul nsw i32 %57, %60
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %56, %54, %44, %23, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ds2780_read8(%struct.ds2780_device_info*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ds2780_read16(%struct.ds2780_device_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
