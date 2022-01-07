; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rv8803_data = type { i32, i32, %struct.i2c_client*, i32 }

@RV8803_FLAG = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RV8803_FLAG_V1F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Voltage low, temperature compensation stopped.\0A\00", align 1
@RV8803_FLAG_V2F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Voltage low, data loss detected.\0A\00", align 1
@RV8803_FLAG_TF = common dso_local global i32 0, align 4
@RV8803_CTRL_TIE = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@RV8803_FLAG_AF = common dso_local global i32 0, align 4
@RV8803_CTRL_AIE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RV8803_FLAG_UF = common dso_local global i32 0, align 4
@RV8803_CTRL_UIE = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@RV8803_CTRL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rv8803_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rv8803_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.i2c_client*
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.rv8803_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.rv8803_data* %13, %struct.rv8803_data** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %15 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @RV8803_FLAG, align 4
  %19 = call i32 @rv8803_read_reg(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %24 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @RV8803_FLAG_V1F, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RV8803_FLAG_V2F, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @RV8803_FLAG_TF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i32, i32* @RV8803_FLAG_TF, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @RV8803_CTRL_TIE, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %58 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @RTC_PF, align 8
  %62 = load i64, i64* %8, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %50, %45
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @RV8803_FLAG_AF, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32, i32* @RV8803_FLAG_AF, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %77 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i64, i64* @RTC_AF, align 8
  %81 = load i64, i64* %8, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %69, %64
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @RV8803_FLAG_UF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* @RV8803_FLAG_UF, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @RV8803_CTRL_UIE, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %96 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i64, i64* @RTC_UF, align 8
  %100 = load i64, i64* %8, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %88, %83
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %107 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @rtc_update_irq(i32 %108, i32 1, i64 %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %112 = load i32, i32* @RV8803_FLAG, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @rv8803_write_reg(%struct.i2c_client* %111, i32 %112, i32 %113)
  %115 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %116 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %115, i32 0, i32 2
  %117 = load %struct.i2c_client*, %struct.i2c_client** %116, align 8
  %118 = load i32, i32* @RV8803_CTRL, align 4
  %119 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %120 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @rv8803_write_reg(%struct.i2c_client* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %105, %102
  %124 = load %struct.rv8803_data*, %struct.rv8803_data** %7, align 8
  %125 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %22
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.rv8803_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rv8803_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

declare dso_local i32 @rv8803_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
