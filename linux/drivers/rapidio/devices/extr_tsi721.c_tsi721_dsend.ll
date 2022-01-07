; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_dsend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_dsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i64, %struct.tsi721_device* }
%struct.tsi721_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RIO_TT_CODE_16 = common dso_local global i32 0, align 4
@RIO_TT_CODE_8 = common dso_local global i32 0, align 4
@DBELL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Send Doorbell 0x%04x to destID 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32)* @tsi721_dsend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_dsend(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tsi721_device*, align 8
  %10 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %12 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %11, i32 0, i32 1
  %13 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  store %struct.tsi721_device* %13, %struct.tsi721_device** %9, align 8
  %14 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %15 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @RIO_TT_CODE_16, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @RIO_TT_CODE_8, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = shl i32 %23, 18
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 2
  %27 = or i32 %24, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @DBELL, align 4
  %29 = load %struct.tsi721_device*, %struct.tsi721_device** %9, align 8
  %30 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @tsi_debug(i32 %28, i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.tsi721_device*, %struct.tsi721_device** %9, align 8
  %38 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @iowrite16be(i32 %36, i64 %42)
  ret i32 0
}

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @iowrite16be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
