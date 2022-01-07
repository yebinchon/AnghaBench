; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_last_ao_dma_load_completed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_last_ao_dma_load_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i32*, i64 }

@PLX_REG_DMACSR0 = common dso_local global i64 0, align 8
@PLX_DMACSR_DONE = common dso_local global i16 0, align 2
@PLX_REG_DMAPADR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @last_ao_dma_load_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_ao_dma_load_completed(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.pcidas64_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pcidas64_private*, %struct.pcidas64_private** %9, align 8
  store %struct.pcidas64_private* %10, %struct.pcidas64_private** %4, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %12 = call i32 @prev_ao_dma_index(%struct.comedi_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %14 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLX_REG_DMACSR0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call zeroext i16 @readb(i64 %17)
  store i16 %18, i16* %7, align 2
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @PLX_DMACSR_DONE, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %28 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PLX_REG_DMAPADR0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %35 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @prev_ao_dma_index(%struct.comedi_device*) #1

declare dso_local zeroext i16 @readb(i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
