; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_find_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_find_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxacru_data = type { %struct.usbatm_data* }
%struct.usbatm_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"cxacru-%s.bin\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cxacru_find_firmware: looking for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no stage %s firmware found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"found firmware %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxacru_data*, i8*, %struct.firmware**)* @cxacru_find_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_find_firmware(%struct.cxacru_data* %0, i8* %1, %struct.firmware** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxacru_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.firmware**, align 8
  %8 = alloca %struct.usbatm_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.cxacru_data* %0, %struct.cxacru_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.firmware** %2, %struct.firmware*** %7, align 8
  %11 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %12 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %11, i32 0, i32 0
  %13 = load %struct.usbatm_data*, %struct.usbatm_data** %12, align 8
  store %struct.usbatm_data* %13, %struct.usbatm_data** %8, align 8
  %14 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %15 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %23 = call i32 @usb_dbg(%struct.usbatm_data* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = call i64 @request_firmware(%struct.firmware** %24, i8* %25, %struct.device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @usb_dbg(%struct.usbatm_data* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %38 = call i32 @usb_info(%struct.usbatm_data* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @usb_dbg(%struct.usbatm_data*, i8*, i8*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @usb_info(%struct.usbatm_data*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
