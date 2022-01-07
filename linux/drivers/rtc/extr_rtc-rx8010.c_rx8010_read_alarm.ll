; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }
%struct.rx8010_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@RX8010_ALMIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RX8010_FLAG = common dso_local global i32 0, align 4
@RX8010_ALARM_AE = common dso_local global i32 0, align 4
@RX8010_CTRL_AIE = common dso_local global i32 0, align 4
@RX8010_FLAG_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rx8010_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rx8010_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.rx8010_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.rx8010_data* %12, %struct.rx8010_data** %6, align 8
  %13 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %14 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %13, i32 0, i32 1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %7, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %17 = load i32, i32* @RX8010_ALMIN, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %19 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %16, i32 %17, i32 3, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %34 = load i32, i32* @RX8010_FLAG, align 4
  %35 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %32
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i8* %47, i8** %50, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 63
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RX8010_ALARM_AE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %40
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 127
  %67 = call i8* @bcd2bin(i32 %66)
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %40
  %72 = load %struct.rx8010_data*, %struct.rx8010_data** %6, align 8
  %73 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RX8010_CTRL_AIE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @RX8010_FLAG_AF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %71
  %93 = phi i1 [ false, %71 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %38, %30
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.rx8010_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
