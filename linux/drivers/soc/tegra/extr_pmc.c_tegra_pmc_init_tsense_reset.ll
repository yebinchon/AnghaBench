; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_init_tsense_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_init_tsense_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.device*, %struct.TYPE_2__* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@tegra_pmc_init_tsense_reset.disabled = internal constant [33 x i8] c"emergency thermal reset disabled\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"i2c-thermtrip\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"i2c-thermtrip node not found, %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"nvidia,i2c-controller-id\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"I2C controller ID missing, %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"nvidia,bus-addr\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"nvidia,bus-addr missing, %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"nvidia,reg-addr\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"nvidia,reg-addr missing, %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"nvidia,reg-data\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"nvidia,reg-data missing, %s.\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"nvidia,pinmux-id\00", align 1
@PMC_SENSOR_CTRL = common dso_local global i32 0, align 4
@PMC_SENSOR_CTRL_SCRATCH_WRITE = common dso_local global i32 0, align 4
@PMC_SCRATCH54_DATA_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH54_ADDR_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH54 = common dso_local global i32 0, align 4
@PMC_SCRATCH55_RESET_TEGRA = common dso_local global i32 0, align 4
@PMC_SCRATCH55_CNTRL_ID_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH55_PINMUX_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH55_I2CSLV1_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH55_CHECKSUM_SHIFT = common dso_local global i32 0, align 4
@PMC_SCRATCH55 = common dso_local global i32 0, align 4
@PMC_SENSOR_CTRL_ENABLE_RST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"emergency thermal reset enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pmc*)* @tegra_pmc_init_tsense_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pmc_init_tsense_reset(%struct.tegra_pmc* %0) #0 {
  %2 = alloca %struct.tegra_pmc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %2, align 8
  %12 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %13 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %149

22:                                               ; preds = %1
  %23 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.device_node* @of_get_child_by_name(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %28, %struct.device_node** %9, align 8
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 @dev_warn(%struct.device* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @tegra_pmc_init_tsense_reset.disabled, i64 0, i64 0))
  br label %149

34:                                               ; preds = %22
  %35 = load %struct.device_node*, %struct.device_node** %9, align 8
  %36 = call i64 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @tegra_pmc_init_tsense_reset.disabled, i64 0, i64 0))
  br label %146

41:                                               ; preds = %34
  %42 = load %struct.device_node*, %struct.device_node** %9, align 8
  %43 = call i64 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %3)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @tegra_pmc_init_tsense_reset.disabled, i64 0, i64 0))
  br label %146

48:                                               ; preds = %41
  %49 = load %struct.device_node*, %struct.device_node** %9, align 8
  %50 = call i64 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %8, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @tegra_pmc_init_tsense_reset.disabled, i64 0, i64 0))
  br label %146

55:                                               ; preds = %48
  %56 = load %struct.device_node*, %struct.device_node** %9, align 8
  %57 = call i64 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @tegra_pmc_init_tsense_reset.disabled, i64 0, i64 0))
  br label %146

62:                                               ; preds = %55
  %63 = load %struct.device_node*, %struct.device_node** %9, align 8
  %64 = call i64 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* %7)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %69 = load i32, i32* @PMC_SENSOR_CTRL, align 4
  %70 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @PMC_SENSOR_CTRL_SCRATCH_WRITE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PMC_SENSOR_CTRL, align 4
  %77 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PMC_SCRATCH54_DATA_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PMC_SCRATCH54_ADDR_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %80, %83
  store i32 %84, i32* %10, align 4
  %85 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @PMC_SCRATCH54, align 4
  %88 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @PMC_SCRATCH55_RESET_TEGRA, align 4
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @PMC_SCRATCH55_CNTRL_ID_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PMC_SCRATCH55_PINMUX_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @PMC_SCRATCH55_I2CSLV1_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 255
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* %10, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = add nsw i32 %110, %113
  %115 = load i32, i32* %10, align 4
  %116 = ashr i32 %115, 24
  %117 = and i32 %116, 255
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, 255
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sub nsw i32 256, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @PMC_SCRATCH55_CHECKSUM_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @PMC_SCRATCH55, align 4
  %131 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %128, i32 %129, i32 %130)
  %132 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %133 = load i32, i32* @PMC_SENSOR_CTRL, align 4
  %134 = call i32 @tegra_pmc_readl(%struct.tegra_pmc* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @PMC_SENSOR_CTRL_ENABLE_RST, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @PMC_SENSOR_CTRL, align 4
  %141 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %138, i32 %139, i32 %140)
  %142 = load %struct.tegra_pmc*, %struct.tegra_pmc** %2, align 8
  %143 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %142, i32 0, i32 0
  %144 = load %struct.device*, %struct.device** %143, align 8
  %145 = call i32 @dev_info(%struct.device* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %146

146:                                              ; preds = %67, %59, %52, %45, %38
  %147 = load %struct.device_node*, %struct.device_node** %9, align 8
  %148 = call i32 @of_node_put(%struct.device_node* %147)
  br label %149

149:                                              ; preds = %146, %31, %21
  ret void
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @tegra_pmc_readl(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @tegra_pmc_writel(%struct.tegra_pmc*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
