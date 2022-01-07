; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_in_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_abort_bulk_in_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@USBTMC_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_ABORT_BULK_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"INITIATE_ABORT_BULK_IN returned %x with tag %02x\0A\00", align 1
@USBTMC_STATUS_FAILED = common dso_local global i32 0, align 4
@USBTMC_STATUS_TRANSFER_NOT_IN_PROGRESS = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"INITIATE_ABORT_BULK_IN returned %x\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Reading from bulk in EP\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"usbtmc \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"usb_bulk_msg returned %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Couldn't clear device buffer within %d cycles\0A\00", align 1
@USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"CHECK_ABORT_BULK_IN returned %x\0A\00", align 1
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*, i32)* @usbtmc_ioctl_abort_bulk_in_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_abort_bulk_in_tag(%struct.usbtmc_device_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtmc_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %12 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %204

23:                                               ; preds = %2
  %24 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %25 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @USBTMC_REQUEST_INITIATE_ABORT_BULK_IN, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_CLASS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %39 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %43 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 %37, i32 %40, i32* %41, i32 2, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %200

50:                                               ; preds = %23
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @USBTMC_STATUS_FAILED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %200

65:                                               ; preds = %50
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USBTMC_STATUS_TRANSFER_NOT_IN_PROGRESS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOMSG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %200

74:                                               ; preds = %65
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EPERM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %200

88:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %196, %127, %88
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %92 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %93 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %96 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %99 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @usb_rcvbulkpipe(i32 %97, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %104 = call i32 @usb_bulk_msg(i32 %94, i32 %101, i32* %102, i32 %103, i32* %10, i32 300)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 16, i32 1, i32* %106, i32 %107, i32 1)
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %89
  %114 = load %struct.device*, %struct.device** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %200

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %89
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %89

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %135 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %200

138:                                              ; preds = %128
  %139 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %140 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %143 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @usb_rcvctrlpipe(i32 %144, i32 0)
  %146 = load i32, i32* @USBTMC_REQUEST_CHECK_ABORT_BULK_IN_STATUS, align 4
  %147 = load i32, i32* @USB_DIR_IN, align 4
  %148 = load i32, i32* @USB_TYPE_CLASS, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %4, align 8
  %153 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %157 = call i32 @usb_control_msg(i32 %141, i32 %145, i32 %146, i32 %151, i32 0, i32 %154, i32* %155, i32 8, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %138
  %161 = load %struct.device*, %struct.device** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @dev_err(%struct.device* %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %200

164:                                              ; preds = %138
  %165 = load %struct.device*, %struct.device** %7, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %6, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  store i32 0, i32* %8, align 4
  br label %200

176:                                              ; preds = %164
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.device*, %struct.device** %7, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dev_err(%struct.device* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @EPERM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %8, align 4
  br label %200

190:                                              ; preds = %176
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %89

197:                                              ; preds = %190
  %198 = load i32, i32* @EAGAIN, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %197, %182, %175, %160, %132, %121, %80, %71, %64, %46
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @kfree(i32* %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %200, %20
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
