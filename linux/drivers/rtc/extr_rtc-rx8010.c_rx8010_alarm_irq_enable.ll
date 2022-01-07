; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rx8010_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RX8010_CTRL_UIE = common dso_local global i32 0, align 4
@RX8010_CTRL_AIE = common dso_local global i32 0, align 4
@RX8010_FLAG = common dso_local global i32 0, align 4
@RX8010_FLAG_AF = common dso_local global i32 0, align 4
@RX8010_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rx8010_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rx8010_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.rx8010_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.rx8010_data* %14, %struct.rx8010_data** %7, align 8
  %15 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %16 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %22 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %34 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %42 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %32
  br label %74

47:                                               ; preds = %2
  %48 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %49 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @RX8010_CTRL_UIE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %62 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %60
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %76 = load i32, i32* @RX8010_FLAG, align 4
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %121

82:                                               ; preds = %74
  %83 = load i32, i32* @RX8010_FLAG_AF, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %88 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RX8010_FLAG, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @i2c_smbus_write_byte_data(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %121

97:                                               ; preds = %82
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %100 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %106 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %108 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RX8010_CTRL, align 4
  %111 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %112 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @i2c_smbus_write_byte_data(i32 %109, i32 %110, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %121

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %97
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %95, %80
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rx8010_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
