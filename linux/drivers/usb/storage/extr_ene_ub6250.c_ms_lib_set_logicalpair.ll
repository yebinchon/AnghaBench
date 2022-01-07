; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_set_logicalpair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_set_logicalpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64, i64)* @ms_lib_set_logicalpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_set_logicalpair(%struct.us_data* %0, i64 %1, i64 %2) #0 {
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
  %14 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %15 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %13, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %22 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %3
  store i32 -1, i32* %4, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %30 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %28, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %37 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %35, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %27, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
