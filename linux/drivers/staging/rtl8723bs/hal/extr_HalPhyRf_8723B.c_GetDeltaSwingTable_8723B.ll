; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_GetDeltaSwingTable_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_GetDeltaSwingTable_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__, %struct.adapter* }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@DeltaSwingTableIdx_2GA_P_8188E = common dso_local global i64 0, align 8
@DeltaSwingTableIdx_2GA_N_8188E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32**, i32**, i32**, i32**)* @GetDeltaSwingTable_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetDeltaSwingTable_8723B(%struct.TYPE_5__* %0, i32** %1, i32** %2, i32** %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.hal_com_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %11, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load %struct.adapter*, %struct.adapter** %11, align 8
  %22 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %21)
  store %struct.hal_com_data* %22, %struct.hal_com_data** %13, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %28 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp sle i32 1, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  %34 = icmp sle i32 %33, 14
  br i1 %34, label %35, label %74

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @IS_CCK_RATE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %7, align 8
  store i32* %42, i32** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32**, i32*** %8, align 8
  store i32* %46, i32** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  br label %73

56:                                               ; preds = %35
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32**, i32*** %7, align 8
  store i32* %59, i32** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i32**, i32*** %8, align 8
  store i32* %63, i32** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i32**, i32*** %9, align 8
  store i32* %67, i32** %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = load i32**, i32*** %10, align 8
  store i32* %71, i32** %72, align 8
  br label %73

73:                                               ; preds = %56, %39
  br label %87

74:                                               ; preds = %32, %5
  %75 = load i64, i64* @DeltaSwingTableIdx_2GA_P_8188E, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32**, i32*** %7, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i64, i64* @DeltaSwingTableIdx_2GA_N_8188E, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32**, i32*** %8, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i64, i64* @DeltaSwingTableIdx_2GA_P_8188E, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32**, i32*** %9, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i64, i64* @DeltaSwingTableIdx_2GA_N_8188E, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32**, i32*** %10, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %74, %73
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @IS_CCK_RATE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
