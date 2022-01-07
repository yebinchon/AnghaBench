; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_select_core_and_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_select_core_and_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, %struct.ssb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_device*, i32*)* @select_core_and_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_core_and_segment(%struct.ssb_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %10 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 0
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %10, align 8
  store %struct.ssb_bus* %11, %struct.ssb_bus** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 2048
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 2048
  store i32 %18, i32* %16, align 4
  store i32 1, i32* %8, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %23 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 1
  %24 = load %struct.ssb_device*, %struct.ssb_device** %23, align 8
  %25 = icmp ne %struct.ssb_device* %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %31 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %32 = call i32 @ssb_pcmcia_switch_core(%struct.ssb_bus* %30, %struct.ssb_device* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %42 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %39
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %36
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ssb_pcmcia_switch_core(%struct.ssb_bus*, %struct.ssb_device*) #1

declare dso_local i32 @ssb_pcmcia_switch_segment(%struct.ssb_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
