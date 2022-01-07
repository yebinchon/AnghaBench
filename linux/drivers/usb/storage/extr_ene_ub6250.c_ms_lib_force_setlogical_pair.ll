; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_force_setlogical_pair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_force_setlogical_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64*, i64* }

@MS_LB_NOT_USED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i64)* @ms_lib_force_setlogical_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_force_setlogical_pair(%struct.us_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.us_data*, %struct.us_data** %5, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %12, %struct.ene_ub6250_info** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @MS_LB_NOT_USED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %20 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %18, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %27 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17
  store i32 -1, i32* %4, align 4
  br label %47

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %35 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %33, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %42 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %40, i64* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %32, %31, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
