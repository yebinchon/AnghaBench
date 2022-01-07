; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_alloc_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_alloc_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { %struct.etd_priv* }
%struct.etd_priv = type { i32 }

@USB_NUM_ETD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx21*)* @alloc_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_etd(%struct.imx21* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx21*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.etd_priv*, align 8
  store %struct.imx21* %0, %struct.imx21** %3, align 8
  %6 = load %struct.imx21*, %struct.imx21** %3, align 8
  %7 = getelementptr inbounds %struct.imx21, %struct.imx21* %6, i32 0, i32 0
  %8 = load %struct.etd_priv*, %struct.etd_priv** %7, align 8
  store %struct.etd_priv* %8, %struct.etd_priv** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @USB_NUM_ETD, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %15 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %20 = call i32 @memset(%struct.etd_priv* %19, i32 0, i32 4)
  %21 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %22 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.imx21*, %struct.imx21** %3, align 8
  %24 = call i32 @debug_etd_allocated(%struct.imx21* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %31 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %30, i32 1
  store %struct.etd_priv* %31, %struct.etd_priv** %5, align 8
  br label %9

32:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.etd_priv*, i32, i32) #1

declare dso_local i32 @debug_etd_allocated(%struct.imx21*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
