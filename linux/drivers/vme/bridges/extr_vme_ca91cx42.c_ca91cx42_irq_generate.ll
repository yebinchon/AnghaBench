; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_generate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_irq_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_bridge = type { %struct.ca91cx42_driver* }
%struct.ca91cx42_driver = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VINT_EN = common dso_local global i64 0, align 8
@STATID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vme_bridge*, i32, i32)* @ca91cx42_irq_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca91cx42_irq_generate(%struct.vme_bridge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vme_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ca91cx42_driver*, align 8
  store %struct.vme_bridge* %0, %struct.vme_bridge** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vme_bridge*, %struct.vme_bridge** %5, align 8
  %11 = getelementptr inbounds %struct.vme_bridge, %struct.vme_bridge* %10, i32 0, i32 0
  %12 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %11, align 8
  store %struct.ca91cx42_driver* %12, %struct.ca91cx42_driver** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %21 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %24 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VINT_EN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 24
  %31 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %32 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STATID, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 24
  %40 = shl i32 1, %39
  %41 = or i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %44 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VINT_EN, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @iowrite32(i32 %42, i64 %47)
  %49 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %50 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ca91cx42_iack_received(%struct.ca91cx42_driver* %52, i32 %53)
  %55 = call i32 @wait_event_interruptible(i32 %51, i32 %54)
  %56 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %57 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VINT_EN, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ioread32(i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 24
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %62, %66
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %70 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VINT_EN, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @iowrite32(i32 %68, i64 %73)
  %75 = load %struct.ca91cx42_driver*, %struct.ca91cx42_driver** %9, align 8
  %76 = getelementptr inbounds %struct.ca91cx42_driver, %struct.ca91cx42_driver* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %19, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @ca91cx42_iack_received(%struct.ca91cx42_driver*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
