; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_at91_wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.at91wdt = type { i32, i32, i64, i32, %struct.TYPE_4__, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@AT91_WDT_MR = common dso_local global i32 0, align 4
@WDT_MR_RESET = common dso_local global i32 0, align 4
@AT91_WDT_WDDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"watchdog is disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AT91_WDT_WDV = common dso_local global i32 0, align 4
@AT91_WDT_WDD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"heartbeat is too small for the system to handle it correctly\0A\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"min heartbeat and max heartbeat might be too close for the system to handle it correctly\0A\00", align 1
@AT91_WDT_WDFIEN = common dso_local global i32 0, align 4
@wdt_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"watchdog already configured differently (mr = %x expecting %x)\0A\00", align 1
@at91_ping = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.at91wdt*)* @at91_wdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_wdt_init(%struct.platform_device* %0, %struct.at91wdt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.at91wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.at91wdt* %1, %struct.at91wdt** %5, align 8
  %14 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %15 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  store i64 1, i64* %11, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %13, align 8
  %19 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %20 = load i32, i32* @AT91_WDT_MR, align 4
  %21 = call i32 @wdt_read(%struct.at91wdt* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %26 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @WDT_MR_RESET, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %37 = load i32, i32* @AT91_WDT_MR, align 4
  %38 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %39 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wdt_write(%struct.at91wdt* %36, i32 %37, i32 %40)
  %42 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %43 = load i32, i32* @AT91_WDT_MR, align 4
  %44 = call i32 @wdt_read(%struct.at91wdt* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35, %31
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @AT91_WDT_WDDIS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %53 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AT91_WDT_WDDIS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %234

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %13, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %234

64:                                               ; preds = %46
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @AT91_WDT_WDV, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @AT91_WDT_WDD, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i64 @ticks_to_hz_roundup(i32 %78)
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %75, %64
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @ticks_to_hz_rounddown(i32 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %13, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %234

90:                                               ; preds = %80
  %91 = load i64, i64* %12, align 8
  %92 = udiv i64 %91, 4
  %93 = load i64, i64* %11, align 8
  %94 = icmp uge i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i64, i64* %12, align 8
  %97 = udiv i64 %96, 4
  %98 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %99 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  br label %115

100:                                              ; preds = %90
  %101 = load i64, i64* %12, align 8
  %102 = udiv i64 %101, 2
  %103 = load i64, i64* %11, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i64, i64* %12, align 8
  %107 = udiv i64 %106, 2
  %108 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %109 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %114

110:                                              ; preds = %100
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %113 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %105
  br label %115

115:                                              ; preds = %114, %95
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, 4
  %119 = icmp ult i64 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.device*, %struct.device** %13, align 8
  %122 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %121, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @AT91_WDT_WDFIEN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %123
  %129 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %130 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %135 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @wdt_interrupt, align 4
  %138 = load i32, i32* @IRQF_SHARED, align 4
  %139 = load i32, i32* @IRQF_IRQPOLL, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %147 = call i32 @request_irq(i64 %136, i32 %137, i32 %142, i32 %145, %struct.at91wdt* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %133
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %234

152:                                              ; preds = %133
  br label %153

153:                                              ; preds = %152, %128, %123
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %156 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %154, %157
  %159 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %160 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %163 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %158, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %153
  %168 = load %struct.device*, %struct.device** %13, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %171 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %169, %172
  %174 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %175 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %178 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %176, %179
  %181 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %168, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32 %180)
  br label %182

182:                                              ; preds = %167, %153
  %183 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %184 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %183, i32 0, i32 3
  %185 = load i32, i32* @at91_ping, align 4
  %186 = call i32 @timer_setup(i32* %184, i32 %185, i32 0)
  %187 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %188 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %187, i32 0, i32 3
  %189 = load i64, i64* @jiffies, align 8
  %190 = load i64, i64* %11, align 8
  %191 = add i64 %189, %190
  %192 = call i32 @mod_timer(i32* %188, i64 %191)
  %193 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %194 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %193, i32 0, i32 4
  %195 = load %struct.device*, %struct.device** %13, align 8
  %196 = call i64 @watchdog_init_timeout(%struct.TYPE_4__* %194, i32 0, %struct.device* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %182
  %199 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %200 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %199, i32 0, i32 4
  %201 = load i32, i32* @heartbeat, align 4
  %202 = load %struct.device*, %struct.device** %13, align 8
  %203 = call i64 @watchdog_init_timeout(%struct.TYPE_4__* %200, i32 %201, %struct.device* %202)
  br label %204

204:                                              ; preds = %198, %182
  %205 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %206 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %205, i32 0, i32 4
  %207 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %208 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @watchdog_set_nowayout(%struct.TYPE_4__* %206, i32 %209)
  %211 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %212 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %211, i32 0, i32 4
  %213 = call i32 @watchdog_register_device(%struct.TYPE_4__* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %204
  br label %229

217:                                              ; preds = %204
  %218 = load i64, i64* @jiffies, align 8
  %219 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %220 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @HZ, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %218, %225
  %227 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %228 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %227, i32 0, i32 5
  store i64 %226, i64* %228, align 8
  store i32 0, i32* %3, align 4
  br label %234

229:                                              ; preds = %216
  %230 = load %struct.at91wdt*, %struct.at91wdt** %5, align 8
  %231 = getelementptr inbounds %struct.at91wdt, %struct.at91wdt* %230, i32 0, i32 3
  %232 = call i32 @del_timer(i32* %231)
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %229, %217, %150, %85, %59, %58
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @wdt_read(%struct.at91wdt*, i32) #1

declare dso_local i32 @wdt_write(%struct.at91wdt*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @ticks_to_hz_roundup(i32) #1

declare dso_local i64 @ticks_to_hz_rounddown(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.at91wdt*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @watchdog_init_timeout(%struct.TYPE_4__*, i32, %struct.device*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
