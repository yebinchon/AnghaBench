; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.h_dwc2_writel_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.h_dwc2_writel_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, i32, i8*, i32)* @dwc2_writel_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_writel_rep(%struct.dwc2_hsotg* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %22, %12
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %16, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %15, label %26

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %4
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
