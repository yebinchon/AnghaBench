; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_edp_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_edp_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tegra_soctherm = type { i64 }

@OC_INTR_STATUS = common dso_local global i64 0, align 8
@OC_INTR_OC1_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC2_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC3_MASK = common dso_local global i32 0, align 4
@OC_INTR_OC4_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"soctherm: OC ALARM 0x%08x\0A\00", align 1
@THROTTLE_OC1 = common dso_local global i32 0, align 4
@THROTTLE_OC2 = common dso_local global i32 0, align 4
@THROTTLE_OC3 = common dso_local global i32 0, align 4
@THROTTLE_OC4 = common dso_local global i32 0, align 4
@soc_irq_cdata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"soctherm: Ignored unexpected OC ALARM 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @soctherm_edp_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_edp_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_soctherm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.tegra_soctherm*
  store %struct.tegra_soctherm* %13, %struct.tegra_soctherm** %5, align 8
  %14 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OC_INTR_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @OC_INTR_OC1_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @OC_INTR_OC2_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @OC_INTR_OC3_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @OC_INTR_OC4_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %147

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OC_INTR_STATUS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %43
  %58 = load i32, i32* @THROTTLE_OC1, align 4
  %59 = call i32 @soctherm_handle_alarm(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %63 = load i32, i32* @THROTTLE_OC1, align 4
  %64 = call i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm* %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %61, %57, %43
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* @THROTTLE_OC2, align 4
  %70 = call i32 @soctherm_handle_alarm(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %74 = load i32, i32* @THROTTLE_OC2, align 4
  %75 = call i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %72, %68, %65
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* @THROTTLE_OC3, align 4
  %81 = call i32 @soctherm_handle_alarm(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %85 = load i32, i32* @THROTTLE_OC3, align 4
  %86 = call i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm* %84, i32 %85, i32 1)
  br label %87

87:                                               ; preds = %83, %79, %76
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load i32, i32* @THROTTLE_OC4, align 4
  %92 = call i32 @soctherm_handle_alarm(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %96 = load i32, i32* @THROTTLE_OC4, align 4
  %97 = call i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm* %95, i32 %96, i32 1)
  br label %98

98:                                               ; preds = %94, %90, %87
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 0), align 4
  %103 = call i32 @BIT(i32 0)
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 1), align 4
  %108 = call i32 @irq_find_mapping(i32 %107, i32 0)
  %109 = call i32 @handle_nested_irq(i32 %108)
  br label %110

110:                                              ; preds = %106, %101, %98
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 0), align 4
  %115 = call i32 @BIT(i32 1)
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 1), align 4
  %120 = call i32 @irq_find_mapping(i32 %119, i32 1)
  %121 = call i32 @handle_nested_irq(i32 %120)
  br label %122

122:                                              ; preds = %118, %113, %110
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 0), align 4
  %127 = call i32 @BIT(i32 2)
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 1), align 4
  %132 = call i32 @irq_find_mapping(i32 %131, i32 2)
  %133 = call i32 @handle_nested_irq(i32 %132)
  br label %134

134:                                              ; preds = %130, %125, %122
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 0), align 4
  %139 = call i32 @BIT(i32 3)
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @soc_irq_cdata, i32 0, i32 1), align 4
  %144 = call i32 @irq_find_mapping(i32 %143, i32 3)
  %145 = call i32 @handle_nested_irq(i32 %144)
  br label %146

146:                                              ; preds = %142, %137, %134
  br label %147

147:                                              ; preds = %146, %2
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %155 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @OC_INTR_STATUS, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  br label %160

160:                                              ; preds = %150, %147
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %161
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @soctherm_handle_alarm(i32) #1

declare dso_local i32 @soctherm_oc_intr_enable(%struct.tegra_soctherm*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
