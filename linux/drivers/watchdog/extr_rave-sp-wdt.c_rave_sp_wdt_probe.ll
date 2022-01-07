; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_rave-sp-wdt.c_rave_sp_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_rave-sp-wdt.c_rave_sp_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.watchdog_device = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.device* }
%struct.rave_sp_wdt = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.watchdog_device, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvmem_cell = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rave_sp_wdt_info = common dso_local global i32 0, align 4
@rave_sp_wdt_ops = common dso_local global i32 0, align 4
@WATCHDOG_NOWAYOUT_INIT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"wdt-timeout\00", align 1
@rave_sp_wdt_reboot_notifier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to register reboot notifier\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Watchdog didn't start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rave_sp_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.rave_sp_wdt*, align 8
  %7 = alloca %struct.nvmem_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.rave_sp_wdt* @devm_kzalloc(%struct.device* %14, i32 72, i32 %15)
  store %struct.rave_sp_wdt* %16, %struct.rave_sp_wdt** %6, align 8
  %17 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %18 = icmp ne %struct.rave_sp_wdt* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %136

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.TYPE_3__* @of_device_get_match_data(%struct.device* %23)
  %25 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %26 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %25, i32 0, i32 1
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_get_drvdata(i32 %29)
  %31 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %32 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %34 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %33, i32 0, i32 2
  store %struct.watchdog_device* %34, %struct.watchdog_device** %5, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %37 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %36, i32 0, i32 7
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %39 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %38, i32 0, i32 6
  store i32* @rave_sp_wdt_info, i32** %39, align 8
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 5
  store i32* @rave_sp_wdt_ops, i32** %41, align 8
  %42 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %43 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %50 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @WATCHDOG_NOWAYOUT_INIT_STATUS, align 4
  %57 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %58 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %60 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %59, i32 0, i32 1
  store i32 60, i32* %60, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i8* @nvmem_cell_get(%struct.device* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %63 = bitcast i8* %62 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %63, %struct.nvmem_cell** %7, align 8
  %64 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %65 = bitcast %struct.nvmem_cell* %64 to i8*
  %66 = call i32 @IS_ERR(i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %22
  %69 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %70 = bitcast %struct.nvmem_cell* %69 to i8*
  %71 = call i8* @nvmem_cell_read(i8* %70, i64* %10)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @IS_ERR(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @min(i64 %77, i32 4)
  %79 = call i32 @memcpy(i32* %8, i8* %76, i32 %78)
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @kfree(i8* %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.nvmem_cell*, %struct.nvmem_cell** %7, align 8
  %84 = bitcast %struct.nvmem_cell* %83 to i8*
  %85 = call i32 @nvmem_cell_put(i8* %84)
  br label %86

86:                                               ; preds = %82, %22
  %87 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %87, i32 %89, %struct.device* %90)
  %92 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %93 = call i32 @watchdog_set_restart_priority(%struct.watchdog_device* %92, i32 255)
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %95 = call i32 @watchdog_stop_on_unregister(%struct.watchdog_device* %94)
  %96 = load i32, i32* @rave_sp_wdt_reboot_notifier, align 4
  %97 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %98 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.rave_sp_wdt*, %struct.rave_sp_wdt** %6, align 8
  %102 = getelementptr inbounds %struct.rave_sp_wdt, %struct.rave_sp_wdt* %101, i32 0, i32 0
  %103 = call i32 @devm_register_reboot_notifier(%struct.device* %100, %struct.TYPE_4__* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %86
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %136

110:                                              ; preds = %86
  %111 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %112 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 1000
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %116 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %118 = call i32 @rave_sp_wdt_start(%struct.watchdog_device* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %136

125:                                              ; preds = %110
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %128 = call i32 @devm_watchdog_register_device(%struct.device* %126, %struct.watchdog_device* %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %133 = call i32 @rave_sp_wdt_stop(%struct.watchdog_device* %132)
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %131, %121, %106, %19
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.rave_sp_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i8* @nvmem_cell_get(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_stop_on_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @devm_register_reboot_notifier(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rave_sp_wdt_start(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @rave_sp_wdt_stop(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
