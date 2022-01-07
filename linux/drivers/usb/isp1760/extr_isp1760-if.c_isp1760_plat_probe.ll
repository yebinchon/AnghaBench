; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-if.c_isp1760_plat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-if.c_isp1760_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i64, i32 }
%struct.isp1760_platform_data = type { i64, i64, i64, i64, i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"isp1760: IRQ resource not available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IRQF_TRIGGER_MASK = common dso_local global i64 0, align 8
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nxp,usb-isp1761\00", align 1
@ISP1760_FLAG_ISP1761 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@ISP1760_FLAG_BUS_WIDTH_16 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"port1-otg\00", align 1
@ISP1760_FLAG_OTG_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"analog-oc\00", align 1
@ISP1760_FLAG_ANALOG_OC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"dack-polarity\00", align 1
@ISP1760_FLAG_DACK_POL_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"dreq-polarity\00", align 1
@ISP1760_FLAG_DREQ_POL_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"ISP1760 USB device initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @isp1760_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isp1760_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_IRQ, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %7, align 8
  %18 = load %struct.resource*, %struct.resource** %7, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %1
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IRQF_TRIGGER_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* @CONFIG_OF, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %24
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  %38 = icmp ne %struct.device_node* %37, null
  br i1 %38, label %39, label %93

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  store %struct.device_node* %43, %struct.device_node** %9, align 8
  store i32 0, i32* %10, align 4
  %44 = load %struct.device_node*, %struct.device_node** %9, align 8
  %45 = call i64 @of_device_is_compatible(%struct.device_node* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @ISP1760_FLAG_ISP1761, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.device_node*, %struct.device_node** %9, align 8
  %53 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @ISP1760_FLAG_BUS_WIDTH_16, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.device_node*, %struct.device_node** %9, align 8
  %62 = call i64 @of_property_read_bool(%struct.device_node* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @ISP1760_FLAG_OTG_EN, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.device_node*, %struct.device_node** %9, align 8
  %70 = call i64 @of_property_read_bool(%struct.device_node* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* @ISP1760_FLAG_ANALOG_OC, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.device_node*, %struct.device_node** %9, align 8
  %78 = call i64 @of_property_read_bool(%struct.device_node* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @ISP1760_FLAG_DACK_POL_HIGH, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.device_node*, %struct.device_node** %9, align 8
  %86 = call i64 @of_property_read_bool(%struct.device_node* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @ISP1760_FLAG_DREQ_POL_HIGH, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %157

93:                                               ; preds = %33, %24
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call %struct.isp1760_platform_data* @dev_get_platdata(%struct.TYPE_3__* %95)
  %97 = icmp ne %struct.isp1760_platform_data* %96, null
  br i1 %97, label %98, label %156

98:                                               ; preds = %93
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call %struct.isp1760_platform_data* @dev_get_platdata(%struct.TYPE_3__* %100)
  store %struct.isp1760_platform_data* %101, %struct.isp1760_platform_data** %11, align 8
  %102 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %103 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @ISP1760_FLAG_ISP1761, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %98
  %111 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %112 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @ISP1760_FLAG_BUS_WIDTH_16, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %121 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @ISP1760_FLAG_OTG_EN, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %130 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @ISP1760_FLAG_ANALOG_OC, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %139 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @ISP1760_FLAG_DACK_POL_HIGH, align 4
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.isp1760_platform_data*, %struct.isp1760_platform_data** %11, align 8
  %148 = getelementptr inbounds %struct.isp1760_platform_data, %struct.isp1760_platform_data* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32, i32* @ISP1760_FLAG_DREQ_POL_HIGH, align 4
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %93
  br label %157

157:                                              ; preds = %156, %92
  %158 = load %struct.resource*, %struct.resource** %6, align 8
  %159 = load %struct.resource*, %struct.resource** %7, align 8
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %4, align 8
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @isp1760_register(%struct.resource* %158, i32 %161, i64 %162, %struct.TYPE_3__* %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %157
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %173

171:                                              ; preds = %157
  %172 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %169, %20
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.isp1760_platform_data* @dev_get_platdata(%struct.TYPE_3__*) #1

declare dso_local i32 @isp1760_register(%struct.resource*, i32, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
