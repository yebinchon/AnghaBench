; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_out_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_out_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"INITIATE_ABORT_BULK_OUT returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CHECK_ABORT_BULK_OUT returned %x\0A\00", align 1
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*, i32)* @usbtmc_ioctl_abort_bulk_out_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_abort_bulk_out_tag(%struct.usbtmc_device_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtmc_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %11 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 8, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %146

21:                                               ; preds = %2
  %22 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %23 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %26 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvctrlpipe(i32 %27, i32 0)
  %29 = load i32, i32* @USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT, align 4
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = load i32, i32* @USB_TYPE_CLASS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %37 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %24, i32 %28, i32 %29, i32 %34, i32 %35, i32 %38, i32* %39, i32 2, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %21
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %142

48:                                               ; preds = %21
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EPERM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %142

67:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %119, %67
  %69 = call i32 @msleep(i32 50)
  %70 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %71 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %74 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usb_rcvctrlpipe(i32 %75, i32 0)
  %77 = load i32, i32* @USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS, align 4
  %78 = load i32, i32* @USB_DIR_IN, align 4
  %79 = load i32, i32* @USB_TYPE_CLASS, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %84 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %88 = call i32 @usb_control_msg(i32 %72, i32 %76, i32 %77, i32 %82, i32 0, i32 %85, i32* %86, i32 8, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %68
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %142

97:                                               ; preds = %68
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_dbg(%struct.device* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %123

109:                                              ; preds = %97
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %68

120:                                              ; preds = %115, %109
  %121 = load i32, i32* @EPERM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %142

123:                                              ; preds = %108
  %124 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %125 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %128 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %131 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @usb_sndbulkpipe(i32 %129, i32 %132)
  %134 = call i32 @usb_clear_halt(i32 %126, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %123
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %142

141:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %137, %120, %93, %59, %44
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %18
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
