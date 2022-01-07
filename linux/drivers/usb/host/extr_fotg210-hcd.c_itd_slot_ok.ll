; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_slot_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_itd_slot_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, i32, i32, i64, i32)* @itd_slot_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itd_slot_ok(%struct.fotg210_hcd* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fotg210_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %9, align 4
  %14 = srem i32 %13, %12
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %5
  %16 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 3
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 7
  %21 = call i64 @periodic_usecs(%struct.fotg210_hcd* %16, i32 %18, i32 %20)
  %22 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %7, align 8
  %23 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sgt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %38

29:                                               ; preds = %15
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %15, label %37

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @periodic_usecs(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
