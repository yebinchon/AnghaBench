; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.da9150_fg_pdata*, i64, i32 }
%struct.da9150_fg_pdata = type { i32, i32, i64 }
%struct.da9150 = type { i32 }
%struct.da9150_fg = type { i32, i32, i32, i64, i32, i32, %struct.device*, %struct.da9150* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9150_CORE2WIRE_CTRL_A = common dso_local global i32 0, align 4
@DA9150_FG_QIF_EN_MASK = common dso_local global i32 0, align 4
@fg_desc = common dso_local global i32 0, align 4
@DA9150_QIF_FW_MAIN_VER = common dso_local global i32 0, align 4
@DA9150_QIF_FW_MAIN_VER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Version: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid SOC warning level provided, Ignoring\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid SOC critical level provided, Ignoring\00", align 1
@da9150_fg_work = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"FG\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to get IRQ FG: %d\0A\00", align 1
@da9150_fg_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9150_fg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_fg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da9150*, align 8
  %6 = alloca %struct.da9150_fg_pdata*, align 8
  %7 = alloca %struct.da9150_fg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.da9150* @dev_get_drvdata(i32 %15)
  store %struct.da9150* %16, %struct.da9150** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.da9150_fg_pdata* @dev_get_platdata(%struct.device* %17)
  store %struct.da9150_fg_pdata* %18, %struct.da9150_fg_pdata** %6, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.da9150_fg* @devm_kzalloc(%struct.device* %19, i32 48, i32 %20)
  store %struct.da9150_fg* %21, %struct.da9150_fg** %7, align 8
  %22 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %23 = icmp eq %struct.da9150_fg* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.da9150_fg* %29)
  %31 = load %struct.da9150*, %struct.da9150** %5, align 8
  %32 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %33 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %32, i32 0, i32 7
  store %struct.da9150* %31, %struct.da9150** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %36 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %35, i32 0, i32 6
  store %struct.device* %34, %struct.device** %36, align 8
  %37 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %38 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %37, i32 0, i32 5
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.da9150*, %struct.da9150** %5, align 8
  %41 = load i32, i32* @DA9150_CORE2WIRE_CTRL_A, align 4
  %42 = load i32, i32* @DA9150_FG_QIF_EN_MASK, align 4
  %43 = load i32, i32* @DA9150_FG_QIF_EN_MASK, align 4
  %44 = call i32 @da9150_set_bits(%struct.da9150* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @devm_power_supply_register(%struct.device* %45, i32* @fg_desc, i32* null)
  %47 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %48 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %50 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %27
  %55 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %56 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %2, align 4
  br label %178

60:                                               ; preds = %27
  %61 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %62 = load i32, i32* @DA9150_QIF_FW_MAIN_VER, align 4
  %63 = load i32, i32* @DA9150_QIF_FW_MAIN_VER_SIZE, align 4
  %64 = call i32 @da9150_fg_read_attr(%struct.da9150_fg* %61, i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call %struct.da9150_fg_pdata* @da9150_fg_dt_pdata(%struct.device* %73)
  store %struct.da9150_fg_pdata* %74, %struct.da9150_fg_pdata** %6, align 8
  %75 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  store %struct.da9150_fg_pdata* %75, %struct.da9150_fg_pdata** %77, align 8
  br label %78

78:                                               ; preds = %72, %60
  %79 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %80 = icmp ne %struct.da9150_fg_pdata* %79, null
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %83 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %86 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %88 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 100
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %100

94:                                               ; preds = %81
  %95 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %96 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %99 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %91
  %101 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %102 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 100
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %107 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %110 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105, %100
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_warn(%struct.device* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %122

116:                                              ; preds = %105
  %117 = load %struct.da9150_fg_pdata*, %struct.da9150_fg_pdata** %6, align 8
  %118 = getelementptr inbounds %struct.da9150_fg_pdata, %struct.da9150_fg_pdata* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %121 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %113
  br label %123

123:                                              ; preds = %122, %78
  %124 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %125 = call i32 @da9150_fg_soc_event_config(%struct.da9150_fg* %124)
  %126 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %127 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %132 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %131, i32 0, i32 2
  %133 = load i32, i32* @da9150_fg_work, align 4
  %134 = call i32 @INIT_DELAYED_WORK(i32* %132, i32 %133)
  %135 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %136 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %135, i32 0, i32 2
  %137 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %138 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @msecs_to_jiffies(i64 %139)
  %141 = call i32 @schedule_delayed_work(i32* %136, i32 %140)
  br label %142

142:                                              ; preds = %130, %123
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @platform_get_irq_byname(%struct.platform_device* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.device*, %struct.device** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %10, align 4
  br label %167

152:                                              ; preds = %142
  %153 = load %struct.device*, %struct.device** %4, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @da9150_fg_irq, align 4
  %156 = load i32, i32* @IRQF_ONESHOT, align 4
  %157 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %158 = call i32 @devm_request_threaded_irq(%struct.device* %153, i32 %154, i32* null, i32 %155, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.da9150_fg* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %163, i32 %164)
  br label %167

166:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %178

167:                                              ; preds = %161, %147
  %168 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %169 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.da9150_fg*, %struct.da9150_fg** %7, align 8
  %174 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %173, i32 0, i32 2
  %175 = call i32 @cancel_delayed_work(i32* %174)
  br label %176

176:                                              ; preds = %172, %167
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %166, %54, %24
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.da9150* @dev_get_drvdata(i32) #1

declare dso_local %struct.da9150_fg_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.da9150_fg* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9150_fg*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @da9150_set_bits(%struct.da9150*, i32, i32, i32) #1

declare dso_local i32 @devm_power_supply_register(%struct.device*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @da9150_fg_read_attr(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local %struct.da9150_fg_pdata* @da9150_fg_dt_pdata(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @da9150_fg_soc_event_config(%struct.da9150_fg*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.da9150_fg*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
