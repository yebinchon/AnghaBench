; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_ub6250_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ene_ub6250_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i8*, i64, i32, i64, i32 }
%struct.ene_ub6250_info = type { i32* }

@ene_ub6250_usb_ids = common dso_local global %struct.usb_device_id* null, align 8
@ene_ub6250_unusual_dev_list = common dso_local global i32 0, align 4
@ene_ub6250_host_template = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ene_ub6250_info_destructor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ene_ub6250\00", align 1
@ene_transport = common dso_local global i32 0, align 4
@REG_CARD_STATUS = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"ums_eneub6250: This driver only supports SD/MS cards. It does not support SM cards.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ene_ub6250_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_ub6250_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.us_data*, align 8
  %9 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** @ene_ub6250_usb_ids, align 8
  %14 = ptrtoint %struct.usb_device_id* %12 to i64
  %15 = ptrtoint %struct.usb_device_id* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = load i32, i32* @ene_ub6250_unusual_dev_list, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @usb_stor_probe1(%struct.us_data** %8, %struct.usb_interface* %10, %struct.usb_device_id* %11, i32 %21, i32* @ene_ub6250_host_template)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @kzalloc(i32 8, i32 %28)
  %30 = load %struct.us_data*, %struct.us_data** %8, align 8
  %31 = getelementptr inbounds %struct.us_data, %struct.us_data* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = load %struct.us_data*, %struct.us_data** %8, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %27
  %40 = load i32, i32* @ene_ub6250_info_destructor, align 4
  %41 = load %struct.us_data*, %struct.us_data** %8, align 8
  %42 = getelementptr inbounds %struct.us_data, %struct.us_data* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.us_data*, %struct.us_data** %8, align 8
  %44 = getelementptr inbounds %struct.us_data, %struct.us_data* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %46, %struct.ene_ub6250_info** %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kmalloc(i32 512, i32 %47)
  %49 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %50 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %52 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %39
  %56 = load %struct.us_data*, %struct.us_data** %8, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @kfree(i64 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %103

62:                                               ; preds = %39
  %63 = load %struct.us_data*, %struct.us_data** %8, align 8
  %64 = getelementptr inbounds %struct.us_data, %struct.us_data* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @ene_transport, align 4
  %66 = load %struct.us_data*, %struct.us_data** %8, align 8
  %67 = getelementptr inbounds %struct.us_data, %struct.us_data* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.us_data*, %struct.us_data** %8, align 8
  %69 = getelementptr inbounds %struct.us_data, %struct.us_data* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.us_data*, %struct.us_data** %8, align 8
  %71 = call i32 @usb_stor_probe2(%struct.us_data* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %62
  %77 = load %struct.us_data*, %struct.us_data** %8, align 8
  %78 = load i32, i32* @REG_CARD_STATUS, align 4
  %79 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %80 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ene_get_card_type(%struct.us_data* %77, i32 %78, i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %88 = call i32 @usb_stor_disconnect(%struct.usb_interface* %87)
  %89 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %89, i32* %3, align 4
  br label %103

90:                                               ; preds = %76
  %91 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %92 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = call i32 @pr_info(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %90
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %86, %74, %55, %36, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32, i32*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

declare dso_local i32 @ene_get_card_type(%struct.us_data*, i32, i32*) #1

declare dso_local i32 @usb_stor_disconnect(%struct.usb_interface*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
