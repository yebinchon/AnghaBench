; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_update_guard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_wa1_update_guard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, i32, %struct.cdns3_trb*, i64, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_trb = type { i32 }

@EP_CMD_DRDY = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"set guard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_endpoint*, %struct.cdns3_trb*)* @cdns3_wa1_update_guard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_wa1_update_guard(%struct.cdns3_endpoint* %0, %struct.cdns3_trb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca %struct.cdns3_trb*, align 8
  %6 = alloca %struct.cdns3_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %4, align 8
  store %struct.cdns3_trb* %1, %struct.cdns3_trb** %5, align 8
  %8 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %9 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %8, i32 0, i32 6
  %10 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  store %struct.cdns3_device* %10, %struct.cdns3_device** %6, align 8
  %11 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %2
  %16 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  %17 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @readl(i32* %19)
  %21 = load i32, i32* @EP_CMD_DRDY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %15
  %30 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TRB_CYCLE, align 4
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %40 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %42 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.cdns3_trb*, %struct.cdns3_trb** %5, align 8
  %44 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %45 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %44, i32 0, i32 3
  store %struct.cdns3_trb* %43, %struct.cdns3_trb** %45, align 8
  %46 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %47 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %50 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %52 = call i32 @trace_cdns3_wa1(%struct.cdns3_endpoint* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53, %2
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @trace_cdns3_wa1(%struct.cdns3_endpoint*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
