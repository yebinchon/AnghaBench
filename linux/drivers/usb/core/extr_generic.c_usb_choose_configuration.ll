; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_generic.c_usb_choose_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_generic.c_usb_choose_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, %struct.TYPE_7__, %struct.usb_host_config* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.usb_host_config = type { %struct.TYPE_8__, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_interface_descriptor }
%struct.usb_interface_descriptor = type { i64 }

@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"rejected %d configuration%s due to insufficient available bus power\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"configuration #%d chosen from %d choice%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"no configuration chosen from %d choice%s\0A\00", align 1
@USB_CONFIG_ATT_SELFPOWER = common dso_local global i32 0, align 4
@bus_powered = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_choose_configuration(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_config*, align 8
  %8 = alloca %struct.usb_host_config*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = call i64 @usb_device_is_owned(%struct.usb_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

14:                                               ; preds = %1
  store %struct.usb_host_config* null, %struct.usb_host_config** %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 3
  %17 = load %struct.usb_host_config*, %struct.usb_host_config** %16, align 8
  store %struct.usb_host_config* %17, %struct.usb_host_config** %7, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %116, %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %121

26:                                               ; preds = %22
  store %struct.usb_interface_descriptor* null, %struct.usb_interface_descriptor** %9, align 8
  %27 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %28 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %34 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.usb_interface_descriptor* %40, %struct.usb_interface_descriptor** %9, align 8
  br label %41

41:                                               ; preds = %32, %26
  %42 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %43 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %44 = call i64 @usb_get_max_power(%struct.usb_device* %42, %struct.usb_host_config* %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %116

52:                                               ; preds = %41
  %53 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %54 = icmp ne %struct.usb_interface_descriptor* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %57 = call i64 @is_audio(%struct.usb_interface_descriptor* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %61 = call i64 @is_uac3_config(%struct.usb_interface_descriptor* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_config* %64, %struct.usb_host_config** %8, align 8
  br label %121

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_config* %69, %struct.usb_host_config** %8, align 8
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70
  br label %116

72:                                               ; preds = %55, %52
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %80 = icmp ne %struct.usb_interface_descriptor* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %83 = call i64 @is_rndis(%struct.usb_interface_descriptor* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %87 = call i64 @is_activesync(%struct.usb_interface_descriptor* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  br label %116

90:                                               ; preds = %85, %78, %75, %72
  %91 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %99 = icmp ne %struct.usb_interface_descriptor* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %102 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_config* %107, %struct.usb_host_config** %8, align 8
  br label %121

108:                                              ; preds = %100, %97, %90
  %109 = load %struct.usb_host_config*, %struct.usb_host_config** %8, align 8
  %110 = icmp ne %struct.usb_host_config* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_config* %112, %struct.usb_host_config** %8, align 8
  br label %113

113:                                              ; preds = %111, %108
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %89, %71, %49
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  %119 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %120 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %119, i32 1
  store %struct.usb_host_config* %120, %struct.usb_host_config** %7, align 8
  br label %22

121:                                              ; preds = %106, %63, %22
  %122 = load i32, i32* %6, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %126 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %125, i32 0, i32 1
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @plural(i32 %128)
  %130 = call i32 @dev_info(i32* %126, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.usb_host_config*, %struct.usb_host_config** %8, align 8
  %133 = icmp ne %struct.usb_host_config* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %struct.usb_host_config*, %struct.usb_host_config** %8, align 8
  %136 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %4, align 4
  %139 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %140 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %139, i32 0, i32 1
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @plural(i32 %143)
  %145 = call i32 @dev_dbg(i32* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %142, i32 %144)
  br label %153

146:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  %147 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %148 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %147, i32 0, i32 1
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @plural(i32 %150)
  %152 = call i32 @dev_warn(i32* %148, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %146, %134
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %13
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i64 @usb_device_is_owned(%struct.usb_device*) #1

declare dso_local i64 @usb_get_max_power(%struct.usb_device*, %struct.usb_host_config*) #1

declare dso_local i64 @is_audio(%struct.usb_interface_descriptor*) #1

declare dso_local i64 @is_uac3_config(%struct.usb_interface_descriptor*) #1

declare dso_local i64 @is_rndis(%struct.usb_interface_descriptor*) #1

declare dso_local i64 @is_activesync(%struct.usb_interface_descriptor*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @plural(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
