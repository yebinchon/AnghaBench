; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_timer_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_timer_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i8*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BQ2415X_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq2415x_device*, i8*)* @bq2415x_timer_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq2415x_timer_error(%struct.bq2415x_device* %0, i8* %1) #0 {
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %7 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %9 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @sysfs_notify(i32* %12, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %15 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %20 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %25 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %28 = load i32, i32* @BQ2415X_MODE_OFF, align 4
  %29 = call i32 @bq2415x_set_mode(%struct.bq2415x_device* %27, i32 %28)
  %30 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %31 = call i32 @bq2415x_set_autotimer(%struct.bq2415x_device* %30, i32 0)
  ret void
}

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @bq2415x_set_mode(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_set_autotimer(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
