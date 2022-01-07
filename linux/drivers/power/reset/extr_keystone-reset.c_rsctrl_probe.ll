; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_keystone-reset.c_rsctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_keystone-reset.c_rsctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ti,syscon-pll\00", align 1
@pllctrl_regs = common dso_local global %struct.regmap* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ti,syscon-dev\00", align 1
@rspll_offset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't read the reset pll offset!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"couldn't read the rsmux offset!\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,soft-reset\00", align 1
@RSCFG_RSTYPE_SOFT = common dso_local global i32 0, align 4
@RSCFG_RSTYPE_HARD = common dso_local global i32 0, align 4
@RSCFG_RG = common dso_local global i32 0, align 4
@RSISO_RG = common dso_local global i32 0, align 4
@WDT_MUX_NUMBER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ti,wdt-list\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"ti,wdt-list property has to contain atleast one entry\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"ti,wdt-list property can contain only numbers < 4\0A\00", align 1
@RSMUX_OMODE_MASK = common dso_local global i32 0, align 4
@RSMUX_OMODE_RESET_ON = common dso_local global i32 0, align 4
@RSMUX_LOCK_SET = common dso_local global i32 0, align 4
@rsctrl_restart_nb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rsctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load %struct.device*, %struct.device** %10, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %11, align 8
  %17 = load %struct.device_node*, %struct.device_node** %11, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %162

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %11, align 8
  %24 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %24, %struct.regmap** @pllctrl_regs, align 8
  %25 = load %struct.regmap*, %struct.regmap** @pllctrl_regs, align 8
  %26 = call i64 @IS_ERR(%struct.regmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.regmap*, %struct.regmap** @pllctrl_regs, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  store i32 %30, i32* %2, align 4
  br label %162

31:                                               ; preds = %22
  %32 = load %struct.device_node*, %struct.device_node** %11, align 8
  %33 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regmap* %33, %struct.regmap** %9, align 8
  %34 = load %struct.regmap*, %struct.regmap** %9, align 8
  %35 = call i64 @IS_ERR(%struct.regmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.regmap*, %struct.regmap** %9, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  store i32 %39, i32* %2, align 4
  br label %162

40:                                               ; preds = %31
  %41 = load %struct.device_node*, %struct.device_node** %11, align 8
  %42 = call i32 @of_property_read_u32_index(%struct.device_node* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i32* @rspll_offset)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %162

50:                                               ; preds = %40
  %51 = load %struct.device_node*, %struct.device_node** %11, align 8
  %52 = call i32 @of_property_read_u32_index(%struct.device_node* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %8)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %162

60:                                               ; preds = %50
  %61 = load %struct.device_node*, %struct.device_node** %11, align 8
  %62 = call i32 @of_property_read_bool(%struct.device_node* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @RSCFG_RSTYPE_SOFT, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @RSCFG_RSTYPE_HARD, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %6, align 4
  %71 = call i32 (...) @rsctrl_enable_rspll_write()
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %162

76:                                               ; preds = %69
  %77 = load %struct.regmap*, %struct.regmap** @pllctrl_regs, align 8
  %78 = load i32, i32* @rspll_offset, align 4
  %79 = load i32, i32* @RSCFG_RG, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @regmap_write(%struct.regmap* %77, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %162

87:                                               ; preds = %76
  %88 = load %struct.regmap*, %struct.regmap** @pllctrl_regs, align 8
  %89 = load i32, i32* @rspll_offset, align 4
  %90 = load i32, i32* @RSISO_RG, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @regmap_write(%struct.regmap* %88, i32 %91, i32 0)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %162

97:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %149, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @WDT_MUX_NUMBER, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %152

102:                                              ; preds = %98
  %103 = load %struct.device_node*, %struct.device_node** %11, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @of_property_read_u32_index(%struct.device_node* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32* %6)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @EOVERFLOW, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.device*, %struct.device** %10, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %162

118:                                              ; preds = %110, %102
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %152

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @WDT_MUX_NUMBER, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.device*, %struct.device** %10, align 8
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %162

132:                                              ; preds = %123
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %6, align 4
  %135 = mul nsw i32 %134, 4
  %136 = add nsw i32 %133, %135
  store i32 %136, i32* %7, align 4
  %137 = load %struct.regmap*, %struct.regmap** %9, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @RSMUX_OMODE_MASK, align 4
  %140 = load i32, i32* @RSMUX_OMODE_RESET_ON, align 4
  %141 = load i32, i32* @RSMUX_LOCK_SET, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @regmap_update_bits(%struct.regmap* %137, i32 %138, i32 %139, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %162

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %98

152:                                              ; preds = %121, %98
  %153 = call i32 @register_restart_handler(i32* @rsctrl_restart_nb)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load %struct.device*, %struct.device** %10, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %146, %127, %113, %95, %85, %74, %55, %45, %37, %28, %19
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @rsctrl_enable_rspll_write(...) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @register_restart_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
