; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_error_phyblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_error_phyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MS_STATUS_ERROR = common dso_local global i32 0, align 4
@MS_REG_OVR_BKST = common dso_local global i32 0, align 4
@BYTE_MASK = common dso_local global i32 0, align 4
@MS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_lib_error_phyblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_error_phyblock(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.us_data*, %struct.us_data** %4, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %10, %struct.ene_ub6250_info** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %13 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MS_STATUS_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %20, i64 %21)
  %23 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %6, align 8
  %24 = call i64 @ms_lib_iswritable(%struct.ene_ub6250_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @MS_REG_OVR_BKST, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* @BYTE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @ms_lib_overwrite_extra(%struct.us_data* %27, i64 %28, i32 0, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @MS_STATUS_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %26, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ms_lib_setacquired_errorblock(%struct.us_data*, i64) #1

declare dso_local i64 @ms_lib_iswritable(%struct.ene_ub6250_info*) #1

declare dso_local i32 @ms_lib_overwrite_extra(%struct.us_data*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
