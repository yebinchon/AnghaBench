; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_generate_random_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_generate_random_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_generate_random_ibss(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @jiffies, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 2, i32* %6, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 17, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 135, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %22, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
