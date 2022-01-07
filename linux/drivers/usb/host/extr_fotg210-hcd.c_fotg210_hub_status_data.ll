; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.fotg210_hcd = type { i32, i32, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PORT_CSC = common dso_local global i32 0, align 4
@PORT_PEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STS_PCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @fotg210_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %11)
  store %struct.fotg210_hcd* %12, %struct.fotg210_hcd** %5, align 8
  store i32 1, i32* %9, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @PORT_CSC, align 4
  %19 = load i32, i32* @PORT_PEC, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %22 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %21, i32 0, i32 1
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %26 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %27 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @fotg210_readl(%struct.fotg210_hcd* %25, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %2
  %36 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %37 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %36, i32 0, i32 3
  %38 = call i64 @test_bit(i32 0, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32, i32* @jiffies, align 4
  %49 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %50 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @time_after_eq(i32 %48, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47, %35, %2
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = or i32 %60, 2
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  %63 = load i32, i32* @STS_PCD, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %56, %47, %40
  %65 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %66 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %65, i32 0, i32 1
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  ret i32 %75
}

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
