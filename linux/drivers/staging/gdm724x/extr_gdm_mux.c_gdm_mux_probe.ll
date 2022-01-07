; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_mux.c_gdm_mux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.mux_dev = type { i32, %struct.usb_interface*, %struct.mux_dev*, i32, i32, i32, i8*, %struct.usb_interface*, %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.tty_dev = type { i32, %struct.usb_interface*, %struct.tty_dev*, i32, i32, i32, i8*, %struct.usb_interface*, %struct.usb_device* }

@.str = private unnamed_addr constant [31 x i8] c"mux vid = 0x%04x pid = 0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gdm_mux_send = common dso_local global i32 0, align 4
@gdm_mux_recv = common dso_local global i32 0, align 4
@gdm_mux_send_control = common dso_local global i32 0, align 4
@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@PM_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @gdm_mux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_mux_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.mux_dev*, align 8
  %7 = alloca %struct.tty_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %13, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le16_to_cpu(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %130

40:                                               ; preds = %2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.tty_dev* @kzalloc(i32 64, i32 %41)
  %43 = bitcast %struct.tty_dev* %42 to %struct.mux_dev*
  store %struct.mux_dev* %43, %struct.mux_dev** %6, align 8
  %44 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %45 = icmp ne %struct.mux_dev* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %130

49:                                               ; preds = %40
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.tty_dev* @kzalloc(i32 64, i32 %50)
  store %struct.tty_dev* %51, %struct.tty_dev** %7, align 8
  %52 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %53 = icmp ne %struct.tty_dev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %125

57:                                               ; preds = %49
  %58 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %59 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %60 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %59, i32 0, i32 8
  store %struct.usb_device* %58, %struct.usb_device** %60, align 8
  %61 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %62 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %62, i32 0, i32 7
  store %struct.usb_interface* %61, %struct.usb_interface** %63, align 8
  %64 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %65 = bitcast %struct.mux_dev* %64 to %struct.tty_dev*
  %66 = call i32 @init_usb(%struct.tty_dev* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %119

70:                                               ; preds = %57
  %71 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %72 = bitcast %struct.mux_dev* %71 to i8*
  %73 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %74 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @gdm_mux_send, align 4
  %76 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %77 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @gdm_mux_recv, align 4
  %79 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %80 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @gdm_mux_send_control, align 4
  %82 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %83 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 0
  %87 = call i32 @register_lte_tty_device(%struct.tty_dev* %84, i32* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %116

91:                                               ; preds = %70
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %101, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @TTY_MAX_COUNT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %98 = bitcast %struct.tty_dev* %97 to %struct.mux_dev*
  %99 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %100 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %99, i32 0, i32 2
  store %struct.mux_dev* %98, %struct.mux_dev** %100, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %92

104:                                              ; preds = %92
  %105 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %106 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %107 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %106, i32 0, i32 1
  store %struct.usb_interface* %105, %struct.usb_interface** %107, align 8
  %108 = load i32, i32* @PM_NORMAL, align 4
  %109 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %110 = getelementptr inbounds %struct.mux_dev, %struct.mux_dev* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %112 = call i32 @usb_get_dev(%struct.usb_device* %111)
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %115 = call i32 @usb_set_intfdata(%struct.usb_interface* %113, %struct.tty_dev* %114)
  store i32 0, i32* %3, align 4
  br label %130

116:                                              ; preds = %90
  %117 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %118 = call i32 @unregister_lte_tty_device(%struct.tty_dev* %117)
  br label %119

119:                                              ; preds = %116, %69
  %120 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %121 = bitcast %struct.mux_dev* %120 to %struct.tty_dev*
  %122 = call i32 @release_usb(%struct.tty_dev* %121)
  %123 = load %struct.tty_dev*, %struct.tty_dev** %7, align 8
  %124 = call i32 @kfree(%struct.tty_dev* %123)
  br label %125

125:                                              ; preds = %119, %54
  %126 = load %struct.mux_dev*, %struct.mux_dev** %6, align 8
  %127 = bitcast %struct.mux_dev* %126 to %struct.tty_dev*
  %128 = call i32 @kfree(%struct.tty_dev* %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %125, %104, %46, %37
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local %struct.tty_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @init_usb(%struct.tty_dev*) #1

declare dso_local i32 @register_lte_tty_device(%struct.tty_dev*, i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.tty_dev*) #1

declare dso_local i32 @unregister_lte_tty_device(%struct.tty_dev*) #1

declare dso_local i32 @release_usb(%struct.tty_dev*) #1

declare dso_local i32 @kfree(%struct.tty_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
