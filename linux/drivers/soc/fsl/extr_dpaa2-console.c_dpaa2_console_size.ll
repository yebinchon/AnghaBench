; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_dpaa2-console.c_dpaa2_console_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/extr_dpaa2-console.c_dpaa2_console_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_data = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.console_data*)* @dpaa2_console_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dpaa2_console_size(%struct.console_data* %0) #0 {
  %2 = alloca %struct.console_data*, align 8
  %3 = alloca i64, align 8
  store %struct.console_data* %0, %struct.console_data** %2, align 8
  %4 = load %struct.console_data*, %struct.console_data** %2, align 8
  %5 = getelementptr inbounds %struct.console_data, %struct.console_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.console_data*, %struct.console_data** %2, align 8
  %8 = getelementptr inbounds %struct.console_data, %struct.console_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sle i64 %6, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.console_data*, %struct.console_data** %2, align 8
  %13 = getelementptr inbounds %struct.console_data, %struct.console_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.console_data*, %struct.console_data** %2, align 8
  %16 = getelementptr inbounds %struct.console_data, %struct.console_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %3, align 8
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.console_data*, %struct.console_data** %2, align 8
  %21 = getelementptr inbounds %struct.console_data, %struct.console_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.console_data*, %struct.console_data** %2, align 8
  %24 = getelementptr inbounds %struct.console_data, %struct.console_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.console_data*, %struct.console_data** %2, align 8
  %28 = getelementptr inbounds %struct.console_data, %struct.console_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.console_data*, %struct.console_data** %2, align 8
  %31 = getelementptr inbounds %struct.console_data, %struct.console_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = add nsw i64 %26, %33
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %19, %11
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
