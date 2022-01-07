; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@STAT_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reading STAT_C failed\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQSTAT_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"reading IRQSTAT_C failed\0A\00", align 1
@IRQSTAT_D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"reading IRQSTAT_D failed\0A\00", align 1
@IRQSTAT_E = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"reading IRQSTAT_E failed\0A\00", align 1
@STAT_C_CHARGER_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"charging stopped due to charger error\0A\00", align 1
@IRQSTAT_C_TERMINATION_IRQ = common dso_local global i32 0, align 4
@IRQSTAT_C_TAPER_IRQ = common dso_local global i32 0, align 4
@IRQSTAT_C_TERMINATION_STAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"going to HW maintenance mode\0A\00", align 1
@IRQSTAT_D_CHARGE_TIMEOUT_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"total Charge Timeout INT received\0A\00", align 1
@IRQSTAT_D_CHARGE_TIMEOUT_STAT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"charging stopped due to timeout\0A\00", align 1
@IRQSTAT_E_USBIN_UV_IRQ = common dso_local global i32 0, align 4
@IRQSTAT_E_DCIN_UV_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smb347_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smb347_charger*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.smb347_charger*
  store %struct.smb347_charger* %14, %struct.smb347_charger** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %16 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STAT_C, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %7)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %24 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %178

28:                                               ; preds = %2
  %29 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %30 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IRQSTAT_C, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %8)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %38 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %178

42:                                               ; preds = %28
  %43 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %44 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IRQSTAT_D, align 4
  %47 = call i32 @regmap_read(i32 %45, i32 %46, i32* %9)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %52 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @IRQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %178

56:                                               ; preds = %42
  %57 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %58 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IRQSTAT_E, align 4
  %61 = call i32 @regmap_read(i32 %59, i32 %60, i32* %10)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %66 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @IRQ_NONE, align 4
  store i32 %69, i32* %3, align 4
  br label %178

70:                                               ; preds = %56
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @STAT_C_CHARGER_ERROR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %77 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %81 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @power_supply_changed(i32 %82)
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %70
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @IRQSTAT_C_TERMINATION_IRQ, align 4
  %87 = load i32, i32* @IRQSTAT_C_TAPER_IRQ, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IRQSTAT_C_TERMINATION_STAT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %98 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @power_supply_changed(i32 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %103 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %101, %84
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @IRQSTAT_D_CHARGE_TIMEOUT_IRQ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %113 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @IRQSTAT_D_CHARGE_TIMEOUT_STAT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %122 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_warn(i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %111
  %126 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %127 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @power_supply_changed(i32 %128)
  store i32 1, i32* %11, align 4
  br label %130

130:                                              ; preds = %125, %106
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @IRQSTAT_E_USBIN_UV_IRQ, align 4
  %133 = load i32, i32* @IRQSTAT_E_DCIN_UV_IRQ, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %169

137:                                              ; preds = %130
  %138 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %139 = call i64 @smb347_update_ps_status(%struct.smb347_charger* %138)
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %143 = call i32 @smb347_start_stop_charging(%struct.smb347_charger* %142)
  %144 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %145 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %152 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @power_supply_changed(i32 %153)
  br label %155

155:                                              ; preds = %150, %141
  %156 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %157 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.smb347_charger*, %struct.smb347_charger** %6, align 8
  %164 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @power_supply_changed(i32 %165)
  br label %167

167:                                              ; preds = %162, %155
  br label %168

168:                                              ; preds = %167, %137
  store i32 1, i32* %11, align 4
  br label %169

169:                                              ; preds = %168, %130
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  br label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @IRQ_NONE, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %64, %50, %36, %22
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @smb347_update_ps_status(%struct.smb347_charger*) #1

declare dso_local i32 @smb347_start_stop_charging(%struct.smb347_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
