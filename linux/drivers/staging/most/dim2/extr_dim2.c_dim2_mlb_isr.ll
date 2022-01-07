; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_mlb_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_dim2.c_dim2_mlb_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim2_hdm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@dim_lock = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dim2_mlb_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dim2_mlb_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dim2_hdm*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dim2_hdm*
  store %struct.dim2_hdm* %8, %struct.dim2_hdm** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @dim_lock, i64 %9)
  %11 = call i32 (...) @dim_service_mlb_int_irq()
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @dim_lock, i64 %12)
  %14 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %15 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %20 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %23 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %41, %29
  %31 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %32 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.dim2_hdm*, %struct.dim2_hdm** %5, align 8
  %35 = getelementptr inbounds %struct.dim2_hdm, %struct.dim2_hdm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = call i32 @try_start_dim_transfer(%struct.TYPE_2__* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %30

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %18, %2
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dim_service_mlb_int_irq(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @try_start_dim_transfer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
