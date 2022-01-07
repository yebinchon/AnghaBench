; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb3503.c_usb3503_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usb3503.c_usb3503_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb3503 = type { i32, i32, i32, i64, %struct.device* }
%struct.device = type { i32 }

@USB3503_SP_ILOCK = common dso_local global i32 0, align 4
@USB3503_SPILOCK_CONNECT = common dso_local global i32 0, align 4
@USB3503_SPILOCK_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SP_ILOCK failed (%d)\0A\00", align 1
@USB3503_PDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PDS failed (%d)\0A\00", align 1
@USB3503_CFG1 = common dso_local global i32 0, align 4
@USB3503_SELF_BUS_PWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"CFG1 failed (%d)\0A\00", align 1
@USB3503_MODE_HUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"switched to HUB mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb3503*)* @usb3503_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3503_connect(%struct.usb3503* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb3503*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.usb3503* %0, %struct.usb3503** %3, align 8
  %6 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %7 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %6, i32 0, i32 4
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %10 = call i32 @usb3503_reset(%struct.usb3503* %9, i32 1)
  %11 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %12 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %1
  %16 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %17 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @USB3503_SP_ILOCK, align 4
  %20 = load i32, i32* @USB3503_SPILOCK_CONNECT, align 4
  %21 = load i32, i32* @USB3503_SPILOCK_CONFIG, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @regmap_write(i64 %18, i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %105

31:                                               ; preds = %15
  %32 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %33 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %38 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @USB3503_PDS, align 4
  %41 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %42 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %45 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regmap_update_bits(i64 %39, i32 %40, i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %31
  %57 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %58 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @USB3503_CFG1, align 4
  %61 = load i32, i32* @USB3503_SELF_BUS_PWR, align 4
  %62 = load i32, i32* @USB3503_SELF_BUS_PWR, align 4
  %63 = call i32 @regmap_update_bits(i64 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %105

71:                                               ; preds = %56
  %72 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %73 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @USB3503_SP_ILOCK, align 4
  %76 = load i32, i32* @USB3503_SPILOCK_CONNECT, align 4
  %77 = load i32, i32* @USB3503_SPILOCK_CONFIG, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_update_bits(i64 %74, i32 %75, i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %105

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %90 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @gpio_is_valid(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %96 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @gpio_set_value_cansleep(i32 %97, i32 1)
  br label %99

99:                                               ; preds = %94, %88
  %100 = load i32, i32* @USB3503_MODE_HUB, align 4
  %101 = load %struct.usb3503*, %struct.usb3503** %3, align 8
  %102 = getelementptr inbounds %struct.usb3503, %struct.usb3503* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_info(%struct.device* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %82, %66, %50, %26
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @usb3503_reset(%struct.usb3503*, i32) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
