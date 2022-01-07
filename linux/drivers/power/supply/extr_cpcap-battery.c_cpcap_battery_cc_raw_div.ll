; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_cc_raw_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_cc_raw_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_battery_ddata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_battery_ddata*, i32, i32, i32, i32)* @cpcap_battery_cc_raw_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_cc_raw_div(%struct.cpcap_battery_ddata* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpcap_battery_ddata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cpcap_battery_ddata* %0, %struct.cpcap_battery_ddata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %64

19:                                               ; preds = %5
  %20 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %7, align 8
  %21 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %25 [
    i32 129, label %23
    i32 128, label %24
  ]

23:                                               ; preds = %19
  store i32 95374, i32* %15, align 4
  br label %28

24:                                               ; preds = %19
  store i32 91501, i32* %15, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %64

28:                                               ; preds = %24, %23
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %7, align 8
  %37 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %13, align 4
  br label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, -1
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @do_div(i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %59, %25, %18
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
