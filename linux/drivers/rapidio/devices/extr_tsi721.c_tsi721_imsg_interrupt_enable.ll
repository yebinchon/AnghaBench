; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_imsg_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_imsg_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i32, i64 }

@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_DEV_CHAN_INTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi721_device*, i32, i32)* @tsi721_imsg_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_imsg_interrupt_enable(%struct.tsi721_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tsi721_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tsi721_device* %0, %struct.tsi721_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %61

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %14 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @TSI721_IBDMAC_INT(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @iowrite32(i32 %12, i64 %18)
  %20 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %21 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TSI721_IBDMAC_INTE(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @ioread32(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %31 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TSI721_IBDMAC_INTE(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @iowrite32(i32 %29, i64 %35)
  %37 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %38 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TSI721_USING_MSIX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %11
  br label %61

44:                                               ; preds = %11
  %45 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %46 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ioread32(i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @TSI721_INT_IMSG_CHAN(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.tsi721_device*, %struct.tsi721_device** %4, align 8
  %56 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TSI721_DEV_CHAN_INTE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i32 %54, i64 %59)
  br label %61

61:                                               ; preds = %44, %43, %10
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_IBDMAC_INT(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TSI721_IBDMAC_INTE(i32) #1

declare dso_local i32 @TSI721_INT_IMSG_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
