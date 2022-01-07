; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_ahb_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_ahb_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.dim2_hdm = type { i32 }
%struct.dim_channel = type { i32 }

@DMA_CHANNELS = common dso_local global i32 0, align 4
@dim_lock = common dso_local global i32 0, align 4
@dim2_tasklet = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dim2_ahb_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dim2_ahb_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dim2_hdm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dim2_hdm*
  store %struct.dim2_hdm* %10, %struct.dim2_hdm** %5, align 8
  %11 = load i32, i32* @DMA_CHANNELS, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.dim_channel*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %16)
  %18 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %19 = call i32 @get_active_channels(%struct.dim2_hdm* %18, %struct.dim_channel** %15)
  %20 = call i32 @dim_service_ahb_int_irq(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %21)
  %23 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %24 = ptrtoint %struct.dim2_hdm* %23 to i64
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dim2_tasklet, i32 0, i32 0), align 8
  %25 = call i32 @tasklet_schedule(%struct.TYPE_3__* @dim2_tasklet)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  %27 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %27)
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @dim_service_ahb_int_irq(i32) #2

declare dso_local i32 @get_active_channels(%struct.dim2_hdm*, %struct.dim_channel**) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @tasklet_schedule(%struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
