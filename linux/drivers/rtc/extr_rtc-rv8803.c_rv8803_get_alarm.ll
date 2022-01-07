; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_get_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_get_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }
%struct.rv8803_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@RV8803_ALARM_MIN = common dso_local global i32 0, align 4
@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_CTRL_AIE = common dso_local global i32 0, align 4
@RV8803_FLAG_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rv8803_get_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_get_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rv8803_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rv8803_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rv8803_data* %12, %struct.rv8803_data** %6, align 8
  %13 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %14 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = load i32, i32* @RV8803_ALARM_MIN, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %19 = call i32 @rv8803_read_regs(%struct.i2c_client* %16, i32 %17, i32 3, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = load i32, i32* @RV8803_FLAG, align 4
  %27 = call i32 @rv8803_read_reg(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %82

32:                                               ; preds = %24
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  %39 = call i8* @bcd2bin(i32 %38)
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 63
  %46 = call i8* @bcd2bin(i32 %45)
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  %53 = call i8* @bcd2bin(i32 %52)
  %54 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %58 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RV8803_CTRL_AIE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RV8803_FLAG_AF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %32
  %73 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %72, %32
  %78 = phi i1 [ false, %32 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %30, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.rv8803_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rv8803_read_regs(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @rv8803_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
