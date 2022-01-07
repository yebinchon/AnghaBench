; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_status_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_status_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }

@CSI2_IRQ_OCP_ERR = common dso_local global i32 0, align 4
@CSI2_IRQ_SHORT_PACKET = common dso_local global i32 0, align 4
@CSI2_IRQ_ECC_CORRECTION = common dso_local global i32 0, align 4
@CSI2_IRQ_ECC_NO_CORRECTION = common dso_local global i32 0, align 4
@CSI2_IRQ_COMPLEXIO_ERR = common dso_local global i32 0, align 4
@CSI2_IRQ_FIFO_OVF = common dso_local global i32 0, align 4
@CSI2_IRQ_CONTEXT0 = common dso_local global i32 0, align 4
@CSI2_IRQSTATUS = common dso_local global i32 0, align 4
@CSI2_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, i32)* @csi2_irq_status_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_status_set(%struct.iss_csi2_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CSI2_IRQ_OCP_ERR, align 4
  %7 = load i32, i32* @CSI2_IRQ_SHORT_PACKET, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CSI2_IRQ_ECC_CORRECTION, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CSI2_IRQ_ECC_NO_CORRECTION, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CSI2_IRQ_COMPLEXIO_ERR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CSI2_IRQ_FIFO_OVF, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CSI2_IRQ_CONTEXT0, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %20 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %23 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CSI2_IRQSTATUS, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @iss_reg_write(i32 %21, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %32 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %35 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CSI2_IRQENABLE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @iss_reg_set(i32 %33, i32 %36, i32 %37, i32 %38)
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %42 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %45 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CSI2_IRQENABLE, align 4
  %48 = call i32 @iss_reg_write(i32 %43, i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %40, %30
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
