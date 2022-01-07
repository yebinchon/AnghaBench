; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_isd200.c_isd200_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64 }
%struct.isd200_info = type { i32 }

@ISD200_GOOD = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"   ISD200 Config Data was written successfully\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"   Request to write ISD200 Config Data failed!\0A\00", align 1
@ISD200_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Leaving isd200_write_config %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @isd200_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isd200_write_config(%struct.us_data* %0) #0 {
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
  %12 = load %struct.us_data*, %struct.us_data** %2, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_DIR_OUT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.isd200_info*, %struct.isd200_info** %3, align 8
  %21 = getelementptr inbounds %struct.isd200_info, %struct.isd200_info* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to i8*
  %23 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %11, i32 %14, i32 1, i32 %19, i32 0, i32 2, i8* %22, i32 4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.us_data*, %struct.us_data** %2, align 8
  %28 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.us_data*, %struct.us_data** %2, align 8
  %31 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ISD200_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.us_data*, %struct.us_data** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
