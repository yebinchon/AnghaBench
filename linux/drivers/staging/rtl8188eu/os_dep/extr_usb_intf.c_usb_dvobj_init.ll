; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_dvobj_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_usb_dvobj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvobj_priv = type { i64, i64, i32*, i32*, i32, i32, i32, i32, %struct.usb_device*, %struct.usb_interface* }
%struct.usb_device = type { i64, %struct.usb_host_config* }
%struct.usb_host_config = type { %struct.usb_config_descriptor }
%struct.usb_config_descriptor = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__*, %struct.usb_interface_descriptor }
%struct.TYPE_2__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface_descriptor = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dvobj_priv* (%struct.usb_interface*)* @usb_dvobj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dvobj_priv* @usb_dvobj_init(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.dvobj_priv*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.usb_host_config*, align 8
  %7 = alloca %struct.usb_config_descriptor*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dvobj_priv* @kzalloc(i32 64, i32 %13)
  store %struct.dvobj_priv* %14, %struct.dvobj_priv** %5, align 8
  %15 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %16 = icmp ne %struct.dvobj_priv* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.dvobj_priv* null, %struct.dvobj_priv** %2, align 8
  br label %146

18:                                               ; preds = %1
  %19 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %20 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %21 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %20, i32 0, i32 9
  store %struct.usb_interface* %19, %struct.usb_interface** %21, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %23 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %22)
  store %struct.usb_device* %23, %struct.usb_device** %11, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %25 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %26 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %25, i32 0, i32 8
  store %struct.usb_device* %24, %struct.usb_device** %26, align 8
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %27, %struct.dvobj_priv* %28)
  %30 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %31 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %33 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 1
  %36 = load %struct.usb_host_config*, %struct.usb_host_config** %35, align 8
  store %struct.usb_host_config* %36, %struct.usb_host_config** %6, align 8
  %37 = load %struct.usb_host_config*, %struct.usb_host_config** %6, align 8
  %38 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %37, i32 0, i32 0
  store %struct.usb_config_descriptor* %38, %struct.usb_config_descriptor** %7, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 0
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %40, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i64 0
  store %struct.usb_host_interface* %42, %struct.usb_host_interface** %8, align 8
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 1
  store %struct.usb_interface_descriptor* %44, %struct.usb_interface_descriptor** %9, align 8
  %45 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %7, align 8
  %46 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %49 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %54 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %124, %18
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %58 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %127

61:                                               ; preds = %55
  %62 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %63 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %68, %struct.usb_endpoint_descriptor** %10, align 8
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %70 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %72 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %77 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %80 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %75, i32* %82, align 4
  %83 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %84 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %123

87:                                               ; preds = %61
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %89 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %94 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %97 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %92, i32* %99, align 4
  %100 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %101 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %122

104:                                              ; preds = %87
  %105 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %106 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %111 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %114 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %109, i32* %116, align 4
  %117 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %118 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %108, %104
  br label %122

122:                                              ; preds = %121, %91
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %55

127:                                              ; preds = %55
  %128 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %129 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @USB_SPEED_HIGH, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %135 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %134, i32 0, i32 4
  store i32 1, i32* %135, align 8
  br label %139

136:                                              ; preds = %127
  %137 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %138 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %137, i32 0, i32 4
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %141 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %140, i32 0, i32 5
  %142 = call i32 @mutex_init(i32* %141)
  %143 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %144 = call i32 @usb_get_dev(%struct.usb_device* %143)
  %145 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  store %struct.dvobj_priv* %145, %struct.dvobj_priv** %2, align 8
  br label %146

146:                                              ; preds = %139, %17
  %147 = load %struct.dvobj_priv*, %struct.dvobj_priv** %2, align 8
  ret %struct.dvobj_priv* %147
}

declare dso_local %struct.dvobj_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.dvobj_priv*) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
