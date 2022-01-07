; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_mv_udc_testmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_mv_udc_testmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@TEST_FORCE_EN = common dso_local global i64 0, align 8
@EP_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"This test mode(%d) is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*, i64)* @mv_udc_testmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_udc_testmode(%struct.mv_udc* %0, i64 %1) #0 {
  %3 = alloca %struct.mv_udc*, align 8
  %4 = alloca i64, align 8
  store %struct.mv_udc* %0, %struct.mv_udc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TEST_FORCE_EN, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %11 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %10, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %13 = load i32, i32* @EP_DIR_IN, align 4
  %14 = call i64 @udc_prime_status(%struct.mv_udc* %12, i32 %13, i32 0, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %18 = call i32 @ep0_stall(%struct.mv_udc* %17)
  br label %19

19:                                               ; preds = %16, %8
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %22 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @udc_prime_status(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @ep0_stall(%struct.mv_udc*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
