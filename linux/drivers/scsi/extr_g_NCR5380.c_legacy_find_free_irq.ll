; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_legacy_find_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_g_NCR5380.c_legacy_find_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@legacy_empty_irq_handler = common dso_local global i32 0, align 4
@IRQF_PROBE_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Test IRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @legacy_find_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_find_free_irq(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @legacy_empty_irq_handler, align 4
  %12 = load i32, i32* @IRQF_PROBE_SHARED, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @request_irq(i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = call i32 @free_irq(i32 %19, i8* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %8
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  br label %4

28:                                               ; preds = %4
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
