; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_get_datetime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_get_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.rtc_time = type { i8, i8, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@__const.pcf8583_get_datetime.addr = private unnamed_addr constant [1 x i8] c"\01", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*)* @pcf8583_get_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_get_datetime(%struct.i2c_client* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 16
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = bitcast [1 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([1 x i8], [1 x i8]* @__const.pcf8583_get_datetime.addr, i32 0, i32 0), i64 1, i1 false)
  %10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %13 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 6, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %24 = load i32, i32* @I2C_M_RD, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %30 = call i32 @memset(i8* %29, i32 0, i32 8)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %35 = call i32 @i2c_transfer(i32 %33, %struct.i2c_msg* %34, i32 2)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %89

38:                                               ; preds = %2
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = ashr i32 %41, 6
  %43 = trunc i32 %42 to i8
  %44 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 8
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = ashr i32 %48, 5
  %50 = trunc i32 %49 to i8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 1
  store i8 %50, i8* %52, align 1
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 63
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = call i8* @bcd2bin(i8 zeroext %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = call i8* @bcd2bin(i8 zeroext %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = call i8* @bcd2bin(i8 zeroext %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4
  %79 = load i8, i8* %78, align 1
  %80 = call i8* @bcd2bin(i8 zeroext %79)
  %81 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 5
  %84 = load i8, i8* %83, align 1
  %85 = call i8* @bcd2bin(i8 zeroext %84)
  %86 = getelementptr i8, i8* %85, i64 -1
  %87 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %38, %2
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  br label %96

96:                                               ; preds = %93, %92
  %97 = phi i32 [ 0, %92 ], [ %95, %93 ]
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i8* @bcd2bin(i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
