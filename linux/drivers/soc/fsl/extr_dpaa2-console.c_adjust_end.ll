; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_dpaa2-console.c_adjust_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_dpaa2-console.c_adjust_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_data = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console_data*)* @adjust_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_end(%struct.console_data* %0) #0 {
  %2 = alloca %struct.console_data*, align 8
  %3 = alloca i32, align 4
  store %struct.console_data* %0, %struct.console_data** %2, align 8
  %4 = load %struct.console_data*, %struct.console_data** %2, align 8
  %5 = getelementptr inbounds %struct.console_data, %struct.console_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @readl(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.console_data*, %struct.console_data** %2, align 8
  %10 = getelementptr inbounds %struct.console_data, %struct.console_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @LAST_BYTE(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = load %struct.console_data*, %struct.console_data** %2, align 8
  %16 = getelementptr inbounds %struct.console_data, %struct.console_data* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @LAST_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
