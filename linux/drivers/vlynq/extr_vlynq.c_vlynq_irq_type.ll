; ModuleID = '/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c_vlynq_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.vlynq_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@VINT_TYPE_EDGE = common dso_local global i32 0, align 4
@VINT_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @vlynq_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlynq_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlynq_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call %struct.vlynq_device* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.vlynq_device* %10, %struct.vlynq_device** %6, align 8
  %11 = load %struct.vlynq_device*, %struct.vlynq_device** %6, align 8
  %12 = icmp ne %struct.vlynq_device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vlynq_device*, %struct.vlynq_device** %6, align 8
  %20 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.vlynq_device*, %struct.vlynq_device** %6, align 8
  %24 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %79 [
    i32 130, label %36
    i32 131, label %36
    i32 132, label %36
    i32 129, label %50
    i32 128, label %65
  ]

36:                                               ; preds = %2, %2, %2
  %37 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @VINT_OFFSET(i32 %38)
  %40 = shl i32 %37, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @VINT_OFFSET(i32 %44)
  %46 = shl i32 %43, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %82

50:                                               ; preds = %2
  %51 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @VINT_OFFSET(i32 %52)
  %54 = shl i32 %51, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @VINT_OFFSET(i32 %59)
  %61 = shl i32 %58, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %82

65:                                               ; preds = %2
  %66 = load i32, i32* @VINT_TYPE_EDGE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @VINT_OFFSET(i32 %67)
  %69 = shl i32 %66, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @VINT_LEVEL_LOW, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @VINT_OFFSET(i32 %74)
  %76 = shl i32 %73, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %82

79:                                               ; preds = %2
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %94

82:                                               ; preds = %65, %50, %36
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.vlynq_device*, %struct.vlynq_device** %6, align 8
  %85 = getelementptr inbounds %struct.vlynq_device, %struct.vlynq_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = call i32 @writel(i32 %83, i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %82, %79
  %95 = load i32, i32* %3, align 4
  ret i32 %95
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
