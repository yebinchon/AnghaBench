; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_res_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_res_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_btemp = type { i32 }
%struct.abx500_res_to_temp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_btemp*, %struct.abx500_res_to_temp*, i32, i32)* @ab8500_btemp_res_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_btemp_res_to_temp(%struct.ab8500_btemp* %0, %struct.abx500_res_to_temp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ab8500_btemp*, align 8
  %6 = alloca %struct.abx500_res_to_temp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ab8500_btemp* %0, %struct.ab8500_btemp** %5, align 8
  store %struct.abx500_res_to_temp* %1, %struct.abx500_res_to_temp** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %12 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %11, i64 0
  %13 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %58

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %19, i64 %22
  %24 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %18, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %9, align 4
  br label %57

30:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %33, i64 %35
  %37 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %32, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %42, i64 %45
  %47 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %41, %48
  br label %50

50:                                               ; preds = %40, %31
  %51 = phi i1 [ false, %31 ], [ %49, %40 ]
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %31

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %59, i64 %61
  %63 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %65, i64 %68
  %70 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %72, i64 %74
  %76 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %71, %77
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %80, i64 %82
  %84 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %79, %85
  %87 = mul nsw i32 %78, %86
  %88 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %88, i64 %91
  %93 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.abx500_res_to_temp*, %struct.abx500_res_to_temp** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %95, i64 %97
  %99 = getelementptr inbounds %struct.abx500_res_to_temp, %struct.abx500_res_to_temp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %94, %100
  %102 = sdiv i32 %87, %101
  %103 = add nsw i32 %64, %102
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
