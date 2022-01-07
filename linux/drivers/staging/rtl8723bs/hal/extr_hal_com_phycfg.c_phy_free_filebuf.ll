; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_free_filebuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_free_filebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_free_filebuf(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %4)
  store %struct.hal_com_data* %5, %struct.hal_com_data** %3, align 8
  %6 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %7 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %12 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @vfree(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %17 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %22 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @vfree(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %27 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %32 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @vfree(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %37 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %42 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @vfree(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %47 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %52 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @vfree(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %57 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %62 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @vfree(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %67 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %72 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @vfree(i64 %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %77 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %82 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @vfree(i64 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %87 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %92 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @vfree(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @vfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
