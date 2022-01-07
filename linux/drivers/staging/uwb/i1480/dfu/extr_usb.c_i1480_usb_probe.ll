; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_usb.c_i1480_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_usb.c_i1480_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.device, %struct.TYPE_6__* }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i1480_usb = type { i32, %struct.i1480 }
%struct.i1480 = type { i32, i8*, i8*, i8*, i8*, %struct.i1480_usb*, i32, i32, i32*, i32, i32, %struct.device*, %struct.i1480_usb* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"not attaching to iface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"can't set altsetting 1 on iface 0: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to allocate instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot allocate transfer buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot create instance: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"i1480-pre-phy-0.0.bin\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"i1480-usb-0.0.bin\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ptc-0.0.bin\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"i1480-phy-0.0.bin\00", align 1
@i1480_usb_write = common dso_local global i32 0, align 4
@i1480_usb_read = common dso_local global i32 0, align 4
@i1480_usb_wait_init_done = common dso_local global i32 0, align 4
@i1480_usb_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @i1480_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.i1480_usb*, align 8
  %8 = alloca %struct.i1480*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %11)
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %170

33:                                               ; preds = %2
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = icmp eq i32 %43, 47806
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %46)
  %48 = call i32 @usb_set_interface(%struct.usb_device* %47, i32 0, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %38, %33
  %57 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %172

67:                                               ; preds = %56
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.i1480_usb* @kzalloc(i32 96, i32 %70)
  store %struct.i1480_usb* %71, %struct.i1480_usb** %7, align 8
  %72 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %73 = icmp eq %struct.i1480_usb* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %170

77:                                               ; preds = %67
  %78 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %79 = call i32 @i1480_usb_init(%struct.i1480_usb* %78)
  %80 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %81 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %80, i32 0, i32 1
  store %struct.i1480* %81, %struct.i1480** %8, align 8
  %82 = load %struct.i1480*, %struct.i1480** %8, align 8
  %83 = getelementptr inbounds %struct.i1480, %struct.i1480* %82, i32 0, i32 0
  store i32 512, i32* %83, align 8
  %84 = load %struct.i1480*, %struct.i1480** %8, align 8
  %85 = getelementptr inbounds %struct.i1480, %struct.i1480* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.i1480_usb* @kmalloc_array(i32 2, i32 %86, i32 %87)
  %89 = load %struct.i1480*, %struct.i1480** %8, align 8
  %90 = getelementptr inbounds %struct.i1480, %struct.i1480* %89, i32 0, i32 5
  store %struct.i1480_usb* %88, %struct.i1480_usb** %90, align 8
  %91 = load %struct.i1480*, %struct.i1480** %8, align 8
  %92 = getelementptr inbounds %struct.i1480, %struct.i1480* %91, i32 0, i32 5
  %93 = load %struct.i1480_usb*, %struct.i1480_usb** %92, align 8
  %94 = icmp eq %struct.i1480_usb* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %167

100:                                              ; preds = %77
  %101 = load %struct.i1480*, %struct.i1480** %8, align 8
  %102 = getelementptr inbounds %struct.i1480, %struct.i1480* %101, i32 0, i32 5
  %103 = load %struct.i1480_usb*, %struct.i1480_usb** %102, align 8
  %104 = load %struct.i1480*, %struct.i1480** %8, align 8
  %105 = getelementptr inbounds %struct.i1480, %struct.i1480* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %103, i64 %107
  %109 = load %struct.i1480*, %struct.i1480** %8, align 8
  %110 = getelementptr inbounds %struct.i1480, %struct.i1480* %109, i32 0, i32 12
  store %struct.i1480_usb* %108, %struct.i1480_usb** %110, align 8
  %111 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %112 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %113 = call i32 @i1480_usb_create(%struct.i1480_usb* %111, %struct.usb_interface* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %100
  %117 = load %struct.device*, %struct.device** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %162

120:                                              ; preds = %100
  %121 = load %struct.i1480*, %struct.i1480** %8, align 8
  %122 = getelementptr inbounds %struct.i1480, %struct.i1480* %121, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %122, align 8
  %123 = load %struct.i1480*, %struct.i1480** %8, align 8
  %124 = getelementptr inbounds %struct.i1480, %struct.i1480* %123, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %124, align 8
  %125 = load %struct.i1480*, %struct.i1480** %8, align 8
  %126 = getelementptr inbounds %struct.i1480, %struct.i1480* %125, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %126, align 8
  %127 = load %struct.i1480*, %struct.i1480** %8, align 8
  %128 = getelementptr inbounds %struct.i1480, %struct.i1480* %127, i32 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %128, align 8
  %129 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %130 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %129, i32 0, i32 1
  %131 = load %struct.i1480*, %struct.i1480** %8, align 8
  %132 = getelementptr inbounds %struct.i1480, %struct.i1480* %131, i32 0, i32 11
  store %struct.device* %130, %struct.device** %132, align 8
  %133 = load i32, i32* @i1480_usb_write, align 4
  %134 = load %struct.i1480*, %struct.i1480** %8, align 8
  %135 = getelementptr inbounds %struct.i1480, %struct.i1480* %134, i32 0, i32 10
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @i1480_usb_read, align 4
  %137 = load %struct.i1480*, %struct.i1480** %8, align 8
  %138 = getelementptr inbounds %struct.i1480, %struct.i1480* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 8
  %139 = load %struct.i1480*, %struct.i1480** %8, align 8
  %140 = getelementptr inbounds %struct.i1480, %struct.i1480* %139, i32 0, i32 8
  store i32* null, i32** %140, align 8
  %141 = load i32, i32* @i1480_usb_wait_init_done, align 4
  %142 = load %struct.i1480*, %struct.i1480** %8, align 8
  %143 = getelementptr inbounds %struct.i1480, %struct.i1480* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @i1480_usb_cmd, align 4
  %145 = load %struct.i1480*, %struct.i1480** %8, align 8
  %146 = getelementptr inbounds %struct.i1480, %struct.i1480* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %148 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %147, i32 0, i32 1
  %149 = call i32 @i1480_fw_upload(%struct.i1480* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %120
  %153 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %154 = getelementptr inbounds %struct.i1480_usb, %struct.i1480_usb* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @usb_reset_device(i32 %155)
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %152, %120
  %160 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %161 = call i32 @i1480_usb_destroy(%struct.i1480_usb* %160)
  br label %162

162:                                              ; preds = %159, %116
  %163 = load %struct.i1480*, %struct.i1480** %8, align 8
  %164 = getelementptr inbounds %struct.i1480, %struct.i1480* %163, i32 0, i32 5
  %165 = load %struct.i1480_usb*, %struct.i1480_usb** %164, align 8
  %166 = call i32 @kfree(%struct.i1480_usb* %165)
  br label %167

167:                                              ; preds = %162, %95
  %168 = load %struct.i1480_usb*, %struct.i1480_usb** %7, align 8
  %169 = call i32 @kfree(%struct.i1480_usb* %168)
  br label %170

170:                                              ; preds = %167, %74, %24
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %64
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.i1480_usb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i1480_usb_init(%struct.i1480_usb*) #1

declare dso_local %struct.i1480_usb* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @i1480_usb_create(%struct.i1480_usb*, %struct.usb_interface*) #1

declare dso_local i32 @i1480_fw_upload(%struct.i1480*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @i1480_usb_destroy(%struct.i1480_usb*) #1

declare dso_local i32 @kfree(%struct.i1480_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
