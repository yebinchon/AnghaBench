; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_cc_get_avg_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_cc_get_avg_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_battery_ddata = type { i64, i32 }

@CPCAP_VENDOR_ST = common dso_local global i64 0, align 8
@CPCAP_REG_CCI = common dso_local global i32 0, align 4
@CPCAP_VENDOR_TI = common dso_local global i64 0, align 8
@CPCAP_REG_CCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_battery_ddata*)* @cpcap_battery_cc_get_avg_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_cc_get_avg_current(%struct.cpcap_battery_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_battery_ddata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpcap_battery_ddata* %0, %struct.cpcap_battery_ddata** %3, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %10 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CPCAP_VENDOR_ST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 4, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %17 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CPCAP_REG_CCI, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %62

25:                                               ; preds = %15
  %26 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %27 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CPCAP_VENDOR_TI, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 8192
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, 49152
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31, %25
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %40 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CPCAP_REG_CCM, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %4)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %62

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 512
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 64512
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @cpcap_battery_cc_to_ua(%struct.cpcap_battery_ddata* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %46, %23
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cpcap_battery_cc_to_ua(%struct.cpcap_battery_ddata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
