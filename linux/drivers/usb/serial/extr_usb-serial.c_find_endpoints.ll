; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_host_interface*, %struct.device }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_serial_endpoints = type { i32, %struct.usb_endpoint_descriptor**, i32, %struct.usb_endpoint_descriptor**, i32, %struct.usb_endpoint_descriptor**, i32, %struct.usb_endpoint_descriptor** }

@USB_MAXENDPOINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"found bulk in on endpoint %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"found bulk out on endpoint %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"found interrupt in on endpoint %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"found interrupt out on endpoint %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_endpoints(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_endpoints*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %4, align 8
  %9 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %10 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %14 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %13, i32 0, i32 7
  %15 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.usb_endpoint_descriptor** %15)
  %17 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp slt i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %23 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %22, i32 0, i32 5
  %24 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.usb_endpoint_descriptor** %24)
  %26 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp slt i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  %31 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %32 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %31, i32 0, i32 3
  %33 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %32, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.usb_endpoint_descriptor** %33)
  %35 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp slt i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUILD_BUG_ON(i32 %38)
  %40 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %41 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %40, i32 0, i32 1
  %42 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %41, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.usb_endpoint_descriptor** %42)
  %44 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp slt i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  %49 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %50 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.usb_host_interface*, %struct.usb_host_interface** %52, align 8
  store %struct.usb_host_interface* %53, %struct.usb_host_interface** %6, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %144, %2
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %57 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %147

61:                                               ; preds = %54
  %62 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %68, %struct.usb_endpoint_descriptor** %7, align 8
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %70 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %61
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %77 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %78 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %77, i32 0, i32 7
  %79 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %78, align 8
  %80 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %81 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %79, i64 %84
  store %struct.usb_endpoint_descriptor* %76, %struct.usb_endpoint_descriptor** %85, align 8
  br label %143

86:                                               ; preds = %61
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %88 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %95 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %96 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %95, i32 0, i32 5
  %97 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %96, align 8
  %98 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %99 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %97, i64 %102
  store %struct.usb_endpoint_descriptor* %94, %struct.usb_endpoint_descriptor** %103, align 8
  br label %142

104:                                              ; preds = %86
  %105 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %106 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %113 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %114 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %113, i32 0, i32 3
  %115 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %114, align 8
  %116 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %117 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %115, i64 %120
  store %struct.usb_endpoint_descriptor* %112, %struct.usb_endpoint_descriptor** %121, align 8
  br label %141

122:                                              ; preds = %104
  %123 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %124 = call i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %131 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %132 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %131, i32 0, i32 1
  %133 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %132, align 8
  %134 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %135 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %133, i64 %138
  store %struct.usb_endpoint_descriptor* %130, %struct.usb_endpoint_descriptor** %139, align 8
  br label %140

140:                                              ; preds = %126, %122
  br label %141

141:                                              ; preds = %140, %108
  br label %142

142:                                              ; preds = %141, %90
  br label %143

143:                                              ; preds = %142, %72
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %54

147:                                              ; preds = %54
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.usb_endpoint_descriptor**) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_out(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
