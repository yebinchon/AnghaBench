; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpc18xx_rgu_data = type { i32, i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__, i32, i8* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reg clock not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"delay clock not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to enable reg clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to enable delay clock\0A\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@lpc18xx_rgu_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"unable to register device\0A\00", align 1
@lpc18xx_rgu_restart = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to register restart handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_rgu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_rgu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_rgu_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lpc18xx_rgu_data* @devm_kzalloc(%struct.TYPE_10__* %10, i32 72, i32 %11)
  store %struct.lpc18xx_rgu_data* %12, %struct.lpc18xx_rgu_data** %4, align 8
  %13 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %14 = icmp ne %struct.lpc18xx_rgu_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %190

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i8* @devm_ioremap_resource(%struct.TYPE_10__* %23, %struct.resource* %24)
  %26 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %27 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %29 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %35 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %2, align 4
  br label %190

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i8* @devm_clk_get(%struct.TYPE_10__* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %43 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %45 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_10__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %54 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %190

57:                                               ; preds = %38
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i8* @devm_clk_get(%struct.TYPE_10__* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %62 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %73 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %190

76:                                               ; preds = %57
  %77 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %78 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @clk_prepare_enable(i8* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(%struct.TYPE_10__* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %190

88:                                               ; preds = %76
  %89 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %90 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @clk_prepare_enable(i8* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_err(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %184

99:                                               ; preds = %88
  %100 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %101 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @clk_get_rate(i8* %102)
  %104 = load i32, i32* @USEC_PER_SEC, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %107 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @clk_get_rate(i8* %108)
  %110 = load i32, i32* @USEC_PER_SEC, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %99
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %99
  %118 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %119 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %118, i32 0, i32 0
  store i32 2, i32* %119, align 8
  br label %128

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %122, %123
  %125 = call i32 @DIV_ROUND_UP(i32 %121, i32 %124)
  %126 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %127 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %128

128:                                              ; preds = %120, %117
  %129 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %130 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %129, i32 0, i32 5
  %131 = call i32 @spin_lock_init(i32* %130)
  %132 = load i32, i32* @THIS_MODULE, align 4
  %133 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %134 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 8
  %136 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %137 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 64, i32* %138, align 8
  %139 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %140 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  store i32* @lpc18xx_rgu_ops, i32** %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %147 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %151 = call i32 @platform_set_drvdata(%struct.platform_device* %149, %struct.lpc18xx_rgu_data* %150)
  %152 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %153 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %152, i32 0, i32 4
  %154 = call i32 @reset_controller_register(%struct.TYPE_8__* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %128
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_err(%struct.TYPE_10__* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %179

161:                                              ; preds = %128
  %162 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %163 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i32 192, i32* %164, align 8
  %165 = load i32, i32* @lpc18xx_rgu_restart, align 4
  %166 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %167 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %170 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %169, i32 0, i32 3
  %171 = call i32 @register_restart_handler(%struct.TYPE_9__* %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %161
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @dev_warn(%struct.TYPE_10__* %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %161
  store i32 0, i32* %2, align 4
  br label %190

179:                                              ; preds = %157
  %180 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %181 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @clk_disable_unprepare(i8* %182)
  br label %184

184:                                              ; preds = %179, %95
  %185 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %4, align 8
  %186 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @clk_disable_unprepare(i8* %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %184, %178, %83, %68, %49, %33, %15
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.lpc18xx_rgu_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_rgu_data*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_8__*) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
