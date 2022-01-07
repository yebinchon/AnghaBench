; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_do_run_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_do_run_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i64, i64, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, i64)* @__lcs_do_run_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lcs_do_run_thread(%struct.lcs_card* %0, i64 %1) #0 {
  %3 = alloca %struct.lcs_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %8 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %7, i32 0, i32 3
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %12 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %19 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %26 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %32 = load i64, i64* %4, align 8
  %33 = xor i64 %32, -1
  %34 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %35 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %40 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %46

43:                                               ; preds = %24, %17
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %31
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %49 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %48, i32 0, i32 3
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
