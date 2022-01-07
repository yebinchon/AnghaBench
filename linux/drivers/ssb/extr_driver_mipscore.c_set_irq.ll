; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_mipscore.c_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32, %struct.TYPE_4__, i32, %struct.ssb_bus* }
%struct.TYPE_4__ = type { i32 }
%struct.ssb_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ssb_device* }

@SSB_INTVEC = common dso_local global i32 0, align 4
@SSB_IPSFLAG = common dso_local global i32 0, align 4
@ipsflag_irq_mask = common dso_local global i32* null, align 8
@ipsflag_irq_shift = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"set_irq: core 0x%04x, irq %d => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*, i32)* @set_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_irq(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca %struct.ssb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %13 = call i32 @ssb_mips_irq(%struct.ssb_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %14, i32 0, i32 3
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %15, align 8
  store %struct.ssb_bus* %16, %struct.ssb_bus** %6, align 8
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ssb_device*, %struct.ssb_device** %19, align 8
  store %struct.ssb_device* %20, %struct.ssb_device** %7, align 8
  %21 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %22 = call i32 @ssb_irqflag(%struct.ssb_device* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 6
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 2
  %29 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %30 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %35 = load i32, i32* @SSB_INTVEC, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %40 = load i32, i32* @SSB_INTVEC, align 4
  %41 = call i32 @ssb_read32(%struct.ssb_device* %39, i32 %40)
  %42 = and i32 %38, %41
  %43 = call i32 @ssb_write32(%struct.ssb_device* %34, i32 %35, i32 %42)
  br label %52

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 5
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @clear_irq(%struct.ssb_bus* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %57 = load i32, i32* @SSB_INTVEC, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %61 = load i32, i32* @SSB_INTVEC, align 4
  %62 = call i32 @ssb_read32(%struct.ssb_device* %60, i32 %61)
  %63 = or i32 %59, %62
  %64 = call i32 @ssb_write32(%struct.ssb_device* %56, i32 %57, i32 %63)
  br label %126

65:                                               ; preds = %52
  %66 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %67 = load i32, i32* @SSB_IPSFLAG, align 4
  %68 = call i32 @ssb_read32(%struct.ssb_device* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** @ipsflag_irq_mask, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %69, %74
  %76 = load i32*, i32** @ipsflag_irq_mask, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %65
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** @ipsflag_irq_mask, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %83, %88
  %90 = load i32*, i32** @ipsflag_irq_shift, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %89, %94
  store i32 %95, i32* %10, align 4
  %96 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call %struct.ssb_device* @find_device(%struct.ssb_device* %96, i32 %97)
  store %struct.ssb_device* %98, %struct.ssb_device** %11, align 8
  %99 = load %struct.ssb_device*, %struct.ssb_device** %11, align 8
  %100 = icmp ne %struct.ssb_device* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %82
  %102 = load %struct.ssb_device*, %struct.ssb_device** %11, align 8
  call void @set_irq(%struct.ssb_device* %102, i32 0)
  br label %103

103:                                              ; preds = %101, %82
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32*, i32** @ipsflag_irq_shift, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** @ipsflag_irq_mask, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %112, %118
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load %struct.ssb_device*, %struct.ssb_device** %7, align 8
  %123 = load i32, i32* @SSB_IPSFLAG, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @ssb_write32(%struct.ssb_device* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %104, %55
  %127 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %128 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %131 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %134, 2
  %136 = load i32, i32* %4, align 4
  %137 = add i32 %136, 2
  %138 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %135, i32 %137)
  ret void
}

declare dso_local i32 @ssb_mips_irq(%struct.ssb_device*) #1

declare dso_local i32 @ssb_irqflag(%struct.ssb_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ssb_write32(%struct.ssb_device*, i32, i32) #1

declare dso_local i32 @ssb_read32(%struct.ssb_device*, i32) #1

declare dso_local i32 @clear_irq(%struct.ssb_bus*, i32) #1

declare dso_local %struct.ssb_device* @find_device(%struct.ssb_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
