; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_token_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_token_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }

@QTD_STS_ACTIVE = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.fotg210_hcd*, i32)* @token_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @token_mark(%struct.fotg210_hcd* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @QTD_STS_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8 42, i8* %3, align 1
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QTD_STS_HALT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8 45, i8* %3, align 1
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @IS_SHORT_READ(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8 32, i8* %3, align 1
  br label %27

26:                                               ; preds = %21
  store i8 47, i8* %3, align 1
  br label %27

27:                                               ; preds = %26, %25, %20, %14
  %28 = load i8, i8* %3, align 1
  ret i8 %28
}

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @IS_SHORT_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
