; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_free_allocatedarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_free_allocatedarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @ms_lib_free_allocatedarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_lib_free_allocatedarea(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %7, %struct.ene_ub6250_info** %3, align 8
  %8 = load %struct.us_data*, %struct.us_data** %2, align 8
  %9 = call i32 @ms_lib_free_writebuf(%struct.us_data* %8)
  %10 = load %struct.us_data*, %struct.us_data** %2, align 8
  %11 = call i32 @ms_lib_free_logicalmap(%struct.us_data* %10)
  %12 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %13 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %16 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %19 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %22 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %25 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %28 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %31 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %34 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local i32 @ms_lib_free_writebuf(%struct.us_data*) #1

declare dso_local i32 @ms_lib_free_logicalmap(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
