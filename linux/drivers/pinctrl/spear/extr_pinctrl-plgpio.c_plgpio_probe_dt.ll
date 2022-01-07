; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-plgpio.c_plgpio_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.plgpio = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"st,spear310\00", align 1
@spear310_p2o = common dso_local global i32 0, align 4
@spear310_o2p = common dso_local global i32 0, align 4
@PTO_WDATA_REG = common dso_local global i32 0, align 4
@PTO_DIR_REG = common dso_local global i32 0, align 4
@PTO_IE_REG = common dso_local global i32 0, align 4
@PTO_RDATA_REG = common dso_local global i32 0, align 4
@PTO_MIS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"st-plgpio,ngpio\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"DT: Invalid ngpio field\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"st-plgpio,enb-reg\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"st-plgpio,wdata-reg\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DT: Invalid wdata reg\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"st-plgpio,dir-reg\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"DT: Invalid dir reg\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"st-plgpio,ie-reg\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"DT: Invalid ie reg\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"st-plgpio,rdata-reg\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DT: Invalid rdata reg\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"st-plgpio,mis-reg\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DT: Invalid mis reg\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"st-plgpio,eit-reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.plgpio*)* @plgpio_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plgpio_probe_dt(%struct.platform_device* %0, %struct.plgpio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.plgpio*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.plgpio* %1, %struct.plgpio** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @spear310_p2o, align 4
  %19 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %20 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @spear310_o2p, align 4
  %22 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %23 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @PTO_WDATA_REG, align 4
  %25 = load i32, i32* @PTO_DIR_REG, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PTO_IE_REG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PTO_RDATA_REG, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PTO_MIS_REG, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %34 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %17, %2
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %42 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %142

48:                                               ; preds = %39
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %56 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %60 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %69 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 6
  store i8* %67, i8** %70, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %142

75:                                               ; preds = %66
  %76 = load %struct.device_node*, %struct.device_node** %6, align 8
  %77 = call i32 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %82 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  store i8* %80, i8** %83, align 8
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %142

88:                                               ; preds = %79
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = call i32 @of_property_read_u32(%struct.device_node* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %8)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %95 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store i8* %93, i8** %96, align 8
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(%struct.TYPE_6__* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %142

101:                                              ; preds = %92
  %102 = load %struct.device_node*, %struct.device_node** %6, align 8
  %103 = call i32 @of_property_read_u32(%struct.device_node* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %8)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %108 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  store i8* %106, i8** %109, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %142

114:                                              ; preds = %105
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = call i32 @of_property_read_u32(%struct.device_node* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8** %8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %8, align 8
  %120 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %121 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  br label %127

123:                                              ; preds = %114
  %124 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.TYPE_6__* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %142

127:                                              ; preds = %118
  %128 = load %struct.device_node*, %struct.device_node** %6, align 8
  %129 = call i32 @of_property_read_u32(%struct.device_node* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %8)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %135 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  br label %141

137:                                              ; preds = %127
  %138 = load %struct.plgpio*, %struct.plgpio** %5, align 8
  %139 = getelementptr inbounds %struct.plgpio, %struct.plgpio* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %131
  store i32 0, i32* %3, align 4
  br label %144

142:                                              ; preds = %123, %110, %97, %84, %71, %44
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
