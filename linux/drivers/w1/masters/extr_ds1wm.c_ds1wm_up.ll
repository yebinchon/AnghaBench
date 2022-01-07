; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.ds1wm_driver_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"found divisor 0x%x for clock %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"no suitable divisor for %dHz clock\0A\00", align 1
@DS1WM_CLKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1wm_data*)* @ds1wm_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_up(%struct.ds1wm_data* %0) #0 {
  %2 = alloca %struct.ds1wm_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ds1wm_driver_data*, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %2, align 8
  %6 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %7 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ds1wm_driver_data* @dev_get_platdata(%struct.device* %10)
  store %struct.ds1wm_driver_data* %11, %struct.ds1wm_driver_data** %5, align 8
  %12 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %13 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_4__*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %20 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %22, align 8
  %24 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %25 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 %23(%struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %30 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ds1wm_find_divisor(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %36 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %44 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %55

47:                                               ; preds = %28
  %48 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %49 = load i32, i32* @DS1WM_CLKDIV, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %48, i32 %49, i32 %50)
  %52 = call i32 @msleep(i32 1)
  %53 = load %struct.ds1wm_data*, %struct.ds1wm_data** %2, align 8
  %54 = call i32 @ds1wm_reset(%struct.ds1wm_data* %53)
  br label %55

55:                                               ; preds = %47, %41
  ret void
}

declare dso_local %struct.ds1wm_driver_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @ds1wm_find_divisor(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds1wm_reset(%struct.ds1wm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
