; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa_enumerator.c_configure_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_eisa_enumerator.c_configure_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPEE_IRQ_MAX_ENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"IRQ %d \00", align 1
@HPEE_IRQ_CHANNEL_MASK = common dso_local global i32 0, align 4
@HPEE_IRQ_TRIG_LEVEL = common dso_local global i32 0, align 4
@HPEE_IRQ_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @configure_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HPEE_IRQ_MAX_ENT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = call i32 @get_8(i8* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @HPEE_IRQ_CHANNEL_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @HPEE_IRQ_TRIG_LEVEL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @HPEE_IRQ_CHANNEL_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @eisa_make_irq_level(i32 %27)
  br label %34

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @HPEE_IRQ_CHANNEL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @eisa_make_irq_edge(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @HPEE_IRQ_MORE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %6

46:                                               ; preds = %41, %6
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @get_8(i8*) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @eisa_make_irq_level(i32) #1

declare dso_local i32 @eisa_make_irq_edge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
