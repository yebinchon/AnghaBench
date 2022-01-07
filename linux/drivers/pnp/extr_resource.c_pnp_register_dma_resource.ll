; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_register_dma_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_resource.c_pnp_register_dma_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_option = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pnp_dma }
%struct.pnp_dma = type { i8, i8 }

@IORESOURCE_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnp_register_dma_resource(%struct.pnp_dev* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pnp_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.pnp_option*, align 8
  %11 = alloca %struct.pnp_dma*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %13 = load i32, i32* @IORESOURCE_DMA, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pnp_option* @pnp_build_option(%struct.pnp_dev* %12, i32 %13, i32 %14)
  store %struct.pnp_option* %15, %struct.pnp_option** %10, align 8
  %16 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %17 = icmp ne %struct.pnp_option* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %23 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.pnp_dma* %24, %struct.pnp_dma** %11, align 8
  %25 = load i8, i8* %8, align 1
  %26 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %27 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %26, i32 0, i32 0
  store i8 %25, i8* %27, align 1
  %28 = load i8, i8* %9, align 1
  %29 = load %struct.pnp_dma*, %struct.pnp_dma** %11, align 8
  %30 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %29, i32 0, i32 1
  store i8 %28, i8* %30, align 1
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %6, align 8
  %32 = load %struct.pnp_option*, %struct.pnp_option** %10, align 8
  %33 = call i32 @dbg_pnp_show_option(%struct.pnp_dev* %31, %struct.pnp_option* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.pnp_option* @pnp_build_option(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @dbg_pnp_show_option(%struct.pnp_dev*, %struct.pnp_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
