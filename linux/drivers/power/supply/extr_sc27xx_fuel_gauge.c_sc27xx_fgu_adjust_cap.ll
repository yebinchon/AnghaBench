; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_adjust_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_adjust_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to get init coulomb counter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc27xx_fgu_data*, i32)* @sc27xx_fgu_adjust_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sc27xx_fgu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %8 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %10 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %11 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %10, i32 0, i32 2
  %12 = call i32 @sc27xx_fgu_get_clbcnt(%struct.sc27xx_fgu_data* %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %17 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @sc27xx_fgu_get_clbcnt(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
