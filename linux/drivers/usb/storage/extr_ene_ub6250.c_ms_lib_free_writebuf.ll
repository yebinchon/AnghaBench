; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_free_writebuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_free_writebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @ms_lib_free_writebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_lib_free_writebuf(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %7, %struct.ene_ub6250_info** %3, align 8
  %8 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %9 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i64 -1, i64* %10, align 8
  %11 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %12 = call i32 @ms_lib_clear_pagemap(%struct.ene_ub6250_info* %11)
  %13 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %14 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %20 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %25 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %29 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %35 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %3, align 8
  %40 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @ms_lib_clear_pagemap(%struct.ene_ub6250_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
