; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_first_dma_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_first_dma_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private* }
%struct.pcidas64_private = type { i64 }

@PLX_REG_DMASIZ1 = common dso_local global i64 0, align 8
@PLX_REG_DMAPADR1 = common dso_local global i64 0, align 8
@PLX_REG_DMALADR1 = common dso_local global i64 0, align 8
@PLX_REG_DMADPR1 = common dso_local global i64 0, align 8
@PLX_REG_DMASIZ0 = common dso_local global i64 0, align 8
@PLX_REG_DMAPADR0 = common dso_local global i64 0, align 8
@PLX_REG_DMALADR0 = common dso_local global i64 0, align 8
@PLX_REG_DMADPR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @load_first_dma_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_first_dma_descriptor(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidas64_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pcidas64_private*, %struct.pcidas64_private** %9, align 8
  store %struct.pcidas64_private* %10, %struct.pcidas64_private** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %15 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PLX_REG_DMASIZ1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 0, i64 %18)
  %20 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %21 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PLX_REG_DMAPADR1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %27 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PLX_REG_DMALADR1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %34 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PLX_REG_DMADPR1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %65

39:                                               ; preds = %3
  %40 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %41 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PLX_REG_DMASIZ0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %47 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PLX_REG_DMAPADR0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  %52 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %53 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PLX_REG_DMALADR0, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.pcidas64_private*, %struct.pcidas64_private** %7, align 8
  %60 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PLX_REG_DMADPR0, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
