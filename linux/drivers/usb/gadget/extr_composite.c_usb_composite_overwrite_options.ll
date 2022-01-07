; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_composite_overwrite_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_composite_overwrite_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i64, i32, %struct.TYPE_2__*, %struct.usb_device_descriptor }
%struct.TYPE_2__ = type { %struct.usb_gadget_strings** }
%struct.usb_gadget_strings = type { %struct.usb_string* }
%struct.usb_string = type { i64, i32 }
%struct.usb_device_descriptor = type { i32, i32, i32, i8*, i8*, i8* }
%struct.usb_composite_overwrite = type { i64, i64, i64, i64, i64, i64 }

@USB_GADGET_SERIAL_IDX = common dso_local global i64 0, align 8
@USB_GADGET_MANUFACTURER_IDX = common dso_local global i64 0, align 8
@USB_GADGET_PRODUCT_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_composite_overwrite_options(%struct.usb_composite_dev* %0, %struct.usb_composite_overwrite* %1) #0 {
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca %struct.usb_composite_overwrite*, align 8
  %5 = alloca %struct.usb_device_descriptor*, align 8
  %6 = alloca %struct.usb_gadget_strings*, align 8
  %7 = alloca %struct.usb_string*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %3, align 8
  store %struct.usb_composite_overwrite* %1, %struct.usb_composite_overwrite** %4, align 8
  %8 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %9 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %8, i32 0, i32 3
  store %struct.usb_device_descriptor* %9, %struct.usb_device_descriptor** %5, align 8
  %10 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %11 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %13, align 8
  %15 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %14, i64 0
  %16 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %15, align 8
  store %struct.usb_gadget_strings* %16, %struct.usb_gadget_strings** %6, align 8
  %17 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %6, align 8
  %18 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %17, i32 0, i32 0
  %19 = load %struct.usb_string*, %struct.usb_string** %18, align 8
  store %struct.usb_string* %19, %struct.usb_string** %7, align 8
  %20 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %21 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %26 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @cpu_to_le16(i64 %27)
  %29 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %33 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %38 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @cpu_to_le16(i64 %39)
  %41 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %45 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %50 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @cpu_to_le16(i64 %51)
  %53 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %54 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %57 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %62 = load i64, i64* @USB_GADGET_SERIAL_IDX, align 8
  %63 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %61, i64 %62
  %64 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %67 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %69 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %72 = load i64, i64* @USB_GADGET_SERIAL_IDX, align 8
  %73 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %71, i64 %72
  %74 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %60, %55
  %76 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %77 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %82 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %83 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %81, i64 %82
  %84 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %87 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %89 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %92 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %93 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %91, i64 %92
  %94 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  br label %125

95:                                               ; preds = %75
  %96 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %97 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %98 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %96, i64 %97
  %99 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @strlen(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %95
  %104 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %105 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %106 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %104, i64 %105
  %107 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %110 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %112 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @composite_default_mfr(i32 %113)
  %115 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %116 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %118 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %121 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %122 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %120, i64 %121
  %123 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %122, i32 0, i32 0
  store i64 %119, i64* %123, align 8
  br label %124

124:                                              ; preds = %103, %95
  br label %125

125:                                              ; preds = %124, %80
  %126 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %127 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %132 = load i64, i64* @USB_GADGET_PRODUCT_IDX, align 8
  %133 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %131, i64 %132
  %134 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %5, align 8
  %137 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.usb_composite_overwrite*, %struct.usb_composite_overwrite** %4, align 8
  %139 = getelementptr inbounds %struct.usb_composite_overwrite, %struct.usb_composite_overwrite* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.usb_string*, %struct.usb_string** %7, align 8
  %142 = load i64, i64* @USB_GADGET_PRODUCT_IDX, align 8
  %143 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %141, i64 %142
  %144 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %143, i32 0, i32 0
  store i64 %140, i64* %144, align 8
  br label %145

145:                                              ; preds = %130, %125
  ret void
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i64 @composite_default_mfr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
