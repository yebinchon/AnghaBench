; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_lcwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_lcwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i64, i32, i64)* @tsi721_lcwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_lcwrite(%struct.rio_mport* %0, i32 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsi721_device*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %14 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %13, i32 0, i32 0
  %15 = load %struct.tsi721_device*, %struct.tsi721_device** %14, align 8
  store %struct.tsi721_device* %15, %struct.tsi721_device** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %25 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite32(i64 %23, i64 %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @iowrite32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
