; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_activate_queued_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_activate_queued_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { i32, %struct.etd_priv* }
%struct.etd_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.urb_priv* }
%struct.urb_priv = type { i32 }

@DW1_YBUFSRTAD = common dso_local global i32 0, align 4
@DW2_DIRPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"activating queued ETD %d now DMEM available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, %struct.etd_priv*, i32)* @activate_queued_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_queued_etd(%struct.imx21* %0, %struct.etd_priv* %1, i32 %2) #0 {
  %4 = alloca %struct.imx21*, align 8
  %5 = alloca %struct.etd_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx21* %0, %struct.imx21** %4, align 8
  store %struct.etd_priv* %1, %struct.etd_priv** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %12 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.urb_priv*, %struct.urb_priv** %14, align 8
  store %struct.urb_priv* %15, %struct.urb_priv** %7, align 8
  %16 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %17 = load %struct.imx21*, %struct.imx21** %4, align 8
  %18 = getelementptr inbounds %struct.imx21, %struct.imx21* %17, i32 0, i32 1
  %19 = load %struct.etd_priv*, %struct.etd_priv** %18, align 8
  %20 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %19, i64 0
  %21 = ptrtoint %struct.etd_priv* %16 to i64
  %22 = ptrtoint %struct.etd_priv* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.imx21*, %struct.imx21** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @etd_readl(%struct.imx21* %26, i32 %27, i32 1)
  %29 = load i32, i32* @DW1_YBUFSRTAD, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.imx21*, %struct.imx21** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @etd_readl(%struct.imx21* %31, i32 %32, i32 2)
  %34 = load i32, i32* @DW2_DIRPID, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 3
  store i32 %36, i32* %10, align 4
  %37 = load %struct.imx21*, %struct.imx21** %4, align 8
  %38 = getelementptr inbounds %struct.imx21, %struct.imx21* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.imx21*, %struct.imx21** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @DW1_YBUFSRTAD, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @etd_writel(%struct.imx21* %42, i32 %43, i32 1, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.etd_priv*, %struct.etd_priv** %5, align 8
  %54 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.urb_priv*, %struct.urb_priv** %7, align 8
  %56 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.imx21*, %struct.imx21** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @activate_etd(%struct.imx21* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @etd_readl(%struct.imx21*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @etd_writel(%struct.imx21*, i32, i32, i32) #1

declare dso_local i32 @activate_etd(%struct.imx21*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
