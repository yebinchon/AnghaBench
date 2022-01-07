; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_clkout_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @ac100_clkout_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_clkout_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %57, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %20, i32 %21)
  store %struct.clk_hw* %22, %struct.clk_hw** %10, align 8
  %23 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %24 = icmp ne %struct.clk_hw* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %57

26:                                               ; preds = %19
  %27 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %28 = call i64 @clk_hw_get_rate(%struct.clk_hw* %27)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %30 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %31 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @ac100_clkout_round_rate(%struct.clk_hw* %29, i64 %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %37 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %57

41:                                               ; preds = %26
  %42 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %43 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  %47 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %48 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %7, align 8
  %55 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  store %struct.clk_hw* %55, %struct.clk_hw** %6, align 8
  br label %56

56:                                               ; preds = %53, %41
  br label %57

57:                                               ; preds = %56, %40, %25
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %15

60:                                               ; preds = %15
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %76

66:                                               ; preds = %60
  %67 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %68 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %69 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %68, i32 0, i32 2
  store %struct.clk_hw* %67, %struct.clk_hw** %69, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %72 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %75 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %66, %63
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @ac100_clkout_round_rate(%struct.clk_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
