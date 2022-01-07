; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pcwd_private = type { i8, i8, i8, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\00", align 1
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@HID_DT_REPORT = common dso_local global i32 0, align 4
@USB_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"usb_pcwd_send_command: error in usb_control_msg for cmd 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_pcwd_private*, i8, i8*, i8*)* @usb_pcwd_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %0, i8 zeroext %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_pcwd_private*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.usb_pcwd_private* %0, %struct.usb_pcwd_private** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %14 = icmp ne %struct.usb_pcwd_private* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %17 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %135

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 6, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %135

27:                                               ; preds = %21
  %28 = load i8, i8* %7, align 1
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8 %36, i8* %38, align 1
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 5
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 0, i8* %44, align 1
  %45 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %46 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @dev_dbg(i32* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8 zeroext %51, i8 zeroext %54, i8 zeroext %57)
  %59 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %60 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %59, i32 0, i32 3
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %63 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %66 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_sndctrlpipe(i32 %67, i32 0)
  %69 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %70 = load i32, i32* @HID_DT_REPORT, align 4
  %71 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %72 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* @USB_COMMAND_TIMEOUT, align 4
  %76 = call i32 @usb_control_msg(i32 %64, i32 %68, i32 %69, i32 %70, i32 512, i32 %73, i8* %74, i32 6, i32 %75)
  %77 = icmp ne i32 %76, 6
  br i1 %77, label %78, label %89

78:                                               ; preds = %27
  %79 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %80 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8, i8* %7, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %83, i8 zeroext %85, i8 zeroext %87)
  br label %89

89:                                               ; preds = %78, %27
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @USB_COMMAND_TIMEOUT, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %111

100:                                              ; preds = %98
  %101 = call i32 @mdelay(i32 1)
  %102 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %103 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %102, i32 0, i32 3
  %104 = call i64 @atomic_read(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %100
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %90

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i8, i8* %7, align 1
  %116 = zext i8 %115 to i32
  %117 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %118 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %117, i32 0, i32 0
  %119 = load i8, i8* %118, align 8
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %116, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %124 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %8, align 8
  store i8 %125, i8* %126, align 1
  %127 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %6, align 8
  %128 = getelementptr inbounds %struct.usb_pcwd_private, %struct.usb_pcwd_private* %127, i32 0, i32 2
  %129 = load i8, i8* %128, align 2
  %130 = load i8*, i8** %9, align 8
  store i8 %129, i8* %130, align 1
  br label %131

131:                                              ; preds = %122, %114, %111
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 @kfree(i8* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %26, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
