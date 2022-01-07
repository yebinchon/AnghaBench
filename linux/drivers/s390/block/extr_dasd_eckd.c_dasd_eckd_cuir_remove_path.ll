; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cuir_remove_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_cuir_remove_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_cuir_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, %struct.dasd_cuir_message*)* @dasd_eckd_cuir_remove_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_cuir_remove_path(%struct.dasd_device* %0, i32 %1, %struct.dasd_cuir_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dasd_cuir_message*, align 8
  %8 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dasd_cuir_message* %2, %struct.dasd_cuir_message** %7, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.dasd_cuir_message*, %struct.dasd_cuir_message** %7, align 8
  %12 = call i64 @dasd_eckd_cuir_scope(%struct.dasd_device* %9, i32 %10, %struct.dasd_cuir_message* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %14 = call i64 @dasd_path_get_opm(%struct.dasd_device* %13)
  %15 = load i64, i64* %8, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %21 = call i64 @dasd_path_get_opm(%struct.dasd_device* %20)
  %22 = load i64, i64* %8, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @dasd_path_remove_opm(%struct.dasd_device* %30, i64 %31)
  %33 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @dasd_path_add_cuirpm(%struct.dasd_device* %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %26, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @dasd_eckd_cuir_scope(%struct.dasd_device*, i32, %struct.dasd_cuir_message*) #1

declare dso_local i64 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_remove_opm(%struct.dasd_device*, i64) #1

declare dso_local i32 @dasd_path_add_cuirpm(%struct.dasd_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
