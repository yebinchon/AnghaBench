; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_mcp_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_ips.c_mcp_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*)* @mcp_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_exceeded(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %8 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %7, i32 0, i32 5
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %12 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 100
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %17 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %24 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %27 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %32 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %38 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %37, i32 0, i32 5
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
