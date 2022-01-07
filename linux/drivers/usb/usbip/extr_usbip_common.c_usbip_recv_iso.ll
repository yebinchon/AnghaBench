; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_recv_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_recv_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i64, i32 }
%struct.urb = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usbip_iso_packet_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"recv iso_frame_descriptor, %d\0A\00", align 1
@USBIP_STUB = common dso_local global i64 0, align 8
@USBIP_VUDC = common dso_local global i64 0, align 8
@SDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@VDEV_EVENT_ERROR_TCP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"total length of iso packets %d not equal to actual length of buffer %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_recv_iso(%struct.usbip_device* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbip_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usbip_device* %0, %struct.usbip_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %5, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_pipeisoc(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %161

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %161

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %161

39:                                               ; preds = %30
  %40 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %41 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @usbip_recv(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %39
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %59 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USBIP_STUB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %49
  %64 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %65 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @USBIP_VUDC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %49
  %70 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %71 = load i32, i32* @SDEV_EVENT_ERROR_TCP, align 4
  %72 = call i32 @usbip_event_add(%struct.usbip_device* %70, i32 %71)
  br label %77

73:                                               ; preds = %63
  %74 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %75 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %76 = call i32 @usbip_event_add(%struct.usbip_device* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* @EPIPE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %161

80:                                               ; preds = %39
  %81 = load i8*, i8** %6, align 8
  %82 = bitcast i8* %81 to %struct.usbip_iso_packet_descriptor*
  store %struct.usbip_iso_packet_descriptor* %82, %struct.usbip_iso_packet_descriptor** %7, align 8
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %116, %80
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %83
  %88 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %88, i64 %90
  %92 = call i32 @usbip_iso_packet_correct_endian(%struct.usbip_iso_packet_descriptor* %91, i32 0)
  %93 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %93, i64 %95
  %97 = load %struct.urb*, %struct.urb** %5, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = call i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor* %96, %struct.TYPE_4__* %102, i32 0)
  %104 = load %struct.urb*, %struct.urb** %5, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %87
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %83

119:                                              ; preds = %83
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @kfree(i8* %120)
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.urb*, %struct.urb** %5, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %159

127:                                              ; preds = %119
  %128 = load %struct.urb*, %struct.urb** %5, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 2
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %138 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @USBIP_STUB, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %127
  %143 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %144 = getelementptr inbounds %struct.usbip_device, %struct.usbip_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @USBIP_VUDC, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %127
  %149 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %150 = load i32, i32* @SDEV_EVENT_ERROR_TCP, align 4
  %151 = call i32 @usbip_event_add(%struct.usbip_device* %149, i32 %150)
  br label %156

152:                                              ; preds = %142
  %153 = load %struct.usbip_device*, %struct.usbip_device** %4, align 8
  %154 = load i32, i32* @VDEV_EVENT_ERROR_TCP, align 4
  %155 = call i32 @usbip_event_add(%struct.usbip_device* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* @EPIPE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %161

159:                                              ; preds = %119
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %156, %77, %36, %29, %25
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @usb_pipeisoc(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_recv(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i32 @usbip_iso_packet_correct_endian(%struct.usbip_iso_packet_descriptor*, i32) #1

declare dso_local i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
