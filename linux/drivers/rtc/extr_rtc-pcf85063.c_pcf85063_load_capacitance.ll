; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_load_capacitance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_load_capacitance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf85063 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"quartz-load-femtofarads\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Unknown quartz-load-femtofarads value: %d. Assuming 7000\00", align 1
@PCF85063_REG_CTRL1_CAP_SEL = common dso_local global i32 0, align 4
@PCF85063_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf85063*, %struct.device_node*, i32)* @pcf85063_load_capacitance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_load_capacitance(%struct.pcf85063* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.pcf85063*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcf85063* %0, %struct.pcf85063** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 7000, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %7, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %7)
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %18 [
    i32 7000, label %25
    i32 12500, label %26
  ]

18:                                               ; preds = %16
  %19 = load %struct.pcf85063*, %struct.pcf85063** %4, align 8
  %20 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %16, %18
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @PCF85063_REG_CTRL1_CAP_SEL, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load %struct.pcf85063*, %struct.pcf85063** %4, align 8
  %30 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCF85063_REG_CTRL1, align 4
  %33 = load i32, i32* @PCF85063_REG_CTRL1_CAP_SEL, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
