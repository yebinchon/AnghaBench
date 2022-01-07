; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_automasked_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_automasked_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_irq = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vfio_automasked_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_automasked_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vfio_platform_irq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vfio_platform_irq*
  store %struct.vfio_platform_irq* %9, %struct.vfio_platform_irq** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %12 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %11, i32 0, i32 2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %16 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %22 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @disable_irq_nosync(i32 %23)
  %25 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %26 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %28, i32 0, i32 2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %5, align 8
  %37 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eventfd_signal(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eventfd_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
