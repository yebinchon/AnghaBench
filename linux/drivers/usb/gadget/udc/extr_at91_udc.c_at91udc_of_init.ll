; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91udc_of_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91udc_of_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32, %struct.at91_udc_data }
%struct.at91_udc_data = type { i32, i32, i32, i8*, i8* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"atmel,vbus-polled\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"atmel,vbus-gpio\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"atmel,pullup-gpio\00", align 1
@at91_udc_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_udc*, %struct.device_node*)* @at91udc_of_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91udc_of_init(%struct.at91_udc* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.at91_udc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.at91_udc_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.at91_udc* %0, %struct.at91_udc** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %9 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %10 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %9, i32 0, i32 1
  store %struct.at91_udc_data* %10, %struct.at91_udc_data** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i64 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %8)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.at91_udc_data*, %struct.at91_udc_data** %5, align 8
  %16 = getelementptr inbounds %struct.at91_udc_data, %struct.at91_udc_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i8* @of_get_named_gpio_flags(%struct.device_node* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %7)
  %20 = load %struct.at91_udc_data*, %struct.at91_udc_data** %5, align 8
  %21 = getelementptr inbounds %struct.at91_udc_data, %struct.at91_udc_data* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = load %struct.at91_udc_data*, %struct.at91_udc_data** %5, align 8
  %29 = getelementptr inbounds %struct.at91_udc_data, %struct.at91_udc_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i8* @of_get_named_gpio_flags(%struct.device_node* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* %7)
  %32 = load %struct.at91_udc_data*, %struct.at91_udc_data** %5, align 8
  %33 = getelementptr inbounds %struct.at91_udc_data, %struct.at91_udc_data* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.at91_udc_data*, %struct.at91_udc_data** %5, align 8
  %41 = getelementptr inbounds %struct.at91_udc_data, %struct.at91_udc_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @at91_udc_dt_ids, align 4
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call %struct.of_device_id* @of_match_node(i32 %42, %struct.device_node* %43)
  store %struct.of_device_id* %44, %struct.of_device_id** %6, align 8
  %45 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %46 = icmp ne %struct.of_device_id* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %17
  %48 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %49 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %52 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %17
  ret void
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
