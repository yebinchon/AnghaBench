; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xwdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xwdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xwdt_device = type { i32, i32*, i32*, i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32, %struct.device*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xilinx_wdt_ident = common dso_local global i32 0, align 4
@xilinx_wdt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"xlnx,wdt-interval\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Parameter \22xlnx,wdt-interval\22 not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"xlnx,wdt-enable-once\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Parameter \22xlnx,wdt-enable-once\22 not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"The watchdog clock freq cannot be obtained\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"unable to enable clock\0A\00", align 1
@xwdt_clk_disable_unprepare = common dso_local global i32 0, align 4
@XWT_TIMER_FAILED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"SelfTest routine error\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Xilinx Watchdog Timer at %p with timeout %ds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xwdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xwdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xwdt_device*, align 8
  %9 = alloca %struct.watchdog_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.xwdt_device* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.xwdt_device* %14, %struct.xwdt_device** %8, align 8
  %15 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %16 = icmp ne %struct.xwdt_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %22 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %21, i32 0, i32 4
  store %struct.watchdog_device* %22, %struct.watchdog_device** %9, align 8
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 3
  store i32* @xilinx_wdt_ident, i32** %24, align 8
  %25 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %26 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %25, i32 0, i32 2
  store i32* @xilinx_wdt_ops, i32** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %29 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %28, i32 0, i32 1
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %30, i32 0)
  %32 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %33 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %35 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %20
  %40 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %41 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %2, align 4
  br label %190

44:                                               ; preds = %20
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %49 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %48, i32 0, i32 0
  %50 = call i32 @of_property_read_u32(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @of_property_read_u32(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %67, i32 %68)
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32* @devm_clk_get(%struct.device* %70, i32* null)
  %72 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %73 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %75 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %66
  %80 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %81 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @PTR_ERR(i32* %82)
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %89 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %2, align 4
  br label %190

92:                                               ; preds = %79
  %93 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %94 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @of_property_read_u32(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %92
  br label %110

105:                                              ; preds = %66
  %106 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %107 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @clk_get_rate(i32* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %115 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %120 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = load i32, i32* %6, align 4
  %124 = sdiv i32 %122, %123
  %125 = mul nsw i32 2, %124
  %126 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %127 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %118, %113, %110
  %129 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %130 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %129, i32 0, i32 3
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %133 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %134 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %132, %struct.xwdt_device* %133)
  %135 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %136 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @clk_prepare_enable(i32* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %190

145:                                              ; preds = %128
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = load i32, i32* @xwdt_clk_disable_unprepare, align 4
  %148 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %149 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @devm_add_action_or_reset(%struct.device* %146, i32 %147, i32* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %190

156:                                              ; preds = %145
  %157 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %158 = call i32 @xwdt_selftest(%struct.xwdt_device* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @XWT_TIMER_FAILED, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %190

166:                                              ; preds = %156
  %167 = load %struct.device*, %struct.device** %4, align 8
  %168 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %169 = call i32 @devm_watchdog_register_device(%struct.device* %167, %struct.watchdog_device* %168)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %190

174:                                              ; preds = %166
  %175 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %176 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @clk_disable(i32* %177)
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %181 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.watchdog_device*, %struct.watchdog_device** %9, align 8
  %184 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @dev_info(%struct.device* %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32* %182, i32 %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = load %struct.xwdt_device*, %struct.xwdt_device** %8, align 8
  %189 = call i32 @platform_set_drvdata(%struct.platform_device* %187, %struct.xwdt_device* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %174, %172, %162, %154, %141, %87, %39, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.xwdt_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.xwdt_device*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, i32*) #1

declare dso_local i32 @xwdt_selftest(%struct.xwdt_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @clk_disable(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xwdt_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
