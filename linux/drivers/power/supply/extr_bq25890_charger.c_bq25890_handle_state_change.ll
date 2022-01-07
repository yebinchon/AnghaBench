; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_handle_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_handle_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq25890_device = type { i32, i32, %struct.bq25890_state }
%struct.bq25890_state = type { i32 }

@F_CONV_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error communicating with the chip.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bq25890_device*, %struct.bq25890_state*)* @bq25890_handle_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq25890_handle_state_change(%struct.bq25890_device* %0, %struct.bq25890_state* %1) #0 {
  %3 = alloca %struct.bq25890_device*, align 8
  %4 = alloca %struct.bq25890_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq25890_state, align 4
  store %struct.bq25890_device* %0, %struct.bq25890_device** %3, align 8
  store %struct.bq25890_state* %1, %struct.bq25890_state** %4, align 8
  %7 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %8 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %11 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %10, i32 0, i32 2
  %12 = bitcast %struct.bq25890_state* %6 to i8*
  %13 = bitcast %struct.bq25890_state* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %15 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %14, i32 0, i32 1
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load %struct.bq25890_state*, %struct.bq25890_state** %4, align 8
  %18 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %23 = load i32, i32* @F_CONV_START, align 4
  %24 = call i32 @bq25890_field_write(%struct.bq25890_device* %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %43

28:                                               ; preds = %21
  br label %42

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.bq25890_state, %struct.bq25890_state* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %35 = load i32, i32* @F_CONV_START, align 4
  %36 = call i32 @bq25890_field_write(%struct.bq25890_device* %34, i32 %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %43

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %28
  br label %48

43:                                               ; preds = %39, %27
  %44 = load %struct.bq25890_device*, %struct.bq25890_device** %3, align 8
  %45 = getelementptr inbounds %struct.bq25890_device, %struct.bq25890_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq25890_field_write(%struct.bq25890_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
