; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mena21_wdt.c_a21_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.a21_wdt_drv = type { %struct.TYPE_6__, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"gpios DT property wrong, got %d want %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GPIO_WD_RST0 = common dso_local global i32 0, align 4
@GPIOD_ASIS = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MEN A21 Watchdog\00", align 1
@a21_wdt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@WDIOF_EXTERN1 = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@WDIOF_POWERUNDER = common dso_local global i32 0, align 4
@WDIOF_EXTERN2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"MEN A21 watchdog timer driver enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @a21_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a21_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.a21_wdt_drv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.a21_wdt_drv* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  store %struct.a21_wdt_drv* %16, %struct.a21_wdt_drv** %5, align 8
  %17 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %18 = icmp ne %struct.a21_wdt_drv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %167

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @gpiod_count(%struct.device* %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NUM_GPIOS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NUM_GPIOS, align 4
  %32 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %167

35:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %108, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %111

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GPIO_WD_RST0, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @GPIOD_ASIS, align 4
  store i32 %45, i32* %10, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @GPIOD_IN, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @devm_gpiod_get_index(%struct.device* %49, i32* null, i32 %50, i32 %51)
  %53 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %54 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %60 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %48
  %69 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %70 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %167

77:                                               ; preds = %48
  %78 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %79 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gpiod_set_consumer_name(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @GPIO_WD_RST0, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %77
  %90 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %91 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @gpiod_get_value(i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %99 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @gpiod_direction_output(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %89, %77
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %36

111:                                              ; preds = %36
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* @a21_wdt, i32 30, %struct.device* %112)
  %114 = load i32, i32* @nowayout, align 4
  %115 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* @a21_wdt, i32 %114)
  %116 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %117 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* @a21_wdt, %struct.a21_wdt_drv* %116)
  %118 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %118, %struct.device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 1), align 8
  %119 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %120 = call i32 @a21_wdt_get_bootstatus(%struct.a21_wdt_drv* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load i32, i32* @WDIOF_EXTERN1, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  %126 = or i32 %125, %124
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  br label %151

127:                                              ; preds = %111
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* @WDIOF_CARDRESET, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  %133 = or i32 %132, %131
  store i32 %133, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  br label %150

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* @WDIOF_POWERUNDER, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  %140 = or i32 %139, %138
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  br label %149

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 7
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* @WDIOF_EXTERN2, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  %147 = or i32 %146, %145
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @a21_wdt, i32 0, i32 0), align 8
  br label %148

148:                                              ; preds = %144, %141
  br label %149

149:                                              ; preds = %148, %137
  br label %150

150:                                              ; preds = %149, %130
  br label %151

151:                                              ; preds = %150, %123
  %152 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %153 = getelementptr inbounds %struct.a21_wdt_drv, %struct.a21_wdt_drv* %152, i32 0, i32 0
  %154 = bitcast %struct.TYPE_6__* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 bitcast (%struct.TYPE_6__* @a21_wdt to i8*), i64 16, i1 false)
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = load %struct.a21_wdt_drv*, %struct.a21_wdt_drv** %5, align 8
  %157 = call i32 @dev_set_drvdata(%struct.device* %155, %struct.a21_wdt_drv* %156)
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = call i32 @devm_watchdog_register_device(%struct.device* %158, %struct.TYPE_6__* @a21_wdt)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %151
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %2, align 4
  br label %167

164:                                              ; preds = %151
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 @dev_info(%struct.device* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %164, %162, %68, %28, %19
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.a21_wdt_drv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @gpiod_count(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_set_consumer_name(i32, i8*) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_6__*, %struct.a21_wdt_drv*) #1

declare dso_local i32 @a21_wdt_get_bootstatus(%struct.a21_wdt_drv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.a21_wdt_drv*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
