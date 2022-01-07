; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_get_max_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_realtek_cr.c_rts51x_get_max_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32*, i32, i32 }

@US_BULK_GET_MAX_LUN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"GetMaxLUN command result is %d, data is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @rts51x_get_max_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts51x_get_max_lun(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @US_BULK_GET_MAX_LUN, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = load i32, i32* @USB_TYPE_CLASS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.us_data*, %struct.us_data** %3, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 10, %25
  %27 = call i32 @usb_stor_control_msg(%struct.us_data* %9, i32 %12, i32 %13, i32 %18, i32 0, i32 %21, i32* %24, i32 1, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.us_data*, %struct.us_data** %3, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load %struct.us_data*, %struct.us_data** %3, align 8
  %40 = getelementptr inbounds %struct.us_data, %struct.us_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @usb_stor_control_msg(%struct.us_data*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
