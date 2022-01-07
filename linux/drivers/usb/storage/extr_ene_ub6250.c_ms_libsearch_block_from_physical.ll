; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_libsearch_block_from_physical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_libsearch_block_from_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ms_lib_type_extdat = type { i32 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@MS_LB_ERROR = common dso_local global i32 0, align 4
@MS_PHYSICAL_BLOCKS_PER_SEGMENT_MASK = common dso_local global i64 0, align 8
@MS_PHYSICAL_BLOCKS_PER_SEGMENT = common dso_local global i64 0, align 8
@MS_LB_NOT_USED_ERASED = common dso_local global i64 0, align 8
@MS_LB_NOT_USED = common dso_local global i64 0, align 8
@MS_REG_OVR_BKST = common dso_local global i32 0, align 4
@MS_REG_OVR_BKST_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_libsearch_block_from_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_libsearch_block_from_physical(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ms_lib_type_extdat, align 4
  %8 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.us_data*, %struct.us_data** %4, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %12, %struct.ene_ub6250_info** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %15 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MS_LB_ERROR, align 4
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %101, %21
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT_MASK, align 8
  %31 = and i64 %29, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @MS_PHYSICAL_BLOCKS_PER_SEGMENT, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %39 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MS_LB_NOT_USED_ERASED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %37
  %51 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %8, align 8
  %52 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MS_LB_NOT_USED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %50
  %61 = load %struct.us_data*, %struct.us_data** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @ms_lib_read_extra(%struct.us_data* %61, i64 %62, i32 0, %struct.ms_lib_type_extdat* %7)
  switch i32 %63, label %69 [
    i32 129, label %64
    i32 128, label %64
    i32 132, label %65
    i32 130, label %66
    i32 133, label %68
  ]

64:                                               ; preds = %60, %60
  br label %73

65:                                               ; preds = %60
  store i32 132, i32* %3, align 4
  br label %106

66:                                               ; preds = %60
  %67 = load i32, i32* @MS_LB_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %60, %68
  %70 = load %struct.us_data*, %struct.us_data** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %70, i64 %71)
  br label %101

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.ms_lib_type_extdat, %struct.ms_lib_type_extdat* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MS_REG_OVR_BKST, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @MS_REG_OVR_BKST_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.us_data*, %struct.us_data** %4, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %81, i64 %82)
  br label %101

84:                                               ; preds = %73
  %85 = load %struct.us_data*, %struct.us_data** %4, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @ms_lib_erase_phyblock(%struct.us_data* %85, i64 %86)
  switch i32 %87, label %94 [
    i32 129, label %88
    i32 131, label %91
    i32 134, label %93
  ]

88:                                               ; preds = %84
  %89 = load i64, i64* %6, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %106

91:                                               ; preds = %84
  %92 = load i32, i32* @MS_LB_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %106

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %84, %93
  %95 = load %struct.us_data*, %struct.us_data** %4, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @ms_lib_error_phyblock(%struct.us_data* %95, i64 %96)
  br label %98

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %98, %50
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %80, %69
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %24

104:                                              ; preds = %24
  %105 = load i32, i32* @MS_LB_ERROR, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %91, %88, %66, %65, %47, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ms_lib_read_extra(%struct.us_data*, i64, i32, %struct.ms_lib_type_extdat*) #1

declare dso_local i32 @ms_lib_setacquired_errorblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_erase_phyblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_error_phyblock(%struct.us_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
