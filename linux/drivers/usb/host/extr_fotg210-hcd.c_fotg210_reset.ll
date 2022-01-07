; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i64, i64, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@FOTG210_RH_HALTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*)* @fotg210_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_reset(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  %6 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @fotg210_readl(%struct.fotg210_hcd* %6, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %18 = call i32 @fotg210_to_hcd(%struct.fotg210_hcd* %17)
  %19 = call i32 @dbgp_reset_prep(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %16, %1
  %25 = load i32, i32* @CMD_RESET, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dbg_cmd(%struct.fotg210_hcd* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @fotg210_writel(%struct.fotg210_hcd* %31, i32 %32, i32* %36)
  %38 = load i32, i32* @FOTG210_RH_HALTED, align 4
  %39 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @CMD_RESET, align 4
  %50 = call i32 @handshake(%struct.fotg210_hcd* %44, i32* %48, i32 %49, i32 0, i32 250000)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %24
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %24
  %56 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %62 = call i32 @fotg210_to_hcd(%struct.fotg210_hcd* %61)
  %63 = call i32 @dbgp_external_startup(i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %66 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %70 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %53
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @dbgp_reset_prep(i32) #1

declare dso_local i32 @fotg210_to_hcd(%struct.fotg210_hcd*) #1

declare dso_local i32 @dbg_cmd(%struct.fotg210_hcd*, i8*, i32) #1

declare dso_local i32 @fotg210_writel(%struct.fotg210_hcd*, i32, i32*) #1

declare dso_local i32 @handshake(%struct.fotg210_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @dbgp_external_startup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
