; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_airq_iv_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @airq_iv_scan(%struct.airq_iv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.airq_iv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.airq_iv* %0, %struct.airq_iv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.airq_iv*, %struct.airq_iv** %5, align 8
  %10 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @find_next_bit_inv(i32 %11, i64 %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.airq_iv*, %struct.airq_iv** %5, align 8
  %22 = getelementptr inbounds %struct.airq_iv, %struct.airq_iv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit_inv(i64 %20, i32 %23)
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i64, i64* %4, align 8
  ret i64 %27
}

declare dso_local i64 @find_next_bit_inv(i32, i64, i64) #1

declare dso_local i32 @clear_bit_inv(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
