; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_freecom.c_init_freecom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_freecom.c_init_freecom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"String returned from FC init is: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"result from activate reset is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"result from clear reset is %d\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @init_freecom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_freecom(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %5 = load %struct.us_data*, %struct.us_data** %2, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load %struct.us_data*, %struct.us_data** %2, align 8
  %9 = load %struct.us_data*, %struct.us_data** %2, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 3, %13
  %15 = call i32 @usb_stor_control_msg(%struct.us_data* %8, i32 %11, i32 76, i32 192, i32 17222, i32 0, i8* %12, i32 32, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 32
  store i8 0, i8* %17, align 1
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.us_data*, %struct.us_data** %2, align 8
  %22 = load %struct.us_data*, %struct.us_data** %2, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 3, %25
  %27 = call i32 @usb_stor_control_msg(%struct.us_data* %21, i32 %24, i32 77, i32 64, i32 9432, i32 0, i8* null, i32 0, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.us_data*, %struct.us_data** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = call i32 @msleep(i32 250)
  %32 = load %struct.us_data*, %struct.us_data** %2, align 8
  %33 = load %struct.us_data*, %struct.us_data** %2, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 3, %36
  %38 = call i32 @usb_stor_control_msg(%struct.us_data* %32, i32 %35, i32 77, i32 64, i32 9464, i32 0, i8* null, i32 0, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.us_data*, %struct.us_data** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @msleep(i32 3000)
  %43 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  ret i32 %43
}

declare dso_local i32 @usb_stor_control_msg(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
