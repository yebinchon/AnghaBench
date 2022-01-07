; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_check_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_check_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, i32, i32, i32, i32)* @check_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_period(%struct.fotg210_hcd* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fotg210_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp uge i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %75

16:                                               ; preds = %5
  %17 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %18 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %46, %27
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @periodic_usecs(%struct.fotg210_hcd* %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %75

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %29

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %50 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %28, label %53

53:                                               ; preds = %46
  br label %74

54:                                               ; preds = %16
  br label %55

55:                                               ; preds = %65, %54
  %56 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @periodic_usecs(%struct.fotg210_hcd* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %75

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %70 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %55, label %73

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %53
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %63, %40, %15
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @periodic_usecs(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
