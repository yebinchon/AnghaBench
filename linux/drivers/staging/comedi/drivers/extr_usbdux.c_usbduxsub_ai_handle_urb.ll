; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_ai_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_ai_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbdux_private* }
%struct.usbdux_private = type { i64, i64, i32* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }
%struct.urb = type { i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"urb resubmit failed in int-context! err=%d\0A\00", align 1
@EL2NSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"buggy USB host controller or bug in IRQ handler!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.urb*)* @usbduxsub_ai_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsub_ai_handle_urb(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbdux_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.usbdux_private*, %struct.usbdux_private** %15, align 8
  store %struct.usbdux_private* %16, %struct.usbdux_private** %7, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %8, align 8
  %20 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 2
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %9, align 8
  %22 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %23 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %27 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %3
  %31 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %32 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %35 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %73, %30
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_RANGE(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %52 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @comedi_range_is_bipolar(%struct.comedi_subdevice* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %42
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %69 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %68, i32* %13, i32 1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %136

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %78 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TRIG_COUNT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i32, i32* @COMEDI_CB_EOA, align 4
  %92 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %82, %76
  br label %97

97:                                               ; preds = %96, %3
  %98 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %99 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %136, label %104

104:                                              ; preds = %97
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = call i32 @comedi_to_usb_dev(%struct.comedi_device* %105)
  %107 = load %struct.urb*, %struct.urb** %6, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.urb*, %struct.urb** %6, align 8
  %110 = load i32, i32* @GFP_ATOMIC, align 4
  %111 = call i32 @usb_submit_urb(%struct.urb* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %104
  %115 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @EL2NSYNC, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %114
  %130 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %131 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %132 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %104
  br label %136

136:                                              ; preds = %71, %135, %97
  ret void
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @comedi_range_is_bipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
