; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_switch_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_switch_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32 }

@SSB_PCMCIA_MEMSEG = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SSB_BAR0_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to switch pcmcia segment\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 1
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  br label %18

18:                                               ; preds = %14, %49
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %20 = load i32, i32* @SSB_PCMCIA_MEMSEG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %28 = load i32, i32* @SSB_PCMCIA_MEMSEG, align 4
  %29 = call i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus* %27, i32 %28, i32* %8)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %55

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %51

38:                                               ; preds = %33
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SSB_BAR0_MAX_RETRIES, align 4
  %44 = icmp sgt i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %55

49:                                               ; preds = %38
  %50 = call i32 @udelay(i32 10)
  br label %18

51:                                               ; preds = %37
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %54 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %48, %32, %25
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ssb_pcmcia_cfg_write(%struct.ssb_bus*, i32, i32) #1

declare dso_local i32 @ssb_pcmcia_cfg_read(%struct.ssb_bus*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
