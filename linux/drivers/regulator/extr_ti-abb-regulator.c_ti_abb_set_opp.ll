; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ti-abb-regulator.c_ti_abb_set_opp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ti-abb-regulator.c_ti_abb_set_opp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.ti_abb = type { i64, i32, i32, %struct.ti_abb_reg* }
%struct.ti_abb_reg = type { i32, i32, i32, i32 }
%struct.ti_abb_info = type { i32 }

@TI_ABB_NOMINAL_OPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.ti_abb*, %struct.ti_abb_info*)* @ti_abb_set_opp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_abb_set_opp(%struct.regulator_dev* %0, %struct.ti_abb* %1, %struct.ti_abb_info* %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca %struct.ti_abb*, align 8
  %6 = alloca %struct.ti_abb_info*, align 8
  %7 = alloca %struct.ti_abb_reg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store %struct.ti_abb* %1, %struct.ti_abb** %5, align 8
  store %struct.ti_abb_info* %2, %struct.ti_abb_info** %6, align 8
  %10 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %11 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %10, i32 0, i32 3
  %12 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %11, align 8
  store %struct.ti_abb_reg* %12, %struct.ti_abb_reg** %7, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %17 = call i32 @ti_abb_clear_all_txdone(%struct.device* %15, %struct.ti_abb* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %23 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %26 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %30 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ti_abb_rmw(i32 %28, i32 0, i32 %31)
  %33 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %34 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %52 [
    i32 128, label %36
    i32 129, label %44
  ]

36:                                               ; preds = %21
  %37 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %38 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %41 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ti_abb_rmw(i32 %39, i32 1, i32 %42)
  br label %52

44:                                               ; preds = %21
  %45 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %46 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %49 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ti_abb_rmw(i32 %47, i32 1, i32 %50)
  br label %52

52:                                               ; preds = %21, %44, %36
  %53 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %54 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %57 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %60 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ti_abb_rmw(i32 %55, i32 %58, i32 %61)
  %63 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %64 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %52
  %68 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %69 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TI_ABB_NOMINAL_OPP, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %76 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %77 = call i32 @ti_abb_program_ldovbb(%struct.device* %74, %struct.ti_abb* %75, %struct.ti_abb_info* %76)
  br label %78

78:                                               ; preds = %73, %67, %52
  %79 = load %struct.ti_abb_reg*, %struct.ti_abb_reg** %7, align 8
  %80 = getelementptr inbounds %struct.ti_abb_reg, %struct.ti_abb_reg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %83 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ti_abb_rmw(i32 %81, i32 1, i32 %84)
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %88 = call i32 @ti_abb_wait_txdone(%struct.device* %86, %struct.ti_abb* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %116

92:                                               ; preds = %78
  %93 = load %struct.device*, %struct.device** %8, align 8
  %94 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %95 = call i32 @ti_abb_clear_all_txdone(%struct.device* %93, %struct.ti_abb* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %116

99:                                               ; preds = %92
  %100 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %101 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %106 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TI_ABB_NOMINAL_OPP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.device*, %struct.device** %8, align 8
  %112 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %113 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %114 = call i32 @ti_abb_program_ldovbb(%struct.device* %111, %struct.ti_abb* %112, %struct.ti_abb_info* %113)
  br label %115

115:                                              ; preds = %110, %104, %99
  br label %116

116:                                              ; preds = %115, %98, %91, %20
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @ti_abb_clear_all_txdone(%struct.device*, %struct.ti_abb*) #1

declare dso_local i32 @ti_abb_rmw(i32, i32, i32) #1

declare dso_local i32 @ti_abb_program_ldovbb(%struct.device*, %struct.ti_abb*, %struct.ti_abb_info*) #1

declare dso_local i32 @ti_abb_wait_txdone(%struct.device*, %struct.ti_abb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
