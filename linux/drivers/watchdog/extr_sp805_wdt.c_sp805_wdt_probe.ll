; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_sp805_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_sp805_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.amba_id = type { i32 }
%struct.sp805_wdt = type { %struct.TYPE_17__, i32, %struct.amba_device*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Clock not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no clock-frequency property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@wdt_info = common dso_local global i32 0, align 4
@wdt_ops = common dso_local global i32 0, align 4
@nowayout = common dso_local global i32 0, align 4
@DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@WDOG_HW_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"registration successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Probe Failed!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @sp805_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp805_wdt_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.sp805_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %9 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sp805_wdt* @devm_kzalloc(%struct.TYPE_18__* %9, i32 64, i32 %10)
  store %struct.sp805_wdt* %11, %struct.sp805_wdt** %6, align 8
  %12 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %13 = icmp ne %struct.sp805_wdt* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  br label %162

17:                                               ; preds = %2
  %18 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %19 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %18, i32 0, i32 0
  %20 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %21 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %20, i32 0, i32 1
  %22 = call i32 @devm_ioremap_resource(%struct.TYPE_18__* %19, i32* %21)
  %23 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %24 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %26 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %32 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %167

35:                                               ; preds = %17
  %36 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %37 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %43 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %42, i32 0, i32 0
  %44 = call i32 @devm_clk_get(%struct.TYPE_18__* %43, i32* null)
  %45 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %46 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %48 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %54 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(%struct.TYPE_18__* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %57 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %167

60:                                               ; preds = %41
  %61 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %62 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_get_rate(i32 %63)
  %65 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %66 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  br label %90

67:                                               ; preds = %35
  %68 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %69 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %68, i32 0, i32 0
  %70 = call i64 @has_acpi_companion(%struct.TYPE_18__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %74 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %73, i32 0, i32 0
  %75 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %76 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %75, i32 0, i32 3
  %77 = call i32 @device_property_read_u64(%struct.TYPE_18__* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  %78 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %79 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %72
  %83 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %84 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_18__* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %167

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %92 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %93 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %92, i32 0, i32 2
  store %struct.amba_device* %91, %struct.amba_device** %93, align 8
  %94 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %95 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 4
  store i32* @wdt_info, i32** %96, align 8
  %97 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %98 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 3
  store i32* @wdt_ops, i32** %99, align 8
  %100 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %101 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %100, i32 0, i32 0
  %102 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %103 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %104, align 8
  %105 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %106 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %105, i32 0, i32 1
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %109 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %108, i32 0, i32 0
  %110 = load i32, i32* @nowayout, align 4
  %111 = call i32 @watchdog_set_nowayout(%struct.TYPE_17__* %109, i32 %110)
  %112 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %113 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %112, i32 0, i32 0
  %114 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %115 = call i32 @watchdog_set_drvdata(%struct.TYPE_17__* %113, %struct.sp805_wdt* %114)
  %116 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %117 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %116, i32 0, i32 0
  %118 = call i32 @watchdog_set_restart_priority(%struct.TYPE_17__* %117, i32 128)
  %119 = load i32, i32* @DEFAULT_TIMEOUT, align 4
  %120 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %121 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %124 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %123, i32 0, i32 0
  %125 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %126 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %125, i32 0, i32 0
  %127 = call i32 @watchdog_init_timeout(%struct.TYPE_17__* %124, i32 0, %struct.TYPE_18__* %126)
  %128 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %129 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %128, i32 0, i32 0
  %130 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %131 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @wdt_setload(%struct.TYPE_17__* %129, i32 %133)
  %135 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %136 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %135, i32 0, i32 0
  %137 = call i64 @wdt_is_running(%struct.TYPE_17__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %90
  %140 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %141 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %140, i32 0, i32 0
  %142 = call i32 @wdt_enable(%struct.TYPE_17__* %141)
  %143 = load i32, i32* @WDOG_HW_RUNNING, align 4
  %144 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %145 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = call i32 @set_bit(i32 %143, i32* %146)
  br label %148

148:                                              ; preds = %139, %90
  %149 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %150 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %149, i32 0, i32 0
  %151 = call i32 @watchdog_register_device(%struct.TYPE_17__* %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %162

155:                                              ; preds = %148
  %156 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %157 = load %struct.sp805_wdt*, %struct.sp805_wdt** %6, align 8
  %158 = call i32 @amba_set_drvdata(%struct.amba_device* %156, %struct.sp805_wdt* %157)
  %159 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %160 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %159, i32 0, i32 0
  %161 = call i32 @dev_info(%struct.TYPE_18__* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

162:                                              ; preds = %154, %14
  %163 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %164 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %163, i32 0, i32 0
  %165 = call i32 @dev_err(%struct.TYPE_18__* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %155, %82, %52, %30
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.sp805_wdt* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @has_acpi_companion(%struct.TYPE_18__*) #1

declare dso_local i32 @device_property_read_u64(%struct.TYPE_18__*, i8*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_17__*, %struct.sp805_wdt*) #1

declare dso_local i32 @watchdog_set_restart_priority(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @wdt_setload(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @wdt_is_running(%struct.TYPE_17__*) #1

declare dso_local i32 @wdt_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_17__*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.sp805_wdt*) #1

declare dso_local i32 @dev_info(%struct.TYPE_18__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
