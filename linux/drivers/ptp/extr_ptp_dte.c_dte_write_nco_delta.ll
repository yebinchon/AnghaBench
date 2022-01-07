; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_dte.c_dte_write_nco_delta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_dte.c_dte_write_nco_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_dte = type { i64, i32, i64 }

@DTE_NCO_MAX_NS = common dso_local global i64 0, align 8
@DTE_NCO_TS_WRAP_LSHIFT = common dso_local global i64 0, align 8
@DTE_NCO_TS_WRAP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptp_dte*, i64)* @dte_write_nco_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dte_write_nco_delta(%struct.ptp_dte* %0, i64 %1) #0 {
  %3 = alloca %struct.ptp_dte*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ptp_dte* %0, %struct.ptp_dte** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %7 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @dte_read_nco(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @abs(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %19 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i64, i64* @DTE_NCO_MAX_NS, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %29 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %33

32:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %22
  br label %50

34:                                               ; preds = %12, %2
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @DTE_NCO_MAX_NS, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %43 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* @DTE_NCO_MAX_NS, align 8
  %47 = load i64, i64* %5, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %52 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @dte_write_nco(i32 %53, i64 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @DTE_NCO_TS_WRAP_LSHIFT, align 8
  %58 = ashr i64 %56, %57
  %59 = load i64, i64* @DTE_NCO_TS_WRAP_MASK, align 8
  %60 = and i64 %58, %59
  %61 = load %struct.ptp_dte*, %struct.ptp_dte** %3, align 8
  %62 = getelementptr inbounds %struct.ptp_dte, %struct.ptp_dte* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  ret void
}

declare dso_local i64 @dte_read_nco(i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dte_write_nco(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
