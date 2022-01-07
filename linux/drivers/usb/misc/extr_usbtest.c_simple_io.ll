; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_simple_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_simple_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.usb_device*, i32, %struct.completion* }
%struct.usb_device = type { i32 }
%struct.completion = type { i32 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIMPLE_IO_TIMEOUT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s failed, iterations left %d, status %d (not %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, %struct.urb*, i32, i32, i32, i8*)* @simple_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_io(%struct.usbtest_dev* %0, %struct.urb* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.usbtest_dev*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.completion, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %7, align 8
  store %struct.urb* %1, %struct.urb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load %struct.urb*, %struct.urb** %8, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 3
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %13, align 8
  %22 = load %struct.urb*, %struct.urb** %8, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.urb*, %struct.urb** %8, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 5
  store %struct.completion* %15, %struct.completion** %26, align 8
  br label %27

27:                                               ; preds = %131, %6
  %28 = load i32, i32* %16, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  %33 = icmp sgt i32 %31, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %132

36:                                               ; preds = %34
  %37 = call i32 @init_completion(%struct.completion* %15)
  %38 = load %struct.urb*, %struct.urb** %8, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @usb_pipeout(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.urb*, %struct.urb** %8, align 8
  %45 = call i32 @simple_fill_buf(%struct.urb* %44)
  %46 = load i32, i32* @URB_ZERO_PACKET, align 4
  %47 = load %struct.urb*, %struct.urb** %8, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @usb_submit_urb(%struct.urb* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %132

58:                                               ; preds = %51
  %59 = load i32, i32* @SIMPLE_IO_TIMEOUT, align 4
  %60 = call i64 @msecs_to_jiffies(i32 %59)
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @wait_for_completion_timeout(%struct.completion* %15, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = call i32 @usb_kill_urb(%struct.urb* %65)
  %67 = load %struct.urb*, %struct.urb** %8, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.urb*, %struct.urb** %8, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  store i32 %81, i32* %16, align 4
  br label %86

82:                                               ; preds = %58
  %83 = load %struct.urb*, %struct.urb** %8, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %82, %80
  %87 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 3
  store %struct.usb_device* %87, %struct.usb_device** %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.urb*, %struct.urb** %8, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @usb_pipein(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.usbtest_dev*, %struct.usbtest_dev** %7, align 8
  %100 = load %struct.urb*, %struct.urb** %8, align 8
  %101 = call i32 @simple_check_buf(%struct.usbtest_dev* %99, %struct.urb* %100)
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %92, %86
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load %struct.urb*, %struct.urb** %8, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %18, align 4
  %114 = srem i32 %113, %112
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  br label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %125, %105
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.urb*, %struct.urb** %8, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %102
  br label %27

132:                                              ; preds = %57, %34
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.urb*, %struct.urb** %8, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %141 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %140, i32 0, i32 0
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %142, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %132
  %148 = load i32, i32* %16, align 4
  ret i32 %148
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @simple_fill_buf(%struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i64) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @simple_check_buf(%struct.usbtest_dev*, %struct.urb*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
