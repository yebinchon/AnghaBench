; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_mv_udc_disable_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_mv_udc_disable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"disable udc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*)* @mv_udc_disable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_udc_disable_internal(%struct.mv_udc* %0) #0 {
  %2 = alloca %struct.mv_udc*, align 8
  store %struct.mv_udc* %0, %struct.mv_udc** %2, align 8
  %3 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %4 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %9 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %14 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = icmp ne i32 (i32)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %7
  %20 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %21 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %26 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27)
  br label %29

29:                                               ; preds = %19, %7
  %30 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %31 = call i32 @udc_clock_disable(%struct.mv_udc* %30)
  %32 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %33 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @udc_clock_disable(%struct.mv_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
