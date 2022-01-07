; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_t1pci_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_t1pci_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1pci_detect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @b1dma_detect(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %79

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @WriteReg(i32* %11, i32 -2147479552, i32 17)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @WriteReg(i32* %15, i32 -2146430976, i32 34)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @WriteReg(i32* %19, i32 -2145382400, i32 51)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @WriteReg(i32* %23, i32 -2144333824, i32 68)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14, %10
  store i32 6, i32* %2, align 4
  br label %79

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ReadReg(i32* %28, i32 -2147479552)
  %30 = icmp ne i32 %29, 17
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @ReadReg(i32* %32, i32 -2146430976)
  %34 = icmp ne i32 %33, 34
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ReadReg(i32* %36, i32 -2145382400)
  %38 = icmp ne i32 %37, 51
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @ReadReg(i32* %40, i32 -2144333824)
  %42 = icmp ne i32 %41, 68
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35, %31, %27
  store i32 7, i32* %2, align 4
  br label %79

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @WriteReg(i32* %45, i32 -2147479552, i32 85)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @WriteReg(i32* %49, i32 -2146430976, i32 102)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @WriteReg(i32* %53, i32 -2145382400, i32 119)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @WriteReg(i32* %57, i32 -2144333824, i32 136)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %48, %44
  store i32 8, i32* %2, align 4
  br label %79

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @ReadReg(i32* %62, i32 -2147479552)
  %64 = icmp ne i32 %63, 85
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @ReadReg(i32* %66, i32 -2146430976)
  %68 = icmp ne i32 %67, 102
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @ReadReg(i32* %70, i32 -2145382400)
  %72 = icmp ne i32 %71, 119
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @ReadReg(i32* %74, i32 -2144333824)
  %76 = icmp ne i32 %75, 136
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69, %65, %61
  store i32 9, i32* %2, align 4
  br label %79

78:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %60, %43, %26, %8
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @b1dma_detect(i32*) #1

declare dso_local i64 @WriteReg(i32*, i32, i32) #1

declare dso_local i32 @ReadReg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
