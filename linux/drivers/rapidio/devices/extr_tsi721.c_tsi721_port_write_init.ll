; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_port_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_port_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_device = type { i64, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@tsi721_pw_dpc = common dso_local global i32 0, align 4
@TSI721_RIO_PW_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PW FIFO allocation failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TSI721_RIO_PW_CTL_PWC_REL = common dso_local global i32 0, align 4
@TSI721_RIO_PW_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_device*)* @tsi721_port_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_port_write_init(%struct.tsi721_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsi721_device*, align 8
  store %struct.tsi721_device* %0, %struct.tsi721_device** %3, align 8
  %4 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %5 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %7 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %6, i32 0, i32 4
  %8 = load i32, i32* @tsi721_pw_dpc, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %11 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %14 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %13, i32 0, i32 2
  %15 = load i32, i32* @TSI721_RIO_PW_MSG_SIZE, align 4
  %16 = mul nsw i32 %15, 32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @kfifo_alloc(i32* %14, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @tsi_err(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @TSI721_RIO_PW_CTL_PWC_REL, align 4
  %30 = load %struct.tsi721_device*, %struct.tsi721_device** %3, align 8
  %31 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TSI721_RIO_PW_CTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @tsi_err(i32*, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
