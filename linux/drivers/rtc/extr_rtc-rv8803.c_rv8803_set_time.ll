; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rv8803_data = type { i32, i32 }

@RV8803_CTRL = common dso_local global i32 0, align 4
@RV8803_CTRL_RESET = common dso_local global i32 0, align 4
@RV8803_SEC = common dso_local global i64 0, align 8
@RV8803_MIN = common dso_local global i64 0, align 8
@RV8803_HOUR = common dso_local global i64 0, align 8
@RV8803_WEEK = common dso_local global i64 0, align 8
@RV8803_DAY = common dso_local global i64 0, align 8
@RV8803_MONTH = common dso_local global i64 0, align 8
@RV8803_YEAR = common dso_local global i64 0, align 8
@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_FLAG_V1F = common dso_local global i32 0, align 4
@RV8803_FLAG_V2F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rv8803_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rv8803_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rv8803_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rv8803_data* %12, %struct.rv8803_data** %6, align 8
  %13 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %14 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RV8803_CTRL, align 4
  %17 = call i32 @rv8803_read_reg(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %24 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RV8803_CTRL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RV8803_CTRL_RESET, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rv8803_write_reg(i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %136

35:                                               ; preds = %22
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bin2bcd(i64 %38)
  %40 = load i64, i64* @RV8803_SEC, align 8
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %40
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @bin2bcd(i64 %44)
  %46 = load i64, i64* @RV8803_MIN, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %46
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bin2bcd(i64 %50)
  %52 = load i64, i64* @RV8803_HOUR, align 8
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %52
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load i64, i64* @RV8803_WEEK, align 8
  %59 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %58
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bin2bcd(i64 %62)
  %64 = load i64, i64* @RV8803_DAY, align 8
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %64
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = call i32 @bin2bcd(i64 %69)
  %71 = load i64, i64* @RV8803_MONTH, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %71
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 100
  %77 = call i32 @bin2bcd(i64 %76)
  %78 = load i64, i64* @RV8803_YEAR, align 8
  %79 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %78
  store i32 %77, i32* %79, align 4
  %80 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %81 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @RV8803_SEC, align 8
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %85 = call i32 @rv8803_write_regs(i32 %82, i64 %83, i32 7, i32* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %35
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %136

90:                                               ; preds = %35
  %91 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %92 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RV8803_CTRL, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @RV8803_CTRL_RESET, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = call i32 @rv8803_write_reg(i32 %93, i32 %94, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %136

104:                                              ; preds = %90
  %105 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %106 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %105, i32 0, i32 0
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %109 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RV8803_FLAG, align 4
  %112 = call i32 @rv8803_read_reg(i32 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %104
  %116 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %117 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %136

120:                                              ; preds = %104
  %121 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %122 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RV8803_FLAG, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @RV8803_FLAG_V1F, align 4
  %127 = load i32, i32* @RV8803_FLAG_V2F, align 4
  %128 = or i32 %126, %127
  %129 = xor i32 %128, -1
  %130 = and i32 %125, %129
  %131 = call i32 @rv8803_write_reg(i32 %123, i32 %124, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %133 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %120, %115, %102, %88, %33, %20
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.rv8803_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rv8803_read_reg(i32, i32) #1

declare dso_local i32 @rv8803_write_reg(i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @rv8803_write_regs(i32, i64, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
