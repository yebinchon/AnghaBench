; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_get_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_get_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { %struct.usb_device* }
%struct.usb_device = type { i32, %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usbip_header = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@USBIP_DIR_IN = common dso_local global i32 0, align 4
@USBIP_DIR_OUT = common dso_local global i32 0, align 4
@USBIP_MAX_ISO_PACKETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"CMD_SUBMIT: isoc invalid num packets %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_SUBMIT: invalid epnum %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stub_device*, %struct.usbip_header*)* @get_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pipe(%struct.stub_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca %struct.usbip_header*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stub_device* %0, %struct.stub_device** %4, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %5, align 8
  %11 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %12 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %8, align 8
  %14 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %15 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %19 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 15
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %2
  br label %148

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @USBIP_DIR_IN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 2
  %35 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 127
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %35, i64 %38
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %39, align 8
  store %struct.usb_host_endpoint* %40, %struct.usb_host_endpoint** %7, align 8
  br label %50

41:                                               ; preds = %28
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 1
  %44 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 127
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %44, i64 %47
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %48, align 8
  store %struct.usb_host_endpoint* %49, %struct.usb_host_endpoint** %7, align 8
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %52 = icmp ne %struct.usb_host_endpoint* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %148

54:                                               ; preds = %50
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %56, %struct.usb_endpoint_descriptor** %8, align 8
  %57 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %58 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @USBIP_DIR_OUT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @usb_sndctrlpipe(%struct.usb_device* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %155

68:                                               ; preds = %60
  %69 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %155

72:                                               ; preds = %54
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %74 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @USBIP_DIR_OUT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @usb_sndbulkpipe(%struct.usb_device* %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %155

84:                                               ; preds = %76
  %85 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %155

88:                                               ; preds = %72
  %89 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %90 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @USBIP_DIR_OUT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @usb_sndintpipe(%struct.usb_device* %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %155

100:                                              ; preds = %92
  %101 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @usb_rcvintpipe(%struct.usb_device* %101, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %155

104:                                              ; preds = %88
  %105 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %106 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %104
  %109 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %110 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %108
  %116 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %117 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @USBIP_MAX_ISO_PACKETS, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %115, %108
  %124 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %125 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %124, i32 0, i32 0
  %126 = load %struct.usb_device*, %struct.usb_device** %125, align 8
  %127 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %126, i32 0, i32 0
  %128 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %129 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %133)
  store i32 -1, i32* %3, align 4
  br label %155

135:                                              ; preds = %115
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @USBIP_DIR_OUT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @usb_sndisocpipe(%struct.usb_device* %140, i32 %141)
  store i32 %142, i32* %3, align 4
  br label %155

143:                                              ; preds = %135
  %144 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @usb_rcvisocpipe(%struct.usb_device* %144, i32 %145)
  store i32 %146, i32* %3, align 4
  br label %155

147:                                              ; preds = %104
  br label %148

148:                                              ; preds = %147, %53, %27
  %149 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %150 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %149, i32 0, i32 0
  %151 = load %struct.usb_device*, %struct.usb_device** %150, align 8
  %152 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %151, i32 0, i32 0
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @dev_err(i32* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  store i32 -1, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %143, %139, %123, %100, %96, %84, %80, %68, %64
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
