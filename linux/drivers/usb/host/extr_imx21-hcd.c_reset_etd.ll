; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_reset_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_reset_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { %struct.etd_priv* }
%struct.etd_priv = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, i32)* @reset_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_etd(%struct.imx21* %0, i32 %1) #0 {
  %3 = alloca %struct.imx21*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.etd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.imx21* %0, %struct.imx21** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.imx21*, %struct.imx21** %3, align 8
  %8 = getelementptr inbounds %struct.imx21, %struct.imx21* %7, i32 0, i32 0
  %9 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %9, i64 %11
  store %struct.etd_priv* %12, %struct.etd_priv** %5, align 8
  %13 = load %struct.imx21*, %struct.imx21** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @disactivate_etd(%struct.imx21* %13, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %24, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.imx21*, %struct.imx21** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @etd_writel(%struct.imx21* %20, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %29 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %31 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %33 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %35 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @disactivate_etd(%struct.imx21*, i32) #1

declare dso_local i32 @etd_writel(%struct.imx21*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
