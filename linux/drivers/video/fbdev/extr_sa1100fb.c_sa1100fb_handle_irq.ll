; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i64, i32 }

@LCSR = common dso_local global i64 0, align 8
@LCSR_LDD = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i64 0, align 8
@LCCR0_LDM = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sa1100fb_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sa1100fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %9, %struct.sa1100fb_info** %5, align 8
  %10 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LCSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LCSR_LDD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LCCR0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  %27 = load i32, i32* @LCCR0_LDM, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %31 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LCCR0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %29, i64 %34)
  %36 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %37 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %36, i32 0, i32 1
  %38 = call i32 @wake_up(i32* %37)
  br label %39

39:                                               ; preds = %20, %2
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %42 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LCSR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
