; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_ctx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_ctx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }

@CSI2_CTX_IRQ_FE = common dso_local global i32 0, align 4
@CSI2_CTX_IRQ_FS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, i32)* @csi2_irq_ctx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_ctx_set(%struct.iss_csi2_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CSI2_CTX_IRQ_FE, align 4
  %8 = load i32, i32* @CSI2_CTX_IRQ_FS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %15 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %18 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @CSI2_CTX_IRQSTATUS(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @iss_reg_write(i32 %16, i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %28 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %31 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @CSI2_CTX_IRQENABLE(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @iss_reg_set(i32 %29, i32 %32, i32 %34, i32 %35)
  br label %48

37:                                               ; preds = %13
  %38 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %39 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %42 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @CSI2_CTX_IRQENABLE(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @iss_reg_clr(i32 %40, i32 %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %10
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @CSI2_CTX_IRQSTATUS(i32) #1

declare dso_local i32 @iss_reg_set(i32, i32, i32, i32) #1

declare dso_local i32 @CSI2_CTX_IRQENABLE(i32) #1

declare dso_local i32 @iss_reg_clr(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
