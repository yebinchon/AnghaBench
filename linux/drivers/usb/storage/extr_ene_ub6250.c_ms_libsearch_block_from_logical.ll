; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_libsearch_block_from_logical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_libsearch_block_from_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MS_LB_ERROR = common dso_local global i64 0, align 8
@MS_NUMBER_OF_BOOT_BLOCK = common dso_local global i32 0, align 4
@MS_LOGICAL_BLOCKS_PER_SEGMENT = common dso_local global i64 0, align 8
@MS_PHYSICAL_BLOCKS_PER_SEGMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_libsearch_block_from_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_libsearch_block_from_logical(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %11, %struct.ene_ub6250_info** %7, align 8
  %12 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @ms_libconv_to_physical(%struct.ene_ub6250_info* %12, i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MS_LB_ERROR, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @MS_LB_ERROR, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @MS_NUMBER_OF_BOOT_BLOCK, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load i64, i64* @MS_LOGICAL_BLOCKS_PER_SEGMENT, align 8
  %34 = sdiv i64 %32, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul nsw i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 8
  %39 = sub nsw i64 %38, 1
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %28, %2
  %43 = load %struct.us_data*, %struct.us_data** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ms_libsearch_block_from_physical(%struct.us_data* %43, i64 %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @ms_libconv_to_physical(%struct.ene_ub6250_info*, i64) #1

declare dso_local i32 @ms_libsearch_block_from_physical(%struct.us_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
