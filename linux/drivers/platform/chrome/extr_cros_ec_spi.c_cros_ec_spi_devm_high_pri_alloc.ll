; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_devm_high_pri_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_devm_high_pri_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cros_ec_spi = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sched_param = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cros_ec_spi_high_pri\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Can't create cros_ec high pri worker: %d\0A\00", align 1
@cros_ec_spi_high_pri_release = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't set cros_ec high pri priority: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cros_ec_spi*)* @cros_ec_spi_devm_high_pri_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_spi_devm_high_pri_alloc(%struct.device* %0, %struct.cros_ec_spi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cros_ec_spi*, align 8
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cros_ec_spi* %1, %struct.cros_ec_spi** %5, align 8
  %8 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  %9 = load i32, i32* @MAX_RT_PRIO, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = call %struct.TYPE_5__* @kthread_create_worker(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %5, align 8
  %13 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %12, i32 0, i32 0
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %5, align 8
  %15 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i64 @IS_ERR(%struct.TYPE_5__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %5, align 8
  %21 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @PTR_ERR(%struct.TYPE_5__* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @cros_ec_spi_high_pri_release, align 4
  %31 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %5, align 8
  %32 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call i32 @devm_add_action_or_reset(%struct.device* %29, i32 %30, %struct.TYPE_5__* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %28
  %40 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %5, align 8
  %41 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SCHED_FIFO, align 4
  %46 = call i32 @sched_setscheduler_nocheck(i32 %44, i32 %45, %struct.sched_param* %6)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %39
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %37, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @kthread_create_worker(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sched_setscheduler_nocheck(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
