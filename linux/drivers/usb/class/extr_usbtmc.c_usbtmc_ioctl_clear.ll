; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usbtmc.c_usbtmc_ioctl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtmc_device_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Sending INITIATE_CLEAR request\0A\00", align 1
@USBTMC_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USBTMC_REQUEST_INITIATE_CLEAR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"usb_control_msg returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"INITIATE_CLEAR returned %x\0A\00", align 1
@USBTMC_STATUS_SUCCESS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Sending CHECK_CLEAR_STATUS request\0A\00", align 1
@USBTMC_REQUEST_CHECK_CLEAR_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"CHECK_CLEAR_STATUS returned %x\0A\00", align 1
@USBTMC_STATUS_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Reading from bulk in EP\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"usbtmc \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@USBTMC_MAX_READS_TO_CLEAR_BULK_IN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Couldn't clear device buffer within %d cycles\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"usb_clear_halt returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtmc_device_data*)* @usbtmc_ioctl_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtmc_ioctl_clear(%struct.usbtmc_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtmc_device_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbtmc_device_data* %0, %struct.usbtmc_device_data** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %10 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %203

23:                                               ; preds = %1
  %24 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %25 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %28 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* @USBTMC_REQUEST_INITIATE_CLEAR, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_CLASS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %39 = call i32 @usb_control_msg(i32 %26, i32 %30, i32 %31, i32 %36, i32 0, i32 0, i32* %37, i32 1, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %199

46:                                               ; preds = %23
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %199

65:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %179, %65
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %70 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %73 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_rcvctrlpipe(i32 %74, i32 0)
  %76 = load i32, i32* @USBTMC_REQUEST_CHECK_CLEAR_STATUS, align 4
  %77 = load i32, i32* @USB_DIR_IN, align 4
  %78 = load i32, i32* @USB_TYPE_CLASS, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %84 = call i32 @usb_control_msg(i32 %71, i32 %75, i32 %76, i32 %81, i32 0, i32 0, i32* %82, i32 2, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %66
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %199

91:                                               ; preds = %66
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @USBTMC_STATUS_SUCCESS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %180

103:                                              ; preds = %91
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @USBTMC_STATUS_PENDING, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EPERM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %199

117:                                              ; preds = %103
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %162, %123
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %127 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %128 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %131 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %134 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @usb_rcvbulkpipe(i32 %132, i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %139 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %140 = call i32 @usb_bulk_msg(i32 %129, i32 %136, i32* %137, i32 %138, i32* %8, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 16, i32 1, i32* %142, i32 %143, i32 1)
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %124
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %199

153:                                              ; preds = %124
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @USBTMC_BUFSIZE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %161 = icmp slt i32 %159, %160
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i1 [ false, %154 ], [ %161, %158 ]
  br i1 %163, label %124, label %164

164:                                              ; preds = %162
  br label %169

165:                                              ; preds = %117
  %166 = call i32 @msleep(i32 50)
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = load i32, i32* @USBTMC_MAX_READS_TO_CLEAR_BULK_IN, align 4
  %176 = call i32 @dev_err(%struct.device* %174, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @EPERM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %6, align 4
  br label %199

179:                                              ; preds = %169
  br label %66

180:                                              ; preds = %102
  %181 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %182 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %185 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %3, align 8
  %188 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @usb_sndbulkpipe(i32 %186, i32 %189)
  %191 = call i32 @usb_clear_halt(i32 %183, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %180
  %195 = load %struct.device*, %struct.device** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  br label %199

198:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %194, %173, %149, %109, %87, %57, %42
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @kfree(i32* %200)
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %199, %20
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i32*, i32, i32) #1

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
