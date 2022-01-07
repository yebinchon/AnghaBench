; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_get_ref_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_get_ref_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_conf_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dasd_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dasd_conf_data* }
%struct.dasd_cuir_message = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_conf_data* (%struct.dasd_device*, i32, %struct.dasd_cuir_message*)* @dasd_eckd_get_ref_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_conf_data* @dasd_eckd_get_ref_conf(%struct.dasd_device* %0, i32 %1, %struct.dasd_cuir_message* %2) #0 {
  %4 = alloca %struct.dasd_conf_data*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_cuir_message*, align 8
  %8 = alloca %struct.dasd_conf_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dasd_cuir_message* %2, %struct.dasd_cuir_message** %7, align 8
  %11 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %12 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %46

16:                                               ; preds = %3
  store i32 128, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %27, align 8
  store %struct.dasd_conf_data* %28, %struct.dasd_conf_data** %8, align 8
  %29 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %8, align 8
  %30 = getelementptr inbounds %struct.dasd_conf_data, %struct.dasd_conf_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %34 = getelementptr inbounds %struct.dasd_cuir_message, %struct.dasd_cuir_message* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %8, align 8
  store %struct.dasd_conf_data* %38, %struct.dasd_conf_data** %4, align 8
  br label %55

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %17

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %48 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @pathmask_to_pos(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %53, align 8
  store %struct.dasd_conf_data* %54, %struct.dasd_conf_data** %4, align 8
  br label %55

55:                                               ; preds = %46, %37
  %56 = load %struct.dasd_conf_data*, %struct.dasd_conf_data** %4, align 8
  ret %struct.dasd_conf_data* %56
}

declare dso_local i64 @pathmask_to_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
