; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_ds2404_write_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds2404.c_ds2404_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@DS2404_WRITE_SCRATCHPAD_CMD = common dso_local global i32 0, align 4
@DS2404_READ_SCRATCHPAD_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"read invalid data\0A\00", align 1
@DS2404_COPY_SCRATCHPAD_CMD = common dso_local global i32 0, align 4
@ds2404_gpio = common dso_local global %struct.TYPE_2__* null, align 8
@DS2404_DQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32, i32*)* @ds2404_write_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2404_write_memory(%struct.device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @ds2404_reset(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @DS2404_WRITE_SCRATCHPAD_CMD, align 4
  %17 = call i32 @ds2404_write_byte(%struct.device* %15, i32 %16)
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = call i32 @ds2404_write_byte(%struct.device* %18, i32 %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = call i32 @ds2404_write_byte(%struct.device* %22, i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %39, %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ds2404_write_byte(%struct.device* %32, i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @ds2404_reset(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* @DS2404_READ_SCRATCHPAD_CMD, align 4
  %47 = call i32 @ds2404_write_byte(%struct.device* %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @ds2404_read_byte(%struct.device* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @ds2404_read_byte(%struct.device* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 @ds2404_read_byte(%struct.device* %52)
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %71, %42
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @ds2404_read_byte(%struct.device* %64)
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %104

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @ds2404_reset(%struct.device* %75)
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = load i32, i32* @DS2404_COPY_SCRATCHPAD_CMD, align 4
  %79 = call i32 @ds2404_write_byte(%struct.device* %77, i32 %78)
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ds2404_write_byte(%struct.device* %80, i32 %81)
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ds2404_write_byte(%struct.device* %83, i32 %84)
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ds2404_write_byte(%struct.device* %86, i32 %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds2404_gpio, align 8
  %90 = load i64, i64* @DS2404_DQ, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @gpio_direction_input(i32 %93)
  br label %95

95:                                               ; preds = %103, %74
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds2404_gpio, align 8
  %97 = load i64, i64* @DS2404_DQ, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @gpio_get_value(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %95

104:                                              ; preds = %67, %95
  ret void
}

declare dso_local i32 @ds2404_reset(%struct.device*) #1

declare dso_local i32 @ds2404_write_byte(%struct.device*, i32) #1

declare dso_local i32 @ds2404_read_byte(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
