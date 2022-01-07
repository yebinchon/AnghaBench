; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_gpio_controller = type { %struct.gb_gpio_controller*, i64, %struct.gpio_chip, i32, %struct.irq_chip, %struct.gbphy_device*, %struct.gb_connection* }
%struct.gpio_chip = type { i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.irq_chip = type { i8*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_gpio_request_handler = common dso_local global i32 0, align 4
@gb_gpio_irq_mask = common dso_local global i32 0, align 4
@gb_gpio_irq_unmask = common dso_local global i32 0, align 4
@gb_gpio_irq_set_type = common dso_local global i32 0, align 4
@gb_gpio_irq_bus_lock = common dso_local global i32 0, align 4
@gb_gpio_irq_bus_sync_unlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"greybus_gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@gb_gpio_request = common dso_local global i32 0, align 4
@gb_gpio_free = common dso_local global i32 0, align 4
@gb_gpio_get_direction = common dso_local global i32 0, align 4
@gb_gpio_direction_input = common dso_local global i32 0, align 4
@gb_gpio_direction_output = common dso_local global i32 0, align 4
@gb_gpio_get = common dso_local global i32 0, align 4
@gb_gpio_set = common dso_local global i32 0, align 4
@gb_gpio_set_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to add gpio chip: %d\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_gpio_controller*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gb_gpio_controller* @kzalloc(i32 144, i32 %11)
  store %struct.gb_gpio_controller* %12, %struct.gb_gpio_controller** %7, align 8
  %13 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %14 = icmp ne %struct.gb_gpio_controller* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %177

18:                                               ; preds = %2
  %19 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %20 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %23 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32, i32* @gb_gpio_request_handler, align 4
  %29 = call %struct.gb_connection* @gb_connection_create(i32 %21, i32 %27, i32 %28)
  store %struct.gb_connection* %29, %struct.gb_connection** %6, align 8
  %30 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %31 = call i64 @IS_ERR(%struct.gb_connection* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.gb_connection* %34)
  store i32 %35, i32* %10, align 4
  br label %173

36:                                               ; preds = %18
  %37 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %38 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %39 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %38, i32 0, i32 6
  store %struct.gb_connection* %37, %struct.gb_connection** %39, align 8
  %40 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %41 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %42 = call i32 @gb_connection_set_data(%struct.gb_connection* %40, %struct.gb_gpio_controller* %41)
  %43 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %44 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %45 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %44, i32 0, i32 5
  store %struct.gbphy_device* %43, %struct.gbphy_device** %45, align 8
  %46 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %47 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %48 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %46, %struct.gb_gpio_controller* %47)
  %49 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %50 = call i32 @gb_connection_enable_tx(%struct.gb_connection* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %170

54:                                               ; preds = %36
  %55 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %56 = call i32 @gb_gpio_controller_setup(%struct.gb_gpio_controller* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %167

60:                                               ; preds = %54
  %61 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %62 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %61, i32 0, i32 4
  store %struct.irq_chip* %62, %struct.irq_chip** %9, align 8
  %63 = load i32, i32* @gb_gpio_irq_mask, align 4
  %64 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %65 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @gb_gpio_irq_unmask, align 4
  %67 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %68 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @gb_gpio_irq_set_type, align 4
  %70 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %71 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @gb_gpio_irq_bus_lock, align 4
  %73 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %74 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @gb_gpio_irq_bus_sync_unlock, align 4
  %76 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %77 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %79 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %79, align 8
  %80 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %81 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %80, i32 0, i32 3
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %84 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %83, i32 0, i32 2
  store %struct.gpio_chip* %84, %struct.gpio_chip** %8, align 8
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %88 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %87, i32 0, i32 0
  %89 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %90 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %89, i32 0, i32 13
  store i32* %88, i32** %90, align 8
  %91 = load i32, i32* @THIS_MODULE, align 4
  %92 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %93 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @gb_gpio_request, align 4
  %95 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %96 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @gb_gpio_free, align 4
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @gb_gpio_get_direction, align 4
  %101 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %102 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @gb_gpio_direction_input, align 4
  %104 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %105 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @gb_gpio_direction_output, align 4
  %107 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %108 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @gb_gpio_get, align 4
  %110 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %111 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @gb_gpio_set, align 4
  %113 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %114 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @gb_gpio_set_config, align 4
  %116 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %117 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %119 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 8
  %120 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %121 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %125 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %127 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %126, i32 0, i32 2
  store i32 1, i32* %127, align 4
  %128 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %129 = call i32 @gb_connection_enable(%struct.gb_connection* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %60
  br label %162

133:                                              ; preds = %60
  %134 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %135 = call i32 @gpiochip_add(%struct.gpio_chip* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %140 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %139, i32 0, i32 0
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  br label %162

143:                                              ; preds = %133
  %144 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %145 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %146 = load i32, i32* @handle_level_irq, align 4
  %147 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %148 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %144, %struct.irq_chip* %145, i32 0, i32 %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %153 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %152, i32 0, i32 0
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %159

156:                                              ; preds = %143
  %157 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %158 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %157)
  store i32 0, i32* %3, align 4
  br label %177

159:                                              ; preds = %151
  %160 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %161 = call i32 @gpiochip_remove(%struct.gpio_chip* %160)
  br label %162

162:                                              ; preds = %159, %138, %132
  %163 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %164 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %163, i32 0, i32 0
  %165 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %164, align 8
  %166 = call i32 @kfree(%struct.gb_gpio_controller* %165)
  br label %167

167:                                              ; preds = %162, %59
  %168 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %169 = call i32 @gb_connection_disable(%struct.gb_connection* %168)
  br label %170

170:                                              ; preds = %167, %53
  %171 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %172 = call i32 @gb_connection_destroy(%struct.gb_connection* %171)
  br label %173

173:                                              ; preds = %170, %33
  %174 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %175 = call i32 @kfree(%struct.gb_gpio_controller* %174)
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %156, %15
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.gb_gpio_controller* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_gpio_controller*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_gpio_controller*) #1

declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #1

declare dso_local i32 @gb_gpio_controller_setup(%struct.gb_gpio_controller*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, %struct.irq_chip*, i32, i32, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @kfree(%struct.gb_gpio_controller*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
