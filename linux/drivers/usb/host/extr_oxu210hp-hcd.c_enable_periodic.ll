; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_enable_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_enable_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@STS_PSS = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@CMD_PSE = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*)* @enable_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_periodic(%struct.oxu_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* @STS_PSS, align 4
  %12 = call i32 @handshake(%struct.oxu_hcd* %6, i32* %10, i32 %11, i32 0, i32 1125)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @HC_STATE_HALT, align 4
  %17 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %18 = call %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %21 = call %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd* %20)
  %22 = call i32 @usb_hc_died(%struct.TYPE_5__* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @readl(i32* %28)
  %30 = load i32, i32* @CMD_PSE, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @writel(i32 %32, i32* %36)
  %38 = load i32, i32* @HC_STATE_RUNNING, align 4
  %39 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %40 = call %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd* %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @readl(i32* %45)
  %47 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %48 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 3
  %51 = srem i32 %46, %50
  %52 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %53 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %24, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @handshake(%struct.oxu_hcd*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @usb_hc_died(%struct.TYPE_5__*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
