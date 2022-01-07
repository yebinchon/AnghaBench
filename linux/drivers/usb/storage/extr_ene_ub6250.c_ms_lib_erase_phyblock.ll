; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_erase_phyblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_erase_phyblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64*, i64, i8** }

@MS_LB_NOT_USED = common dso_local global i8* null, align 8
@MS_LB_NOT_USED_ERASED = common dso_local global i64 0, align 8
@MS_LIB_CTRL_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @ms_lib_erase_phyblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_lib_erase_phyblock(%struct.us_data* %0, i64 %1) #0 {
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
  store i32 130, i32* %3, align 4
  br label %81

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
  %34 = load i8*, i8** @MS_LB_NOT_USED, align 8
  %35 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %36 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  store i8* %34, i8** %40, align 8
  br label %41

41:                                               ; preds = %33, %19
  %42 = load i8*, i8** @MS_LB_NOT_USED, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %45 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %51 = call i64 @ms_lib_iswritable(%struct.ene_ub6250_info* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %41
  %54 = load %struct.us_data*, %struct.us_data** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @ms_read_eraseblock(%struct.us_data* %54, i64 %55)
  switch i32 %56, label %70 [
    i32 128, label %57
    i32 131, label %65
    i32 129, label %65
    i32 130, label %69
  ]

57:                                               ; preds = %53
  %58 = load i64, i64* @MS_LB_NOT_USED_ERASED, align 8
  %59 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %60 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %58, i64* %64, align 8
  store i32 128, i32* %3, align 4
  br label %81

65:                                               ; preds = %53, %53
  %66 = load %struct.us_data*, %struct.us_data** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @ms_lib_error_phyblock(%struct.us_data* %66, i64 %67)
  store i32 131, i32* %3, align 4
  br label %81

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %53, %69
  %71 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %7, align 8
  %72 = load i32, i32* @MS_LIB_CTRL_RDONLY, align 4
  %73 = call i32 @ms_lib_ctrl_set(%struct.ene_ub6250_info* %71, i32 %72)
  %74 = load %struct.us_data*, %struct.us_data** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %74, i64 %75)
  store i32 130, i32* %3, align 4
  br label %81

77:                                               ; preds = %41
  %78 = load %struct.us_data*, %struct.us_data** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ms_lib_setacquired_errorblock(%struct.us_data* %78, i64 %79)
  store i32 128, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %70, %65, %57, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @ms_lib_iswritable(%struct.ene_ub6250_info*) #1

declare dso_local i32 @ms_read_eraseblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_error_phyblock(%struct.us_data*, i64) #1

declare dso_local i32 @ms_lib_ctrl_set(%struct.ene_ub6250_info*, i32) #1

declare dso_local i32 @ms_lib_setacquired_errorblock(%struct.us_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
