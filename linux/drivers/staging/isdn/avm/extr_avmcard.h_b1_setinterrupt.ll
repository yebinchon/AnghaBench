; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_avmcard.h_b1_setinterrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_avmcard.h_b1_setinterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B1_INSTAT = common dso_local global i32 0, align 4
@T1_IRQMASTER = common dso_local global i32 0, align 4
@B1_RESET = common dso_local global i32 0, align 4
@b1_irq_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @b1_setinterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b1_setinterrupt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %33 [
    i32 129, label %8
    i32 134, label %18
    i32 131, label %34
    i32 130, label %34
    i32 133, label %34
    i32 132, label %44
    i32 128, label %44
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @B1_INSTAT, align 4
  %11 = call i32 @t1outp(i32 %9, i32 %10, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @B1_INSTAT, align 4
  %14 = call i32 @t1outp(i32 %12, i32 %13, i32 2)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @T1_IRQMASTER, align 4
  %17 = call i32 @t1outp(i32 %15, i32 %16, i32 8)
  br label %48

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @B1_INSTAT, align 4
  %21 = call i32 @b1outp(i32 %19, i32 %20, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @B1_RESET, align 4
  %24 = load i32*, i32** @b1_irq_table, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @b1outp(i32 %22, i32 %23, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @B1_INSTAT, align 4
  %32 = call i32 @b1outp(i32 %30, i32 %31, i32 2)
  br label %48

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %3, %3, %3, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @B1_INSTAT, align 4
  %37 = call i32 @b1outp(i32 %35, i32 %36, i32 0)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @B1_RESET, align 4
  %40 = call i32 @b1outp(i32 %38, i32 %39, i32 240)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @B1_INSTAT, align 4
  %43 = call i32 @b1outp(i32 %41, i32 %42, i32 2)
  br label %48

44:                                               ; preds = %3, %3
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @B1_RESET, align 4
  %47 = call i32 @b1outp(i32 %45, i32 %46, i32 240)
  br label %48

48:                                               ; preds = %44, %34, %18, %8
  ret void
}

declare dso_local i32 @t1outp(i32, i32, i32) #1

declare dso_local i32 @b1outp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
