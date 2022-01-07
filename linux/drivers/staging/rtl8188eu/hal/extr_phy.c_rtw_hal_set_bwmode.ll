; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtw_hal_set_bwmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtw_hal_set_bwmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_set_bwmode(%struct.adapter* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.hal_data_8188e*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  %11 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %10, align 8
  store %struct.hal_data_8188e* %11, %struct.hal_data_8188e** %7, align 8
  %12 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %13 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %17 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8, i8* %6, align 1
  %19 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %20 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %19, i32 0, i32 1
  store i8 %18, i8* %20, align 4
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = call i32 @phy_set_bw_mode_callback(%struct.adapter* %31)
  br label %37

33:                                               ; preds = %25, %3
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %36 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @phy_set_bw_mode_callback(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
