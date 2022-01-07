; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-core.c_isp1760_init_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-core.c_isp1760_init_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_device = type { i32, i32, i32, i64 }

@HC_RESET_REG = common dso_local global i32 0, align 4
@SW_RESET_RESET_ALL = common dso_local global i32 0, align 4
@HW_DATA_BUS_32BIT = common dso_local global i32 0, align 4
@ISP1760_FLAG_BUS_WIDTH_16 = common dso_local global i32 0, align 4
@ISP1760_FLAG_ANALOG_OC = common dso_local global i32 0, align 4
@HW_ANA_DIGI_OC = common dso_local global i32 0, align 4
@ISP1760_FLAG_DACK_POL_HIGH = common dso_local global i32 0, align 4
@HW_DACK_POL_HIGH = common dso_local global i32 0, align 4
@ISP1760_FLAG_DREQ_POL_HIGH = common dso_local global i32 0, align 4
@HW_DREQ_POL_HIGH = common dso_local global i32 0, align 4
@ISP1760_FLAG_INTR_POL_HIGH = common dso_local global i32 0, align 4
@HW_INTR_HIGH_ACT = common dso_local global i32 0, align 4
@ISP1760_FLAG_INTR_EDGE_TRIG = common dso_local global i32 0, align 4
@HW_INTR_EDGE_TRIG = common dso_local global i32 0, align 4
@ISP1760_FLAG_ISP1761 = common dso_local global i32 0, align 4
@DC_MODE = common dso_local global i32 0, align 4
@HW_COMN_IRQ = common dso_local global i32 0, align 4
@HC_HW_MODE_CTRL = common dso_local global i32 0, align 4
@ISP1760_FLAG_OTG_EN = common dso_local global i32 0, align 4
@HW_DM_PULLDOWN = common dso_local global i32 0, align 4
@HW_DP_PULLDOWN = common dso_local global i32 0, align 4
@HW_OTG_DISABLE = common dso_local global i32 0, align 4
@HW_SW_SEL_HC_DC = common dso_local global i32 0, align 4
@HW_VBUS_DRV = common dso_local global i32 0, align 4
@HW_SEL_CP_EXT = common dso_local global i32 0, align 4
@HC_PORT1_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bus width: %u, oc: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_device*)* @isp1760_init_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_init_core(%struct.isp1760_device* %0) #0 {
  %2 = alloca %struct.isp1760_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isp1760_device* %0, %struct.isp1760_device** %2, align 8
  %5 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %11 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @gpiod_set_value_cansleep(i64 %12, i32 1)
  %14 = call i32 @msleep(i32 50)
  %15 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %16 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @gpiod_set_value_cansleep(i64 %17, i32 0)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %21 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HC_RESET_REG, align 4
  %24 = load i32, i32* @SW_RESET_RESET_ALL, align 4
  %25 = call i32 @isp1760_write32(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @msleep(i32 100)
  %27 = load i32, i32* @HW_DATA_BUS_32BIT, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %29 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISP1760_FLAG_BUS_WIDTH_16, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load i32, i32* @HW_DATA_BUS_32BIT, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %19
  %40 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %41 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ISP1760_FLAG_ANALOG_OC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @HW_ANA_DIGI_OC, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %52 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ISP1760_FLAG_DACK_POL_HIGH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @HW_DACK_POL_HIGH, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %63 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ISP1760_FLAG_DREQ_POL_HIGH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @HW_DREQ_POL_HIGH, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %74 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ISP1760_FLAG_INTR_POL_HIGH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @HW_INTR_HIGH_ACT, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %85 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ISP1760_FLAG_INTR_EDGE_TRIG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @HW_INTR_EDGE_TRIG, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %96 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ISP1760_FLAG_ISP1761, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %103 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DC_MODE, align 4
  %106 = call i32 @isp1760_write32(i32 %104, i32 %105, i32 0)
  %107 = load i32, i32* @HW_COMN_IRQ, align 4
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %94
  %111 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %112 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @isp1760_write32(i32 %113, i32 %114, i32 %115)
  %117 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %118 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @HC_HW_MODE_CTRL, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @isp1760_write32(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %124 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ISP1760_FLAG_ISP1761, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %110
  %130 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %131 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ISP1760_FLAG_OTG_EN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* @HW_DM_PULLDOWN, align 4
  %138 = load i32, i32* @HW_DP_PULLDOWN, align 4
  %139 = or i32 %137, %138
  %140 = shl i32 %139, 16
  %141 = load i32, i32* @HW_OTG_DISABLE, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %3, align 4
  br label %150

143:                                              ; preds = %129, %110
  %144 = load i32, i32* @HW_SW_SEL_HC_DC, align 4
  %145 = shl i32 %144, 16
  %146 = load i32, i32* @HW_VBUS_DRV, align 4
  %147 = load i32, i32* @HW_SEL_CP_EXT, align 4
  %148 = or i32 %146, %147
  %149 = or i32 %145, %148
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %143, %136
  %151 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %152 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @HC_PORT1_CTRL, align 4
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @isp1760_write32(i32 %153, i32 %154, i32 %155)
  %157 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %158 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %161 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ISP1760_FLAG_BUS_WIDTH_16, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 16, i32 32
  %168 = load %struct.isp1760_device*, %struct.isp1760_device** %2, align 8
  %169 = getelementptr inbounds %struct.isp1760_device, %struct.isp1760_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ISP1760_FLAG_ANALOG_OC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %176 = call i32 @dev_info(i32 %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %167, i8* %175)
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @isp1760_write32(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
