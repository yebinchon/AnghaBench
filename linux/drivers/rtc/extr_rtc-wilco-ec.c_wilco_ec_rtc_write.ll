; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wilco-ec.c_wilco_ec_rtc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wilco-ec.c_wilco_ec_rtc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wilco_ec_device = type { i32 }
%struct.ec_rtc_write_request = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.wilco_ec_message = type { i32, %struct.ec_rtc_write_request*, i32 }

@EC_COMMAND_CMOS = common dso_local global i32 0, align 4
@EC_CMOS_TOD_WRITE = common dso_local global i32 0, align 4
@WILCO_EC_MSG_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @wilco_ec_rtc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilco_ec_rtc_write(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.wilco_ec_device*, align 8
  %7 = alloca %struct.ec_rtc_write_request, align 8
  %8 = alloca %struct.wilco_ec_message, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wilco_ec_device* @dev_get_drvdata(i32 %14)
  store %struct.wilco_ec_device* %15, %struct.wilco_ec_device** %6, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1900
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi i32 [ 0, %24 ], [ %29, %25 ]
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @EC_COMMAND_CMOS, align 4
  %33 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @EC_CMOS_TOD_WRITE, align 4
  %35 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 8
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 100
  %38 = call i8* @bin2bcd(i32 %37)
  %39 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 7
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = srem i32 %40, 100
  %42 = call i8* @bin2bcd(i32 %41)
  %43 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 6
  store i8* %42, i8** %43, align 8
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8* @bin2bcd(i32 %47)
  %49 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 5
  store i8* %48, i8** %49, align 8
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @bin2bcd(i32 %52)
  %54 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @bin2bcd(i32 %57)
  %59 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @bin2bcd(i32 %62)
  %64 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @bin2bcd(i32 %67)
  %69 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @bin2bcd(i32 %70)
  %72 = getelementptr inbounds %struct.ec_rtc_write_request, %struct.ec_rtc_write_request* %7, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = call i32 @memset(%struct.wilco_ec_message* %8, i32 0, i32 24)
  %74 = load i32, i32* @WILCO_EC_MSG_LEGACY, align 4
  %75 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 1
  store %struct.ec_rtc_write_request* %7, %struct.ec_rtc_write_request** %76, align 8
  %77 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %8, i32 0, i32 0
  store i32 72, i32* %77, align 8
  %78 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %6, align 8
  %79 = call i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %78, %struct.wilco_ec_message* %8)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %30
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.wilco_ec_device* @dev_get_drvdata(i32) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @memset(%struct.wilco_ec_message*, i32, i32) #1

declare dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device*, %struct.wilco_ec_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
