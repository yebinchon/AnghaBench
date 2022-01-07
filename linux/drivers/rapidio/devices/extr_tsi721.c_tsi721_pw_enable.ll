; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_pw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_pw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64 }

@TSI721_RIO_EM_INT_ENABLE = common dso_local global i64 0, align 8
@TSI721_RIO_EM_INT_ENABLE_PW_RX = common dso_local global i32 0, align 4
@TSI721_RIO_PW_RX_STAT_PW_DISC = common dso_local global i32 0, align 4
@TSI721_RIO_PW_RX_STAT_PW_VAL = common dso_local global i32 0, align 4
@TSI721_RIO_PW_RX_STAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32)* @tsi721_pw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_pw_enable(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi721_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %8 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %7, i32 0, i32 0
  %9 = load %struct.tsi721_device*, %struct.tsi721_device** %8, align 8
  store %struct.tsi721_device* %9, %struct.tsi721_device** %5, align 8
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TSI721_RIO_EM_INT_ENABLE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @TSI721_RIO_EM_INT_ENABLE_PW_RX, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @TSI721_RIO_EM_INT_ENABLE_PW_RX, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* @TSI721_RIO_PW_RX_STAT_PW_DISC, align 4
  %29 = load i32, i32* @TSI721_RIO_PW_RX_STAT_PW_VAL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %32 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSI721_RIO_PW_RX_STAT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tsi721_device*, %struct.tsi721_device** %5, align 8
  %39 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TSI721_RIO_EM_INT_ENABLE, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 %37, i64 %42)
  ret i32 0
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
