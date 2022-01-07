; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_bridge_pcmcia_80211.c_ssb_host_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_bridge_pcmcia_80211.c_ssb_host_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.ssb_bus*, %struct.TYPE_3__**, i32, i32 }
%struct.ssb_bus = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@WIN_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@WIN_USE_WAIT = common dso_local global i32 0, align 4
@SSB_CORE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Initialization failed (%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ssb_host_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_host_pcmcia_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ssb_bus* @kzalloc(i32 4, i32 %9)
  store %struct.ssb_bus* %10, %struct.ssb_bus** %4, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %12 = icmp ne %struct.ssb_bus* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %105

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @WIN_ENABLE, align 4
  %23 = load i32, i32* @WIN_DATA_WIDTH_16, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WIN_USE_WAIT, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %26
  store i32 %34, i32* %32, align 8
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @SSB_CORE_SIZE, align 4
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %41, i32* %47, align 8
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %48, %struct.TYPE_3__* %53, i32 250)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %14
  br label %102

58:                                               ; preds = %14
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %60 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %61 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %59, %struct.TYPE_3__* %64, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %99

69:                                               ; preds = %58
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %99

75:                                               ; preds = %69
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %99

81:                                               ; preds = %75
  %82 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %84 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %85 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ssb_bus_pcmciabus_register(%struct.ssb_bus* %82, %struct.pcmcia_device* %83, i64 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %99

95:                                               ; preds = %81
  %96 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %97 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %98 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %97, i32 0, i32 1
  store %struct.ssb_bus* %96, %struct.ssb_bus** %98, align 8
  store i32 0, i32* %2, align 4
  br label %112

99:                                               ; preds = %94, %80, %74, %68
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %101 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %100)
  br label %102

102:                                              ; preds = %99, %57
  %103 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %104 = call i32 @kfree(%struct.ssb_bus* %103)
  br label %105

105:                                              ; preds = %102, %13
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %107 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %106, i32 0, i32 0
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %95
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.ssb_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @ssb_bus_pcmciabus_register(%struct.ssb_bus*, %struct.pcmcia_device*, i64) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.ssb_bus*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
