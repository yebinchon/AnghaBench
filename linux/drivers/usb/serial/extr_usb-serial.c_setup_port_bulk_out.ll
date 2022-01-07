; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_bulk_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_bulk_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device*, %struct.usb_serial_driver* }
%struct.usb_device = type { i32 }
%struct.usb_serial_driver = type { i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, %struct.usb_endpoint_descriptor*)* @setup_port_bulk_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_port_bulk_out(%struct.usb_serial_port* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_serial_driver*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %13, align 8
  store %struct.usb_serial_driver* %14, %struct.usb_serial_driver** %6, align 8
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %7, align 8
  %20 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %21 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %20, i32 0, i32 7
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @kfifo_alloc(i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %147

29:                                               ; preds = %2
  %30 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %6, align 8
  %31 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %6, align 8
  %36 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %40 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %44 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %49 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %129, %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %53 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %60 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %59, i32 0, i32 5
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @usb_alloc_urb(i32 0, i32 %62)
  %64 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %65 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %71 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %57
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %147

81:                                               ; preds = %57
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @kmalloc(i32 %82, i32 %83)
  %85 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %86 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %92 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %81
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %147

102:                                              ; preds = %81
  %103 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %104 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %113 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @usb_sndbulkpipe(%struct.usb_device* %111, i32 %114)
  %116 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %117 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %6, align 8
  %125 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %128 = call i32 @usb_fill_bulk_urb(i32 %109, %struct.usb_device* %110, i32 %115, i32 %122, i32 %123, i32 %126, %struct.usb_serial_port* %127)
  br label %129

129:                                              ; preds = %102
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %50

132:                                              ; preds = %50
  %133 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %134 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %139 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %141 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %146 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %132, %99, %78, %26
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
