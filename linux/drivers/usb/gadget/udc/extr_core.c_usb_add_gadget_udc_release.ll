; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_add_gadget_udc_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_add_gadget_udc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_gadget = type { %struct.TYPE_6__, %struct.usb_udc*, i32 }
%struct.TYPE_6__ = type { void (%struct.device.0*)*, %struct.device*, i32, i32 }
%struct.device.0 = type opaque
%struct.usb_udc = type { i32, %struct.TYPE_6__, i32, %struct.usb_gadget* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@usb_gadget_state_work = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@udc_class = common dso_local global i32 0, align 4
@usb_udc_attr_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@udc_lock = common dso_local global i32 0, align 4
@udc_list = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_add_gadget_udc_release(%struct.device* %0, %struct.usb_gadget* %1, void (%struct.device*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.usb_gadget*, align 8
  %7 = alloca void (%struct.device*)*, align 8
  %8 = alloca %struct.usb_udc*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.usb_gadget* %1, %struct.usb_gadget** %6, align 8
  store void (%struct.device*)* %2, void (%struct.device*)** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %13 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %12, i32 0, i32 0
  %14 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_set_name(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %16 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %15, i32 0, i32 2
  %17 = load i32, i32* @usb_gadget_state_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %21 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load void (%struct.device*)*, void (%struct.device*)** %7, align 8
  %24 = icmp ne void (%struct.device*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load void (%struct.device*)*, void (%struct.device*)** %7, align 8
  %27 = bitcast void (%struct.device*)* %26 to void (%struct.device.0*)*
  %28 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %29 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store void (%struct.device.0*)* %27, void (%struct.device.0*)** %30, align 8
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %33 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store void (%struct.device.0*)* bitcast (void (%struct.device*)* @usb_udc_nop_release to void (%struct.device.0*)*), void (%struct.device.0*)** %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %37 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %36, i32 0, i32 0
  %38 = call i32 @device_initialize(%struct.TYPE_6__* %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.usb_udc* @kzalloc(i32 48, i32 %39)
  store %struct.usb_udc* %40, %struct.usb_udc** %8, align 8
  %41 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %42 = icmp ne %struct.usb_udc* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %125

44:                                               ; preds = %35
  %45 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %46 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %45, i32 0, i32 1
  %47 = call i32 @device_initialize(%struct.TYPE_6__* %46)
  %48 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %49 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store void (%struct.device.0*)* bitcast (void (%struct.device*)* @usb_udc_release to void (%struct.device.0*)*), void (%struct.device.0*)** %50, align 8
  %51 = load i32, i32* @udc_class, align 4
  %52 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %53 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @usb_udc_attr_groups, align 4
  %56 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %57 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %61 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store %struct.device* %59, %struct.device** %62, align 8
  %63 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %64 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %63, i32 0, i32 1
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = call i32 @kobject_name(i32* %66)
  %68 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_set_name(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %44
  br label %121

72:                                               ; preds = %44
  %73 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %74 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %73, i32 0, i32 0
  %75 = call i32 @device_add(%struct.TYPE_6__* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %121

79:                                               ; preds = %72
  %80 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %81 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %82 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %81, i32 0, i32 3
  store %struct.usb_gadget* %80, %struct.usb_gadget** %82, align 8
  %83 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %84 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %85 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %84, i32 0, i32 1
  store %struct.usb_udc* %83, %struct.usb_udc** %85, align 8
  %86 = call i32 @mutex_lock(i32* @udc_lock)
  %87 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %88 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %87, i32 0, i32 2
  %89 = call i32 @list_add_tail(i32* %88, i32* @udc_list)
  %90 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %91 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %90, i32 0, i32 1
  %92 = call i32 @device_add(%struct.TYPE_6__* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %113

96:                                               ; preds = %79
  %97 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %98 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %99 = call i32 @usb_gadget_set_state(%struct.usb_gadget* %97, i32 %98)
  %100 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %101 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %103 = call i32 @check_pending_gadget_drivers(%struct.usb_udc* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %109

107:                                              ; preds = %96
  %108 = call i32 @mutex_unlock(i32* @udc_lock)
  store i32 0, i32* %4, align 4
  br label %130

109:                                              ; preds = %106
  %110 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %111 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %110, i32 0, i32 1
  %112 = call i32 @device_del(%struct.TYPE_6__* %111)
  br label %113

113:                                              ; preds = %109, %95
  %114 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %115 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %114, i32 0, i32 2
  %116 = call i32 @list_del(i32* %115)
  %117 = call i32 @mutex_unlock(i32* @udc_lock)
  %118 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %119 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %118, i32 0, i32 0
  %120 = call i32 @device_del(%struct.TYPE_6__* %119)
  br label %121

121:                                              ; preds = %113, %78, %71
  %122 = load %struct.usb_udc*, %struct.usb_udc** %8, align 8
  %123 = getelementptr inbounds %struct.usb_udc, %struct.usb_udc* %122, i32 0, i32 1
  %124 = call i32 @put_device(%struct.TYPE_6__* %123)
  br label %125

125:                                              ; preds = %121, %43
  %126 = load %struct.usb_gadget*, %struct.usb_gadget** %6, align 8
  %127 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %126, i32 0, i32 0
  %128 = call i32 @put_device(%struct.TYPE_6__* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %107
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local void @usb_udc_nop_release(%struct.device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local %struct.usb_udc* @kzalloc(i32, i32) #1

declare dso_local void @usb_udc_release(%struct.device*) #1

declare dso_local i32 @kobject_name(i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_gadget_set_state(%struct.usb_gadget*, i32) #1

declare dso_local i32 @check_pending_gadget_drivers(%struct.usb_udc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_del(%struct.TYPE_6__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
