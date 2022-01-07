; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ABX8XX_REG_ASC = common dso_local global i32 0, align 4
@ABX8XX_REG_IRQ = common dso_local global i32 0, align 4
@ABX8XX_IRQ_AIE = common dso_local global i32 0, align 4
@ABX8XX_STATUS_AF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @abx80x_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [7 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %118

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = load i32, i32* @ABX8XX_REG_ASC, align 4
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %23 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %20, i32 %21, i32 7, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %19
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = load i32, i32* @ABX8XX_REG_IRQ, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %118

36:                                               ; preds = %28
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 127
  %41 = trunc i32 %40 to i8
  %42 = call i8* @bcd2bin(i8 zeroext %41)
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i8* %42, i8** %45, align 8
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 127
  %50 = trunc i32 %49 to i8
  %51 = call i8* @bcd2bin(i8 zeroext %50)
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i8* %51, i8** %54, align 8
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 2
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 63
  %59 = trunc i32 %58 to i8
  %60 = call i8* @bcd2bin(i8 zeroext %59)
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 63
  %68 = trunc i32 %67 to i8
  %69 = call i8* @bcd2bin(i8 zeroext %68)
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 31
  %77 = trunc i32 %76 to i8
  %78 = call i8* @bcd2bin(i8 zeroext %77)
  %79 = getelementptr i8, i8* %78, i64 -1
  %80 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 5
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 7
  %87 = trunc i32 %86 to i8
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8 %87, i8* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @ABX8XX_IRQ_AIE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %99 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 6
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @ABX8XX_STATUS_AF, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %36
  %108 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %109 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %107, %36
  %113 = phi i1 [ false, %36 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %112, %34, %26, %16
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
