; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_usb_hub_create_port_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_usb_hub_create_port_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { %struct.usb_device*, i32, i32, %struct.usb_port** }
%struct.usb_device = type { i32 }
%struct.usb_port = type { i32, i32, i32, i32, %struct.usb_port*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@port_dev_usb3_group = common dso_local global i32 0, align 4
@port_dev_group = common dso_local global i32 0, align 4
@usb_port_device_type = common dso_local global i32 0, align 4
@usb_port_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-port%d\00", align 1
@DEV_PM_QOS_FLAGS = common dso_local global i32 0, align 4
@PM_QOS_FLAG_NO_POWER_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to expose pm_qos_no_poweroff\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hub_create_port_device(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_port*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 56, i32 %12)
  %14 = bitcast i8* %13 to %struct.usb_port*
  store %struct.usb_port* %14, %struct.usb_port** %6, align 8
  %15 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %16 = icmp ne %struct.usb_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %175

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 56, i32 %21)
  %23 = bitcast i8* %22 to %struct.usb_port*
  %24 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %25 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %24, i32 0, i32 4
  store %struct.usb_port* %23, %struct.usb_port** %25, align 8
  %26 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %27 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 4
  %28 = load %struct.usb_port*, %struct.usb_port** %27, align 8
  %29 = icmp ne %struct.usb_port* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %32 = call i32 @kfree(%struct.usb_port* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %175

35:                                               ; preds = %20
  %36 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %37 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %38 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %37, i32 0, i32 3
  %39 = load %struct.usb_port**, %struct.usb_port*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %39, i64 %42
  store %struct.usb_port* %36, %struct.usb_port** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %46 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %49 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_bit(i32 %47, i32 %50)
  %52 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %53 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %56 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %59 = call i64 @hub_is_superspeed(%struct.usb_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %35
  %62 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %63 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %65 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @port_dev_usb3_group, align 4
  %67 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %68 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  br label %75

70:                                               ; preds = %35
  %71 = load i32, i32* @port_dev_group, align 4
  %72 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %73 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %61
  %76 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %77 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32* @usb_port_device_type, i32** %78, align 8
  %79 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %80 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32* @usb_port_driver, i32** %81, align 8
  %82 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %83 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %82, i32 0, i32 0
  %84 = load %struct.usb_device*, %struct.usb_device** %83, align 8
  %85 = call i64 @hub_is_superspeed(%struct.usb_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %89 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %75
  %91 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %92 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %91, i32 0, i32 5
  %93 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %94 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %93, i32 0, i32 0
  %95 = load %struct.usb_device*, %struct.usb_device** %94, align 8
  %96 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %95, i32 0, i32 0
  %97 = call i32 @dev_name(i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_set_name(%struct.TYPE_12__* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %101 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %100, i32 0, i32 6
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %104 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %103, i32 0, i32 5
  %105 = call i32 @device_register(%struct.TYPE_12__* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %90
  %109 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %110 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %109, i32 0, i32 5
  %111 = call i32 @put_device(%struct.TYPE_12__* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %175

113:                                              ; preds = %90
  %114 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %115 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %114, i32 0, i32 5
  %116 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %117 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %116, i32 0, i32 4
  %118 = load %struct.usb_port*, %struct.usb_port** %117, align 8
  %119 = load i32, i32* @DEV_PM_QOS_FLAGS, align 4
  %120 = load i32, i32* @PM_QOS_FLAG_NO_POWER_OFF, align 4
  %121 = call i32 @dev_pm_qos_add_request(%struct.TYPE_12__* %115, %struct.usb_port* %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %126 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %125, i32 0, i32 5
  %127 = call i32 @device_unregister(%struct.TYPE_12__* %126)
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %3, align 4
  br label %175

129:                                              ; preds = %113
  %130 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @find_and_link_peer(%struct.usb_hub* %130, i32 %131)
  %133 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %134 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %133, i32 0, i32 5
  %135 = call i32 @pm_runtime_set_active(%struct.TYPE_12__* %134)
  %136 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %137 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %136, i32 0, i32 5
  %138 = call i32 @pm_runtime_get_noresume(%struct.TYPE_12__* %137)
  %139 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %140 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %139, i32 0, i32 5
  %141 = call i32 @pm_runtime_enable(%struct.TYPE_12__* %140)
  %142 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %143 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %142, i32 0, i32 5
  %144 = call i32 @device_enable_async_suspend(%struct.TYPE_12__* %143)
  %145 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %146 = call i32 @hub_is_port_power_switchable(%struct.usb_hub* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %175

149:                                              ; preds = %129
  %150 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %151 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %150, i32 0, i32 5
  %152 = load i32, i32* @PM_QOS_FLAG_NO_POWER_OFF, align 4
  %153 = call i32 @dev_pm_qos_expose_flags(%struct.TYPE_12__* %151, i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %158 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %157, i32 0, i32 5
  %159 = call i32 @dev_warn(%struct.TYPE_12__* %158, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %175

160:                                              ; preds = %149
  %161 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %162 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %161, i32 0, i32 4
  %163 = load %struct.usb_port*, %struct.usb_port** %162, align 8
  %164 = call i32 @dev_pm_qos_remove_request(%struct.usb_port* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %169 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %168, i32 0, i32 4
  %170 = load %struct.usb_port*, %struct.usb_port** %169, align 8
  %171 = call i32 @kfree(%struct.usb_port* %170)
  %172 = load %struct.usb_port*, %struct.usb_port** %6, align 8
  %173 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %172, i32 0, i32 4
  store %struct.usb_port* null, %struct.usb_port** %173, align 8
  br label %174

174:                                              ; preds = %167, %160
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %156, %148, %124, %108, %30, %17
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_port*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_12__*) #1

declare dso_local i32 @put_device(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_pm_qos_add_request(%struct.TYPE_12__*, %struct.usb_port*, i32, i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_12__*) #1

declare dso_local i32 @find_and_link_peer(%struct.usb_hub*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_12__*) #1

declare dso_local i32 @hub_is_port_power_switchable(%struct.usb_hub*) #1

declare dso_local i32 @dev_pm_qos_expose_flags(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_pm_qos_remove_request(%struct.usb_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
