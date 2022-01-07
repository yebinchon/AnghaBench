; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_parse_vendor_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_parse_vendor_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlfb_data = type { i32 }
%struct.usb_interface = type { i32, i32 }

@MAX_VENDOR_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vendor descriptor length: %d data: %11ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"DL chip limited to %d pixel modes\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"vendor descriptor not available (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unrecognized vendor firmware descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlfb_data*, %struct.usb_interface*)* @dlfb_parse_vendor_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_parse_vendor_descriptor(%struct.dlfb_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlfb_data*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dlfb_data* %0, %struct.dlfb_data** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %13 = load i32, i32* @MAX_VENDOR_DESCRIPTOR_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %163

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %6, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = call i32 @interface_to_usbdev(%struct.usb_interface* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @MAX_VENDOR_DESCRIPTOR_SIZE, align 4
  %25 = call i32 @usb_get_descriptor(i32 %22, i32 95, i32 0, i8* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %19
  %29 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @usb_get_extra_descriptor(i32 %31, i32 95, i8** %6)
  %33 = icmp eq i64 0, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 5
  br i1 %42, label %43, label %150

43:                                               ; preds = %40
  %44 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %81, label %55

55:                                               ; preds = %43
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 95
  br i1 %60, label %81, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 2
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %67, %61, %55, %43
  br label %156

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %144, %82
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ult i8* %90, %91
  br i1 %92, label %93, label %149

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8, i8* %98, align 1
  %101 = sext i8 %100 to i32
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  switch i32 %109, label %143 [
    i32 512, label %110
  ]

110:                                              ; preds = %93
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  %124 = load i8, i8* %122, align 1
  %125 = sext i8 %124 to i32
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i32
  %133 = shl i32 %132, 24
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  %136 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %137 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %136, i32 0, i32 0
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dev_warn(i32* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.dlfb_data*, %struct.dlfb_data** %4, align 8
  %142 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %144

143:                                              ; preds = %93
  br label %144

144:                                              ; preds = %143, %110
  %145 = load i32, i32* %10, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %6, align 8
  br label %89

149:                                              ; preds = %89
  br label %155

150:                                              ; preds = %40
  %151 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %152 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %151, i32 0, i32 0
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %150, %149
  br label %160

156:                                              ; preds = %81
  %157 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 0
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %155
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @kfree(i8* %161)
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %18
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_get_descriptor(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_get_extra_descriptor(i32, i32, i8**) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
