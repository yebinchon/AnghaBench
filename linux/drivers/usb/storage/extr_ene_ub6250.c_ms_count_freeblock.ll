; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_count_freeblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_count_freeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MS_PHYSICAL_BLOCKS_PER_SEGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_count_freeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_count_freeblock(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.us_data*, %struct.us_data** %3, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %11, %struct.ene_ub6250_info** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %30 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %19, %19
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %19, %27
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
