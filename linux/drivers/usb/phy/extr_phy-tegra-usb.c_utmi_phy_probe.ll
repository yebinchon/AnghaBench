; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmi_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tegra-usb.c_utmi_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_usb_phy = type { i32, %struct.TYPE_5__*, %struct.tegra_utmip_config*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tegra_utmip_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get UTMI pad regs\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to remap UTMI pad regs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"nvidia,hssync-start-delay\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"nvidia,elastic-limit\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"nvidia,idle-wait-delay\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"nvidia,term-range-adj\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsfslew\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsrslew\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nvidia,xcvr-hsslew\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"nvidia,hssquelch-level\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"nvidia,hsdiscon-level\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"nvidia,xcvr-setup-use-fuses\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"nvidia,xcvr-setup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_usb_phy*, %struct.platform_device*)* @utmi_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utmi_phy_probe(%struct.tegra_usb_phy* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_usb_phy*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_utmip_config*, align 8
  store %struct.tegra_usb_phy* %0, %struct.tegra_usb_phy** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 1)
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_6__* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %172

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call i32 @resource_size(%struct.resource* %28)
  %30 = call i32 @devm_ioremap(%struct.TYPE_6__* %24, i32 %27, i32 %29)
  %31 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_6__* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %172

43:                                               ; preds = %22
  %44 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.tegra_utmip_config* @devm_kzalloc(%struct.TYPE_6__* %45, i32 44, i32 %46)
  %48 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %48, i32 0, i32 2
  store %struct.tegra_utmip_config* %47, %struct.tegra_utmip_config** %49, align 8
  %50 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %50, i32 0, i32 2
  %52 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %51, align 8
  %53 = icmp ne %struct.tegra_utmip_config* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %172

57:                                               ; preds = %43
  %58 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %59 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %58, i32 0, i32 2
  %60 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %59, align 8
  store %struct.tegra_utmip_config* %60, %struct.tegra_utmip_config** %8, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %62 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %63 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %62, i32 0, i32 10
  %64 = call i32 @read_utmi_param(%struct.platform_device* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %172

69:                                               ; preds = %57
  %70 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %71 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %72 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %71, i32 0, i32 9
  %73 = call i32 @read_utmi_param(%struct.platform_device* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %172

78:                                               ; preds = %69
  %79 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %80 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %81 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %80, i32 0, i32 8
  %82 = call i32 @read_utmi_param(%struct.platform_device* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %172

87:                                               ; preds = %78
  %88 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %89 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %90 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %89, i32 0, i32 7
  %91 = call i32 @read_utmi_param(%struct.platform_device* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %172

96:                                               ; preds = %87
  %97 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %98 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %99 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %98, i32 0, i32 6
  %100 = call i32 @read_utmi_param(%struct.platform_device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %172

105:                                              ; preds = %96
  %106 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %107 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %108 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %107, i32 0, i32 5
  %109 = call i32 @read_utmi_param(%struct.platform_device* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %172

114:                                              ; preds = %105
  %115 = load %struct.tegra_usb_phy*, %struct.tegra_usb_phy** %4, align 8
  %116 = getelementptr inbounds %struct.tegra_usb_phy, %struct.tegra_usb_phy* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %114
  %122 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %123 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %124 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %123, i32 0, i32 4
  %125 = call i32 @read_utmi_param(%struct.platform_device* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %172

130:                                              ; preds = %121
  %131 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %132 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %133 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %132, i32 0, i32 3
  %134 = call i32 @read_utmi_param(%struct.platform_device* %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %172

139:                                              ; preds = %130
  %140 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %141 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %142 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %141, i32 0, i32 2
  %143 = call i32 @read_utmi_param(%struct.platform_device* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %172

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %114
  %150 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @of_property_read_bool(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %155 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %156 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %158 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %149
  %162 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %163 = load %struct.tegra_utmip_config*, %struct.tegra_utmip_config** %8, align 8
  %164 = getelementptr inbounds %struct.tegra_utmip_config, %struct.tegra_utmip_config* %163, i32 0, i32 0
  %165 = call i32 @read_utmi_param(%struct.platform_device* %162, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %149
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %168, %146, %137, %128, %112, %103, %94, %85, %76, %67, %54, %37, %16
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.tegra_utmip_config* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @read_utmi_param(%struct.platform_device*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
