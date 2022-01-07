; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_request_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_request_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3943_pwm_map = type { i32*, i32 }
%struct.lp3943_pwm = type { %struct.lp3943*, %struct.lp3943_platform_data* }
%struct.lp3943 = type { i32 }
%struct.lp3943_platform_data = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lp3943_pwm_map* (%struct.lp3943_pwm*, i32)* @lp3943_pwm_request_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lp3943_pwm_map* @lp3943_pwm_request_map(%struct.lp3943_pwm* %0, i32 %1) #0 {
  %3 = alloca %struct.lp3943_pwm_map*, align 8
  %4 = alloca %struct.lp3943_pwm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp3943_platform_data*, align 8
  %7 = alloca %struct.lp3943*, align 8
  %8 = alloca %struct.lp3943_pwm_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lp3943_pwm* %0, %struct.lp3943_pwm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %4, align 8
  %12 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %11, i32 0, i32 1
  %13 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %12, align 8
  store %struct.lp3943_platform_data* %13, %struct.lp3943_platform_data** %6, align 8
  %14 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %4, align 8
  %15 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %14, i32 0, i32 0
  %16 = load %struct.lp3943*, %struct.lp3943** %15, align 8
  store %struct.lp3943* %16, %struct.lp3943** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.lp3943_pwm_map* @kzalloc(i32 16, i32 %17)
  store %struct.lp3943_pwm_map* %18, %struct.lp3943_pwm_map** %8, align 8
  %19 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %20 = icmp ne %struct.lp3943_pwm_map* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.lp3943_pwm_map* @ERR_PTR(i32 %23)
  store %struct.lp3943_pwm_map* %24, %struct.lp3943_pwm_map** %3, align 8
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.lp3943_platform_data, %struct.lp3943_platform_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %36 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.lp3943_platform_data*, %struct.lp3943_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.lp3943_platform_data, %struct.lp3943_platform_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %47 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %74, %25
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %51 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %56 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.lp3943*, %struct.lp3943** %7, align 8
  %64 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %63, i32 0, i32 0
  %65 = call i64 @test_and_set_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  %69 = call i32 @kfree(%struct.lp3943_pwm_map* %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.lp3943_pwm_map* @ERR_PTR(i32 %71)
  store %struct.lp3943_pwm_map* %72, %struct.lp3943_pwm_map** %3, align 8
  br label %79

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %8, align 8
  store %struct.lp3943_pwm_map* %78, %struct.lp3943_pwm_map** %3, align 8
  br label %79

79:                                               ; preds = %77, %67, %21
  %80 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %3, align 8
  ret %struct.lp3943_pwm_map* %80
}

declare dso_local %struct.lp3943_pwm_map* @kzalloc(i32, i32) #1

declare dso_local %struct.lp3943_pwm_map* @ERR_PTR(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.lp3943_pwm_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
