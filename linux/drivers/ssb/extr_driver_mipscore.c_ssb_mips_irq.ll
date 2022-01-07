; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_ssb_mips_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ssb_device* }

@SSB_IPSFLAG = common dso_local global i32 0, align 4
@ipsflag_irq_mask = common dso_local global i32* null, align 8
@ipsflag_irq_shift = common dso_local global i32* null, align 8
@SSB_INTVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_mips_irq(%struct.ssb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  %10 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %11 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %10, i32 0, i32 0
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %11, align 8
  store %struct.ssb_bus* %12, %struct.ssb_bus** %4, align 8
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ssb_device*, %struct.ssb_device** %15, align 8
  store %struct.ssb_device* %16, %struct.ssb_device** %5, align 8
  %17 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %18 = call i32 @ssb_irqflag(%struct.ssb_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 63
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ssb_device*, %struct.ssb_device** %25, align 8
  %27 = load i32, i32* @SSB_IPSFLAG, align 4
  %28 = call i32 @ssb_read32(%struct.ssb_device* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %51, %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp ule i32 %30, 4
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** @ipsflag_irq_mask, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  %40 = load i32*, i32** @ipsflag_irq_shift, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %39, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %54

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %29

54:                                               ; preds = %49, %29
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %61 = load i32, i32* @SSB_INTVEC, align 4
  %62 = call i32 @ssb_read32(%struct.ssb_device* %60, i32 %61)
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ssb_irqflag(%struct.ssb_device*) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
