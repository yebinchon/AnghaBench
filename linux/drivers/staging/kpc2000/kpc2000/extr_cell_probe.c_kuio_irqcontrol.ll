; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_kuio_irqcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_cell_probe.c_kuio_irqcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.kpc_uio_device* }
%struct.kpc_uio_device = type { %struct.TYPE_2__, %struct.kp2000_device* }
%struct.TYPE_2__ = type { i32 }
%struct.kp2000_device = type { i32, i64 }

@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, i64)* @kuio_irqcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kuio_irqcontrol(%struct.uio_info* %0, i64 %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kpc_uio_device*, align 8
  %6 = alloca %struct.kp2000_device*, align 8
  %7 = alloca i32, align 4
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %9 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %8, i32 0, i32 0
  %10 = load %struct.kpc_uio_device*, %struct.kpc_uio_device** %9, align 8
  store %struct.kpc_uio_device* %10, %struct.kpc_uio_device** %5, align 8
  %11 = load %struct.kpc_uio_device*, %struct.kpc_uio_device** %5, align 8
  %12 = getelementptr inbounds %struct.kpc_uio_device, %struct.kpc_uio_device* %11, i32 0, i32 1
  %13 = load %struct.kp2000_device*, %struct.kp2000_device** %12, align 8
  store %struct.kp2000_device* %13, %struct.kp2000_device** %6, align 8
  %14 = load %struct.kp2000_device*, %struct.kp2000_device** %6, align 8
  %15 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.kp2000_device*, %struct.kp2000_device** %6, align 8
  %18 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readq(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.kpc_uio_device*, %struct.kpc_uio_device** %5, align 8
  %27 = getelementptr inbounds %struct.kpc_uio_device, %struct.kpc_uio_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BIT_ULL(i32 %29)
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.kpc_uio_device*, %struct.kpc_uio_device** %5, align 8
  %36 = getelementptr inbounds %struct.kpc_uio_device, %struct.kpc_uio_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @BIT_ULL(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.kp2000_device*, %struct.kp2000_device** %6, align 8
  %45 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeq(i32 %43, i64 %48)
  %50 = load %struct.kp2000_device*, %struct.kp2000_device** %6, align 8
  %51 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
