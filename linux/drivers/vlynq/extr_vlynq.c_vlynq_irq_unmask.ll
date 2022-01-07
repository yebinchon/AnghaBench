; ModuleID = '/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.vlynq_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@VINT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @vlynq_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlynq_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.vlynq_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.vlynq_device* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.vlynq_device* %7, %struct.vlynq_device** %3, align 8
  %8 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %9 = icmp ne %struct.vlynq_device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %17 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %21 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @readl(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @VINT_ENABLE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @VINT_OFFSET(i32 %33)
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.vlynq_device*, %struct.vlynq_device** %3, align 8
  %40 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @writel(i32 %38, i32* %47)
  ret void
}

declare dso_local %struct.vlynq_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @VINT_OFFSET(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
