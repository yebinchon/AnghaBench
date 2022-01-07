; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_scan.c_scan_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_scan.c_scan_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

@SSB_CORE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, i32, i32)* @scan_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_read32(%struct.ssb_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %58 [
    i32 128, label %13
    i32 131, label %19
    i32 130, label %20
    i32 129, label %49
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SSB_CORE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %58

19:                                               ; preds = %3
  br label %58

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 2048
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %25 = call i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus* %24, i32 1)
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 2048
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %30 = call i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @readw(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %39 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 2
  %44 = call i32 @readw(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %45, %47
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SSB_CORE_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ssb_sdio_scan_read32(%struct.ssb_bus* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %3, %19, %13
  %59 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %60 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @readl(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %49, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus*, i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @ssb_sdio_scan_read32(%struct.ssb_bus*, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
