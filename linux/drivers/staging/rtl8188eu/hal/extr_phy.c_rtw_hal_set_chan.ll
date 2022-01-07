; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtw_hal_set_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtw_hal_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_set_chan(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hal_data_8188e*, align 8
  %6 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 2
  %9 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %8, align 8
  store %struct.hal_data_8188e* %9, %struct.hal_data_8188e** %5, align 8
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %11 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* inttoptr (i64 1 to i8*), i8** %4, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %19 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @phy_sw_chnl_callback(%struct.adapter* %30, i8* %31)
  br label %37

33:                                               ; preds = %24, %16
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %36 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @phy_sw_chnl_callback(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
