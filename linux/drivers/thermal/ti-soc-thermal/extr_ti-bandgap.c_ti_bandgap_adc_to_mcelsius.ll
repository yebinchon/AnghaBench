; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_adc_to_mcelsius.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/ti-soc-thermal/extr_ti-bandgap.c_ti_bandgap_adc_to_mcelsius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_bandgap = type { %struct.ti_bandgap_data* }
%struct.ti_bandgap_data = type { i32, i32, i32* }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_bandgap*, i32, i32*)* @ti_bandgap_adc_to_mcelsius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_bandgap_adc_to_mcelsius(%struct.ti_bandgap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_bandgap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ti_bandgap_data*, align 8
  store %struct.ti_bandgap* %0, %struct.ti_bandgap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %10 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %9, i32 0, i32 0
  %11 = load %struct.ti_bandgap_data*, %struct.ti_bandgap_data** %10, align 8
  store %struct.ti_bandgap_data* %11, %struct.ti_bandgap_data** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ti_bandgap_data*, %struct.ti_bandgap_data** %8, align 8
  %14 = getelementptr inbounds %struct.ti_bandgap_data, %struct.ti_bandgap_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ti_bandgap_data*, %struct.ti_bandgap_data** %8, align 8
  %20 = getelementptr inbounds %struct.ti_bandgap_data, %struct.ti_bandgap_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.ti_bandgap*, %struct.ti_bandgap** %5, align 8
  %28 = getelementptr inbounds %struct.ti_bandgap, %struct.ti_bandgap* %27, i32 0, i32 0
  %29 = load %struct.ti_bandgap_data*, %struct.ti_bandgap_data** %28, align 8
  %30 = getelementptr inbounds %struct.ti_bandgap_data, %struct.ti_bandgap_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ti_bandgap_data*, %struct.ti_bandgap_data** %8, align 8
  %34 = getelementptr inbounds %struct.ti_bandgap_data, %struct.ti_bandgap_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %26, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
