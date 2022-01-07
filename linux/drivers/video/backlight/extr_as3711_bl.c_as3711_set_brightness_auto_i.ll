; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_set_brightness_auto_i.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_set_brightness_auto_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3711_bl_data = type { i32 }
%struct.as3711_bl_supply = type { %struct.as3711_bl_pdata*, %struct.as3711* }
%struct.as3711_bl_pdata = type { i64, i64, i64 }
%struct.as3711 = type { i32 }

@AS3711_CURR1_VALUE = common dso_local global i32 0, align 4
@AS3711_CURR2_VALUE = common dso_local global i32 0, align 4
@AS3711_CURR3_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3711_bl_data*, i32)* @as3711_set_brightness_auto_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_set_brightness_auto_i(%struct.as3711_bl_data* %0, i32 %1) #0 {
  %3 = alloca %struct.as3711_bl_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3711_bl_supply*, align 8
  %6 = alloca %struct.as3711*, align 8
  %7 = alloca %struct.as3711_bl_pdata*, align 8
  %8 = alloca i32, align 4
  store %struct.as3711_bl_data* %0, %struct.as3711_bl_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %3, align 8
  %10 = call %struct.as3711_bl_supply* @to_supply(%struct.as3711_bl_data* %9)
  store %struct.as3711_bl_supply* %10, %struct.as3711_bl_supply** %5, align 8
  %11 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %5, align 8
  %12 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %11, i32 0, i32 1
  %13 = load %struct.as3711*, %struct.as3711** %12, align 8
  store %struct.as3711* %13, %struct.as3711** %6, align 8
  %14 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %5, align 8
  %15 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %14, i32 0, i32 0
  %16 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %15, align 8
  store %struct.as3711_bl_pdata* %16, %struct.as3711_bl_pdata** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %7, align 8
  %18 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.as3711*, %struct.as3711** %6, align 8
  %23 = getelementptr inbounds %struct.as3711, %struct.as3711* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AS3711_CURR1_VALUE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @regmap_write(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %28
  %32 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %7, align 8
  %33 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.as3711*, %struct.as3711** %6, align 8
  %38 = getelementptr inbounds %struct.as3711, %struct.as3711* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AS3711_CURR2_VALUE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @regmap_write(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %31, %28
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %7, align 8
  %48 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.as3711*, %struct.as3711** %6, align 8
  %53 = getelementptr inbounds %struct.as3711, %struct.as3711* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AS3711_CURR3_VALUE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %46, %43
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.as3711_bl_supply* @to_supply(%struct.as3711_bl_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
