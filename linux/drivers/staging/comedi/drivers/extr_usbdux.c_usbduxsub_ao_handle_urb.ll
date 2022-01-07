; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_ao_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbduxsub_ao_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbdux_private* }
%struct.usbdux_private = type { i64, i64, i64 }
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
@.str.1 = private unnamed_addr constant [41 x i8] c"ao urb resubm failed in int-cont. ret=%d\00", align 1
@EL2NSYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"buggy USB host controller or bug in IRQ handling!\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.urb*)* @usbduxsub_ao_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxsub_ao_handle_urb(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbdux_private*, align 8
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
  %17 = load %struct.usbdux_private*, %struct.usbdux_private** %16, align 8
  store %struct.usbdux_private* %17, %struct.usbdux_private** %7, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.comedi_async*, %struct.comedi_async** %19, align 8
  store %struct.comedi_async* %20, %struct.comedi_async** %8, align 8
  %21 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 2
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %9, align 8
  %23 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %24 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %28 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %120

31:                                               ; preds = %3
  %32 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %33 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %36 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %35, i32 0, i32 0
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
  br label %193

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

65:                                               ; preds = %116, %56
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %119

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
  br label %193

93:                                               ; preds = %71
  %94 = load i16, i16* %14, align 2
  %95 = zext i16 %94 to i32
  %96 = and i32 %95, 255
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i16, i16* %14, align 2
  %100 = zext i16 %99 to i32
  %101 = ashr i32 %100, 8
  %102 = and i32 %101, 255
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = shl i32 %105, 6
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i16, i16* %14, align 2
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 0
  %112 = load i16*, i16** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  store i16 %109, i16* %115, align 2
  br label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %65

119:                                              ; preds = %65
  br label %120

120:                                              ; preds = %119, %3
  %121 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %122 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %193, label %127

127:                                              ; preds = %120
  %128 = load i8*, i8** @SIZEOUTBUF, align 8
  %129 = load %struct.urb*, %struct.urb** %6, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = call i32 @comedi_to_usb_dev(%struct.comedi_device* %131)
  %133 = load %struct.urb*, %struct.urb** %6, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load %struct.urb*, %struct.urb** %6, align 8
  %136 = getelementptr inbounds %struct.urb, %struct.urb* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.usbdux_private*, %struct.usbdux_private** %7, align 8
  %138 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %127
  %142 = load %struct.urb*, %struct.urb** %6, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 0
  store i32 8, i32* %143, align 8
  br label %147

144:                                              ; preds = %127
  %145 = load %struct.urb*, %struct.urb** %6, align 8
  %146 = getelementptr inbounds %struct.urb, %struct.urb* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.urb*, %struct.urb** %6, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  %150 = load %struct.urb*, %struct.urb** %6, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i64 0, i64* %154, align 8
  %155 = load i8*, i8** @SIZEOUTBUF, align 8
  %156 = load %struct.urb*, %struct.urb** %6, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i8* %155, i8** %160, align 8
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load %struct.urb*, %struct.urb** %6, align 8
  %167 = load i32, i32* @GFP_ATOMIC, align 4
  %168 = call i32 @usb_submit_urb(%struct.urb* %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %147
  %172 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %173 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32 (i32, i8*, ...) @dev_err(i32 %174, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @EL2NSYNC, align 4
  %179 = sub nsw i32 0, %178
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %171
  %182 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @dev_err(i32 %184, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %181, %171
  %187 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %188 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %189 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %147
  br label %193

193:                                              ; preds = %50, %83, %192, %120
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
