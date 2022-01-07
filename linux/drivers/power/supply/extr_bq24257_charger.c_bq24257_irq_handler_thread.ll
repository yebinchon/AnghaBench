; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24257_charger.c_bq24257_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24257_device = type { i32, i32, %struct.bq24257_state, i32 }
%struct.bq24257_state = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"irq(state changed): status/fault/pg = %d/%d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bq24257_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24257_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bq24257_device*, align 8
  %8 = alloca %struct.bq24257_state, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bq24257_device*
  store %struct.bq24257_device* %10, %struct.bq24257_device** %7, align 8
  %11 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %12 = call i32 @bq24257_get_chip_state(%struct.bq24257_device* %11, %struct.bq24257_state* %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %19 = call i32 @bq24257_state_changed(%struct.bq24257_device* %18, %struct.bq24257_state* %8)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %17
  %24 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %25 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.bq24257_state, %struct.bq24257_state* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  %34 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %35 = call i32 @bq24257_handle_state_change(%struct.bq24257_device* %34, %struct.bq24257_state* %8)
  %36 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %37 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %40 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %39, i32 0, i32 2
  %41 = bitcast %struct.bq24257_state* %40 to i8*
  %42 = bitcast %struct.bq24257_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %44 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.bq24257_device*, %struct.bq24257_device** %7, align 8
  %47 = getelementptr inbounds %struct.bq24257_device, %struct.bq24257_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @power_supply_changed(i32 %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %23, %21, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @bq24257_get_chip_state(%struct.bq24257_device*, %struct.bq24257_state*) #1

declare dso_local i32 @bq24257_state_changed(%struct.bq24257_device*, %struct.bq24257_state*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bq24257_handle_state_change(%struct.bq24257_device*, %struct.bq24257_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
