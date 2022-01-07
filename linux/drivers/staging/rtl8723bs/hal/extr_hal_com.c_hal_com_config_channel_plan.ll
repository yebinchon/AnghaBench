; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_hal_com_config_channel_plan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_hal_com_config_channel_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@EEPROM_CHANNEL_PLAN_BY_HW_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hal_com_config_channel_plan(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hal_com_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %14)
  store %struct.hal_com_data* %15, %struct.hal_com_data** %11, align 8
  %16 = load %struct.hal_com_data*, %struct.hal_com_data** %11, align 8
  %17 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 255, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 1, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EEPROM_CHANNEL_PLAN_BY_HW_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @rtw_is_channel_plan_valid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EEPROM_CHANNEL_PLAN_BY_HW_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.hal_com_data*, %struct.hal_com_data** %11, align 8
  %40 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %25
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.hal_com_data*, %struct.hal_com_data** %11, align 8
  %46 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 0, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @rtw_is_channel_plan_valid(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %49, %44
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @rtw_is_channel_plan_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
