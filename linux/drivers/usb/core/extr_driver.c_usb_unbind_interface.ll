; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_unbind_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_unbind_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_driver = type { i64, i32 (%struct.usb_interface*)*, i32, i64 }
%struct.usb_interface = type { i32, i64, i32, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.usb_host_endpoint* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.usb_host_endpoint = type { i64 }
%struct.usb_device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@USB_INTERFACE_UNBINDING = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@USB_MAXENDPOINTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_INTERFACE_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @usb_unbind_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_unbind_interface(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_driver*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca %struct.usb_host_endpoint**, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.usb_driver* @to_usb_driver(i32 %15)
  store %struct.usb_driver* %16, %struct.usb_driver** %3, align 8
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call %struct.usb_interface* @to_usb_interface(%struct.device* %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %4, align 8
  store %struct.usb_host_endpoint** null, %struct.usb_host_endpoint*** %6, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @USB_INTERFACE_UNBINDING, align 4
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %24)
  store %struct.usb_device* %25, %struct.usb_device** %7, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %27 = call i32 @usb_autoresume_device(%struct.usb_device* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %29 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = call i32 @usb_unlocked_disable_lpm(%struct.usb_device* %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %37 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %35
  %47 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = call i32 @usb_disable_interface(%struct.usb_device* %47, %struct.usb_interface* %48, i32 0)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %52 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %51, i32 0, i32 1
  %53 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %52, align 8
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = call i32 %53(%struct.usb_interface* %54)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %97, %50
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %57, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %56
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 5
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %70, i64 %72
  store %struct.usb_host_endpoint* %73, %struct.usb_host_endpoint** %5, align 8
  %74 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %75 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %97

79:                                               ; preds = %65
  %80 = load i32, i32* %9, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* @USB_MAXENDPOINTS, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.usb_host_endpoint** @kmalloc_array(i32 %83, i32 8, i32 %84)
  store %struct.usb_host_endpoint** %85, %struct.usb_host_endpoint*** %6, align 8
  %86 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %6, align 8
  %87 = icmp ne %struct.usb_host_endpoint** %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %100

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %92 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %92, i64 %95
  store %struct.usb_host_endpoint* %91, %struct.usb_host_endpoint** %96, align 8
  br label %97

97:                                               ; preds = %90, %78
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %56

100:                                              ; preds = %88, %56
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i32 @usb_free_streams(%struct.usb_interface* %104, %struct.usb_host_endpoint** %105, i32 %106, i32 %107)
  %109 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %6, align 8
  %110 = call i32 @kfree(%struct.usb_host_endpoint** %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %113 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %112, i32 0, i32 5
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %121 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %122 = call i32 @usb_enable_interface(%struct.usb_device* %120, %struct.usb_interface* %121, i32 0)
  br label %153

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %123
  %127 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %128 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %126
  %134 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %135 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %136 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %135, i32 0, i32 3
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @usb_set_interface(%struct.usb_device* %134, i32 %141, i32 0)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %147 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %133
  br label %152

149:                                              ; preds = %126, %123
  %150 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %148
  br label %153

153:                                              ; preds = %152, %119
  %154 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %155 = call i32 @usb_set_intfdata(%struct.usb_interface* %154, i32* null)
  %156 = load i32, i32* @USB_INTERFACE_UNBOUND, align 4
  %157 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %158 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %160 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %153
  %164 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %165 = call i32 @usb_unlocked_enable_lpm(%struct.usb_device* %164)
  br label %166

166:                                              ; preds = %163, %153
  %167 = load %struct.usb_driver*, %struct.usb_driver** %3, align 8
  %168 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.device*, %struct.device** %2, align 8
  %173 = call i32 @pm_runtime_disable(%struct.device* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.device*, %struct.device** %2, align 8
  %176 = call i32 @pm_runtime_set_suspended(%struct.device* %175)
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %181 = call i32 @usb_autosuspend_device(%struct.usb_device* %180)
  br label %182

182:                                              ; preds = %179, %174
  ret i32 0
}

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_autoresume_device(%struct.usb_device*) #1

declare dso_local i32 @usb_unlocked_disable_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_disable_interface(%struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local %struct.usb_host_endpoint** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @usb_free_streams(%struct.usb_interface*, %struct.usb_host_endpoint**, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_host_endpoint**) #1

declare dso_local i32 @usb_enable_interface(%struct.usb_device*, %struct.usb_interface*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_unlocked_enable_lpm(%struct.usb_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @usb_autosuspend_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
