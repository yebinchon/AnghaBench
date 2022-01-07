; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_hw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci.h_hw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*, i32, i32, i32)* @hw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_write(%struct.ci_hdrc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ci_hdrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = xor i32 %9, -1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %4
  %13 = load %struct.ci_hdrc*, %struct.ci_hdrc** %5, align 8
  %14 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ioread32(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %12, %4
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.ci_hdrc*, %struct.ci_hdrc** %5, align 8
  %33 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__hw_write(%struct.ci_hdrc* %30, i32 %31, i32 %39)
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @__hw_write(%struct.ci_hdrc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
