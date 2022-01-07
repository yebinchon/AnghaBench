; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32 }

@M41T80_REG_ALARM_MON = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@M41T80_REG_FLAGS = common dso_local global i32 0, align 4
@M41T80_ALMON_AFE = common dso_local global i32 0, align 4
@M41T80_FLAGS_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @m41t80_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %15 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %12, i32 %13, i32 5, i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ]
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %97

36:                                               ; preds = %28
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %38 = load i32, i32* %37, align 16
  %39 = and i32 %38, 127
  %40 = call i8* @bcd2bin(i32 %39)
  %41 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 127
  %47 = call i8* @bcd2bin(i32 %46)
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 63
  %54 = call i8* @bcd2bin(i32 %53)
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 63
  %61 = call i8* @bcd2bin(i32 %60)
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = and i32 %66, 63
  %68 = call i8* @bcd2bin(i32 %67)
  %69 = getelementptr i8, i8* %68, i64 -1
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = load i32, i32* @M41T80_ALMON_AFE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @M41T80_FLAGS_AF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %36
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br label %92

92:                                               ; preds = %87, %36
  %93 = phi i1 [ false, %36 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %34, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
