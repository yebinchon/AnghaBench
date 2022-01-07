; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_service_ahb_int_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_service_ahb_int_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dim_channel = type { i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DIM_ERR_DRIVER_NOT_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DIM is not initialized\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad channels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dim_service_ahb_int_irq(%struct.dim_channel** %0) #0 {
  %2 = alloca %struct.dim_channel**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dim_channel**, align 8
  store %struct.dim_channel** %0, %struct.dim_channel*** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  %9 = call i32 @dim_on_error(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.dim_channel**, %struct.dim_channel*** %2, align 8
  %12 = icmp ne %struct.dim_channel** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @DIM_ERR_DRIVER_NOT_INITIALIZED, align 4
  %15 = call i32 @dim_on_error(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %32, %16
  %18 = load %struct.dim_channel**, %struct.dim_channel*** %2, align 8
  store %struct.dim_channel** %18, %struct.dim_channel*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %23, %17
  %20 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  %21 = load %struct.dim_channel*, %struct.dim_channel** %20, align 8
  %22 = icmp ne %struct.dim_channel* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  %25 = load %struct.dim_channel*, %struct.dim_channel** %24, align 8
  %26 = call i32 @channel_service_interrupt(%struct.dim_channel* %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.dim_channel**, %struct.dim_channel*** %4, align 8
  %30 = getelementptr inbounds %struct.dim_channel*, %struct.dim_channel** %29, i32 1
  store %struct.dim_channel** %30, %struct.dim_channel*** %4, align 8
  br label %19

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %17, label %35

35:                                               ; preds = %7, %13, %32
  ret void
}

declare dso_local i32 @dim_on_error(i32, i8*) #1

declare dso_local i32 @channel_service_interrupt(%struct.dim_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
