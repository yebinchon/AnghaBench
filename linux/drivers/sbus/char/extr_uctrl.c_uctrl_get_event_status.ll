; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_uctrl.c_uctrl_get_event_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_uctrl.c_uctrl_get_event_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uctrl_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uctrl_txn = type { i32, i32*, i32*, i64, i32 }

@READ_EVENT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"bytes %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ev is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uctrl_driver*)* @uctrl_get_event_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uctrl_get_event_status(%struct.uctrl_driver* %0) #0 {
  %2 = alloca %struct.uctrl_driver*, align 8
  %3 = alloca %struct.uctrl_txn, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.uctrl_driver* %0, %struct.uctrl_driver** %2, align 8
  %5 = load i32, i32* @READ_EVENT_STATUS, align 4
  %6 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 4
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 0
  store i32 2, i32* %8, align 8
  %9 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.uctrl_txn, %struct.uctrl_txn* %3, i32 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %13 = call i32 @uctrl_do_txn(%struct.uctrl_driver* %12, %struct.uctrl_txn* %3)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @dprintk(i8* %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = or i32 %26, %29
  %31 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %32 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.uctrl_driver*, %struct.uctrl_driver** %2, align 8
  %35 = getelementptr inbounds %struct.uctrl_driver, %struct.uctrl_driver* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @dprintk(i8* %39)
  ret void
}

declare dso_local i32 @uctrl_do_txn(%struct.uctrl_driver*, %struct.uctrl_txn*) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
