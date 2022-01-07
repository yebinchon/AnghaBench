; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_heavy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_heavy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"fw\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"firmware (cxacru-fw.bin) unavailable (system misconfigured?)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"boot ROM patch (cxacru-bp.bin) unavailable (system misconfigured?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"modem initialisation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"done setting up the modem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbatm_data*, %struct.usb_interface*)* @cxacru_heavy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_heavy_init(%struct.usbatm_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.cxacru_data*, align 8
  %9 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %10 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %11 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %10, i32 0, i32 0
  %12 = load %struct.cxacru_data*, %struct.cxacru_data** %11, align 8
  store %struct.cxacru_data* %12, %struct.cxacru_data** %8, align 8
  %13 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %14 = call i32 @cxacru_find_firmware(%struct.cxacru_data* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.firmware** %6)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %19 = call i32 @usb_warn(%struct.usbatm_data* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %23 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %30 = call i32 @cxacru_find_firmware(%struct.cxacru_data* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.firmware** %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %35 = call i32 @usb_warn(%struct.usbatm_data* %34, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.firmware*, %struct.firmware** %6, align 8
  %37 = call i32 @release_firmware(%struct.firmware* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = load %struct.firmware*, %struct.firmware** %7, align 8
  %44 = call i32 @cxacru_upload_firmware(%struct.cxacru_data* %41, %struct.firmware* %42, %struct.firmware* %43)
  %45 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %46 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.firmware*, %struct.firmware** %7, align 8
  %53 = call i32 @release_firmware(%struct.firmware* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.firmware*, %struct.firmware** %6, align 8
  %56 = call i32 @release_firmware(%struct.firmware* %55)
  %57 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  %58 = call i32 @cxacru_card_status(%struct.cxacru_data* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %63 = call i32 @usb_dbg(%struct.usbatm_data* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %67

64:                                               ; preds = %54
  %65 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %66 = call i32 @usb_dbg(%struct.usbatm_data* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %33, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @cxacru_find_firmware(%struct.cxacru_data*, i8*, %struct.firmware**) #1

declare dso_local i32 @usb_warn(%struct.usbatm_data*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @cxacru_upload_firmware(%struct.cxacru_data*, %struct.firmware*, %struct.firmware*) #1

declare dso_local i32 @cxacru_card_status(%struct.cxacru_data*) #1

declare dso_local i32 @usb_dbg(%struct.usbatm_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
