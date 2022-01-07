; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_setacquired_errorblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_setacquired_errorblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64, i32* }

@MS_LB_NOT_USED = common dso_local global i32 0, align 4
@MS_LB_INITIAL_ERROR = common dso_local global i64 0, align 8
@MS_LB_ACQUIRED_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_lib_setacquired_errorblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_setacquired_errorblock(%struct.us_data* %0, i64 %1) #0 {
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
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %14 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %29 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load i32, i32* @MS_LB_NOT_USED, align 4
  %35 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %36 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %19
  %42 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %43 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MS_LB_INITIAL_ERROR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i64, i64* @MS_LB_ACQUIRED_ERROR, align 8
  %53 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %54 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %52, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
