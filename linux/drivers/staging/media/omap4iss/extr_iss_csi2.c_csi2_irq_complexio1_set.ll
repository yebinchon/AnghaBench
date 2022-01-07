; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_complexio1_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_irq_complexio1_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i32 }

@CSI2_COMPLEXIO_IRQ_STATEALLULPMEXIT = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEALLULPMENTER = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEULPM5 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRCONTROL5 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRESC5 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS5 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTHS5 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEULPM4 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRCONTROL4 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRESC4 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS4 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTHS4 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEULPM3 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRCONTROL3 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRESC3 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS3 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTHS3 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEULPM2 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRCONTROL2 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRESC2 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS2 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTHS2 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_STATEULPM1 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRCONTROL1 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRESC1 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS1 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQ_ERRSOTHS1 = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQSTATUS = common dso_local global i32 0, align 4
@CSI2_COMPLEXIO_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csi2_device*, i32)* @csi2_irq_complexio1_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_complexio1_set(%struct.iss_csi2_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEALLULPMEXIT, align 4
  %7 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEALLULPMENTER, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEULPM5, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRCONTROL5, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRESC5, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS5, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTHS5, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEULPM4, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRCONTROL4, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRESC4, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTHS4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEULPM3, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRCONTROL3, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRESC3, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS3, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTHS3, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEULPM2, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRCONTROL2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRESC2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS2, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTHS2, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CSI2_COMPLEXIO_IRQ_STATEULPM1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRCONTROL1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRESC1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTSYNCHS1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CSI2_COMPLEXIO_IRQ_ERRSOTHS1, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %60 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %63 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CSI2_COMPLEXIO_IRQSTATUS, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @iss_reg_write(i32 %61, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %2
  %71 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %72 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %75 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CSI2_COMPLEXIO_IRQENABLE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @iss_reg_set(i32 %73, i32 %76, i32 %77, i32 %78)
  br label %89

80:                                               ; preds = %2
  %81 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %82 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %85 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CSI2_COMPLEXIO_IRQENABLE, align 4
  %88 = call i32 @iss_reg_write(i32 %83, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %80, %70
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
