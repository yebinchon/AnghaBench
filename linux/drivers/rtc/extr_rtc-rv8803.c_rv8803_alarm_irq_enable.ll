; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rv8803_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RV8803_CTRL_UIE = common dso_local global i32 0, align 4
@RV8803_CTRL_AIE = common dso_local global i32 0, align 4
@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_FLAG_AF = common dso_local global i32 0, align 4
@RV8803_FLAG_UF = common dso_local global i32 0, align 4
@RV8803_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rv8803_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rv8803_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.rv8803_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.rv8803_data* %14, %struct.rv8803_data** %7, align 8
  %15 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %16 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %22 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %34 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %32
  br label %72

45:                                               ; preds = %2
  %46 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %47 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %60 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %58
  br label %72

72:                                               ; preds = %71, %44
  %73 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %74 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %77 = load i32, i32* @RV8803_FLAG, align 4
  %78 = call i32 @rv8803_read_reg(%struct.i2c_client* %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %83 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %126

86:                                               ; preds = %72
  %87 = load i32, i32* @RV8803_FLAG_AF, align 4
  %88 = load i32, i32* @RV8803_FLAG_UF, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %94 = load i32, i32* @RV8803_FLAG, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @rv8803_write_reg(%struct.i2c_client* %93, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %98 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %97, i32 0, i32 1
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %126

104:                                              ; preds = %86
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %107 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %113 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %115 = load i32, i32* @RV8803_CTRL, align 4
  %116 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %117 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @rv8803_write_reg(%struct.i2c_client* %114, i32 %115, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %126

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %104
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122, %102, %81
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rv8803_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rv8803_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rv8803_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
