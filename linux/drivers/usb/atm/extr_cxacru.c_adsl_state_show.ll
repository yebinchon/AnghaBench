; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_adsl_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cxacru_data = type { i32* }

@adsl_state_show.str = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CXINF_LINE_STARTABLE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adsl_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsl_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cxacru_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @to_usb_interface(%struct.device* %10)
  %12 = call %struct.cxacru_data* @to_usbatm_driver_data(i32 %11)
  store %struct.cxacru_data* %12, %struct.cxacru_data** %8, align 8
  %13 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %14 = icmp eq %struct.cxacru_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %20 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @CXINF_LINE_STARTABLE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @adsl_state_show.str, i64 0, i64 0))
  %27 = icmp sge i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %18
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* @adsl_state_show.str, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %31, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.cxacru_data* @to_usbatm_driver_data(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
