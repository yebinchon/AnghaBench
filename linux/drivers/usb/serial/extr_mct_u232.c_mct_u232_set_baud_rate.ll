; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial = type { i32 }
%struct.usb_serial_port = type { i32 }

@MCT_U232_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCT_U232_SET_BAUD_RATE_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_REQUEST_TYPE = common dso_local global i32 0, align 4
@MCT_U232_SET_BAUD_RATE_SIZE = common dso_local global i32 0, align 4
@WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Set BAUD RATE %d failed (error = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"set_baud_rate: value: 0x%x, divisor: 0x%x\0A\00", align 1
@MCT_U232_SET_UNKNOWN1_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_UNKNOWN1_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Sending USB device request code %d failed (error = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"set_baud_rate: send second control message, data = %02X\0A\00", align 1
@MCT_U232_SET_CTS_REQUEST = common dso_local global i32 0, align 4
@MCT_U232_SET_CTS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial*, %struct.usb_serial_port*, i32)* @mct_u232_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mct_u232_set_baud_rate(%struct.tty_struct* %0, %struct.usb_serial* %1, %struct.usb_serial_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.usb_serial*, align 8
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.usb_serial* %1, %struct.usb_serial** %7, align 8
  store %struct.usb_serial_port* %2, %struct.usb_serial_port** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %13, align 1
  %15 = load i32, i32* @MCT_U232_MAX_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %127

23:                                               ; preds = %4
  %24 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mct_u232_calculate_baud_rate(%struct.usb_serial* %24, i32 %25, i32* %14)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @put_unaligned_le32(i32 %27, i8* %28)
  %30 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %31 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %34 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* @MCT_U232_SET_BAUD_RATE_REQUEST, align 4
  %38 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @MCT_U232_SET_BAUD_RATE_SIZE, align 4
  %41 = load i32, i32* @WDR_TIMEOUT, align 4
  %42 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 %37, i32 %38, i32 0, i32 0, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %23
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %23
  %52 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %60, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  %65 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %66 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %69 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_sndctrlpipe(i32 %70, i32 0)
  %72 = load i32, i32* @MCT_U232_SET_UNKNOWN1_REQUEST, align 4
  %73 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* @MCT_U232_SET_UNKNOWN1_SIZE, align 4
  %76 = load i32, i32* @WDR_TIMEOUT, align 4
  %77 = call i32 @usb_control_msg(i32 %67, i32 %71, i32 %72, i32 %73, i32 0, i32 0, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %56
  %81 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %82 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %81, i32 0, i32 0
  %83 = load i32, i32* @MCT_U232_SET_UNKNOWN1_REQUEST, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %56
  %87 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %88 = icmp ne %struct.usb_serial_port* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %91 = call i64 @C_CRTSCTS(%struct.tty_struct* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8 1, i8* %13, align 1
  br label %94

94:                                               ; preds = %93, %89, %86
  %95 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %96 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %95, i32 0, i32 0
  %97 = load i8, i8* %13, align 1
  %98 = call i32 (i32*, i8*, i8, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %97)
  %99 = load i8, i8* %13, align 1
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 %99, i8* %101, align 1
  %102 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %103 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  %106 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @usb_sndctrlpipe(i32 %107, i32 0)
  %109 = load i32, i32* @MCT_U232_SET_CTS_REQUEST, align 4
  %110 = load i32, i32* @MCT_U232_SET_REQUEST_TYPE, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* @MCT_U232_SET_CTS_SIZE, align 4
  %113 = load i32, i32* @WDR_TIMEOUT, align 4
  %114 = call i32 @usb_control_msg(i32 %104, i32 %108, i32 %109, i32 %110, i32 0, i32 0, i8* %111, i32 %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %94
  %118 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %119 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %118, i32 0, i32 0
  %120 = load i32, i32* @MCT_U232_SET_CTS_REQUEST, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %94
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @kfree(i8* %124)
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %20
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mct_u232_calculate_baud_rate(%struct.usb_serial*, i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, ...) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
