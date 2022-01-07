; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_ao_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsigma_private* }
%struct.usbduxsigma_private = type { i64, i64 }
%struct.comedi_subdevice = type { i16*, %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i32* }
%struct.urb = type { i32, i32, %struct.TYPE_2__*, i64, i32, i8*, i32* }
%struct.TYPE_2__ = type { i64, i8*, i64 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"buffer underflow\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@SIZEOUTBUF = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"urb resubmit failed (%d)\0A\00", align 1
@EL2NSYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"buggy USB host controller or bug in IRQ handler\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.urb*)* @usbduxsigma_ao_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsigma_ao_handle_urb(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbduxsigma_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %16, align 8
  store %struct.usbduxsigma_private* %17, %struct.usbduxsigma_private** %7, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.comedi_async*, %struct.comedi_async** %19, align 8
  store %struct.comedi_async* %20, %struct.comedi_async** %8, align 8
  %21 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 2
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %9, align 8
  %23 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %24 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %28 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %112

31:                                               ; preds = %3
  %32 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %33 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.usbduxsigma_private*, %struct.usbduxsigma_private** %7, align 8
  %36 = getelementptr inbounds %struct.usbduxsigma_private, %struct.usbduxsigma_private* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TRIG_COUNT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %44 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @COMEDI_CB_EOA, align 4
  %52 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %53 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %176

56:                                               ; preds = %42, %31
  %57 = load %struct.urb*, %struct.urb** %6, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %108, %56
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %65
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CR_CHAN(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %81 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %80, i16* %14, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %71
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %89 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %90 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %176

93:                                               ; preds = %71
  %94 = load i16, i16* %14, align 2
  %95 = zext i16 %94 to i32
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %101 = load i16, i16* %14, align 2
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 0
  %104 = load i16*, i16** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %104, i64 %106
  store i16 %101, i16* %107, align 2
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %65

111:                                              ; preds = %65
  br label %112

112:                                              ; preds = %111, %3
  %113 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %114 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %176, label %119

119:                                              ; preds = %112
  %120 = load i8*, i8** @SIZEOUTBUF, align 8
  %121 = load %struct.urb*, %struct.urb** %6, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %124 = call i32 @comedi_to_usb_dev(%struct.comedi_device* %123)
  %125 = load %struct.urb*, %struct.urb** %6, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.urb*, %struct.urb** %6, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.urb*, %struct.urb** %6, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 1
  store i32 1, i32* %132, align 4
  %133 = load %struct.urb*, %struct.urb** %6, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load i8*, i8** @SIZEOUTBUF, align 8
  %139 = load %struct.urb*, %struct.urb** %6, align 8
  %140 = getelementptr inbounds %struct.urb, %struct.urb* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i8* %138, i8** %143, align 8
  %144 = load %struct.urb*, %struct.urb** %6, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.urb*, %struct.urb** %6, align 8
  %150 = load i32, i32* @GFP_ATOMIC, align 4
  %151 = call i32 @usb_submit_urb(%struct.urb* %149, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %119
  %155 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %156 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @EL2NSYNC, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %166 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %154
  %170 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %171 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %172 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %119
  br label %176

176:                                              ; preds = %50, %83, %175, %112
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
