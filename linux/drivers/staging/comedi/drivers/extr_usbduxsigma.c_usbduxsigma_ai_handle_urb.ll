; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ai_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i64, i64, i32* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64 }
%struct.urb = type { i64, i32, i32 }

@EXDEV = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"urb resubmit failed (%d)\0A\00", align 1
@EL2NSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"buggy USB host controller or bug in IRQ handler\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.urb*)* @usbduxsigma_ai_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsigma_ai_handle_urb(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbduxsigma_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %14, align 8
  store %struct.usbduxsigma_private* %15, %struct.usbduxsigma_private** %7, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.comedi_async*, %struct.comedi_async** %17, align 8
  store %struct.comedi_async* %18, %struct.comedi_async** %8, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 2
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %9, align 8
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %3
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EXDEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %25
  %33 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %34 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %38 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %32
  %42 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %43 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %46 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %73, %41
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %55 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 16777215
  store i32 %64, i32* %10, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %69 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %68, i32* %10, i32 1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %53
  br label %137

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %47

76:                                               ; preds = %47
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

97:                                               ; preds = %96, %32
  br label %98

98:                                               ; preds = %97, %25, %3
  %99 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %100 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %137, label %105

105:                                              ; preds = %98
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = call i32 @comedi_to_usb_dev(%struct.comedi_device* %106)
  %108 = load %struct.urb*, %struct.urb** %6, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.urb*, %struct.urb** %6, align 8
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call i32 @usb_submit_urb(%struct.urb* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %105
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @EL2NSYNC, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %127 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %115
  %131 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %132 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %133 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %105
  br label %137

137:                                              ; preds = %71, %136, %98
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

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
