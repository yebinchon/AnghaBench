; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_write_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@w1_disable_irqs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w1_master*, i32)* @w1_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w1_write_bit(%struct.w1_master* %0, i32 %1) #0 {
  %3 = alloca %struct.w1_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.w1_master* %0, %struct.w1_master** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @w1_disable_irqs, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %16 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %21 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %19(i32 %24, i32 0)
  %26 = call i32 @w1_delay(i32 6)
  %27 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %28 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %33 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %31(i32 %36, i32 1)
  %38 = call i32 @w1_delay(i32 64)
  br label %64

39:                                               ; preds = %11
  %40 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %41 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %46 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(i32 %49, i32 0)
  %51 = call i32 @w1_delay(i32 60)
  %52 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %53 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %58 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %56(i32 %61, i32 1)
  %63 = call i32 @w1_delay(i32 10)
  br label %64

64:                                               ; preds = %39, %14
  %65 = load i64, i64* @w1_disable_irqs, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @w1_delay(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
