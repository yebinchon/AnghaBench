; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64 }
%struct.isd200_info = type { i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Entering isd200_read_config\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"   Retrieved the following ISD200 Config Data:\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"   Request to get ISD200 Config Data failed!\0A\00", align 1
@ISD200_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Leaving isd200_read_config %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_read_config(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.isd200_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.isd200_info*
  store %struct.isd200_info* %9, %struct.isd200_info** %3, align 8
  %10 = load i32, i32* @ISD200_GOOD, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.us_data*, %struct.us_data** %2, align 8
  %12 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = load %struct.us_data*, %struct.us_data** %2, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %18 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %23 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %13, i32 %16, i32 2, i32 %21, i32 0, i32 2, i8* %24, i32 4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.us_data*, %struct.us_data** %2, align 8
  %30 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.us_data*, %struct.us_data** %2, align 8
  %33 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.us_data*, %struct.us_data** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
