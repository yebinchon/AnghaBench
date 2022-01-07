; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i8, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8, i8, i8, i8 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_GET_CAPABILITIES = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GET_CAPABILITIES returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i8 0, align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Interface capabilities are %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Device capabilities are %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"USB488 interface capabilities are %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"USB488 device capabilities are %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @get_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_capabilities(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  %7 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %8 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 24, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %127

18:                                               ; preds = %1
  %19 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %20 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %23 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i32 @usb_rcvctrlpipe(%struct.TYPE_5__* %24, i32 0)
  %26 = load i32, i32* @USBTMC_REQUEST_GET_CAPABILITIES, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_TYPE_CLASS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = or i32 %29, %30
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %34 = call i32 @usb_control_msg(%struct.TYPE_5__* %21, i32 %25, i32 %26, i32 %31, i32 0, i32 0, i8* %32, i32 24, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = trunc i32 %39 to i8
  %41 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %40)
  br label %123

42:                                               ; preds = %18
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 signext %46)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @USBTMC_STATUS_SUCCESS, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 signext %59)
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %123

63:                                               ; preds = %42
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8 signext %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8 signext %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 14
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8 signext %77)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 15
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8 signext %82)
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %88 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i8 %86, i8* %89, align 1
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 5
  %92 = load i8, i8* %91, align 1
  %93 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %94 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8 %92, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 14
  %98 = load i8, i8* %97, align 1
  %99 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %100 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i8 %98, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 15
  %104 = load i8, i8* %103, align 1
  %105 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %106 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i8 %104, i8* %107, align 1
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 14
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 7
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 15
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = and i32 %116, 15
  %118 = shl i32 %117, 4
  %119 = or i32 %112, %118
  %120 = trunc i32 %119 to i8
  %121 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %122 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %121, i32 0, i32 0
  store i8 %120, i8* %122, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %63, %55, %37
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @kfree(i8* %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %15
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8 signext) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8 signext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
