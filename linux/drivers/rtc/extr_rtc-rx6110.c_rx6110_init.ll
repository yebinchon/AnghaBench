; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx6110.c_rx6110_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx6110_data = type { i32, %struct.rtc_device* }
%struct.rtc_device = type { i32 }

@RX6110_REG_EXT = common dso_local global i32 0, align 4
@RX6110_BIT_EXT_TE = common dso_local global i32 0, align 4
@rx6110_default_regs = common dso_local global i32 0, align 4
@RX6110_REG_FLAG = common dso_local global i32 0, align 4
@RX6110_BIT_FLAG_VLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Voltage low, data loss detected.\0A\00", align 1
@RX6110_BIT_FLAG_AF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"An alarm may have been missed.\0A\00", align 1
@RX6110_BIT_FLAG_TF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Periodic timer was detected\0A\00", align 1
@RX6110_BIT_FLAG_UF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Update timer was detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx6110_data*)* @rx6110_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx6110_init(%struct.rx6110_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rx6110_data*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rx6110_data* %0, %struct.rx6110_data** %3, align 8
  %7 = load %struct.rx6110_data*, %struct.rx6110_data** %3, align 8
  %8 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %7, i32 0, i32 1
  %9 = load %struct.rtc_device*, %struct.rtc_device** %8, align 8
  store %struct.rtc_device* %9, %struct.rtc_device** %4, align 8
  %10 = load %struct.rx6110_data*, %struct.rx6110_data** %3, align 8
  %11 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RX6110_REG_EXT, align 4
  %14 = load i32, i32* @RX6110_BIT_EXT_TE, align 4
  %15 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %90

20:                                               ; preds = %1
  %21 = load %struct.rx6110_data*, %struct.rx6110_data** %3, align 8
  %22 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @rx6110_default_regs, align 4
  %25 = load i32, i32* @rx6110_default_regs, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @regmap_register_patch(i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %20
  %33 = load %struct.rx6110_data*, %struct.rx6110_data** %3, align 8
  %34 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RX6110_REG_FLAG, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %5)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %90

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RX6110_BIT_FLAG_VLF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %49 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @RX6110_BIT_FLAG_AF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RX6110_BIT_FLAG_TF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %66, i32 0, i32 0
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @RX6110_BIT_FLAG_UF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %75, i32 0, i32 0
  %77 = call i32 @dev_warn(i32* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.rx6110_data*, %struct.rx6110_data** %3, align 8
  %80 = getelementptr inbounds %struct.rx6110_data, %struct.rx6110_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RX6110_REG_FLAG, align 4
  %83 = load i32, i32* @RX6110_BIT_FLAG_AF, align 4
  %84 = load i32, i32* @RX6110_BIT_FLAG_UF, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RX6110_BIT_FLAG_TF, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %87, i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %78, %40, %30, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
