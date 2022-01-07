; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_init_hwxmits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_init_hwxmits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_xmit = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_xmit*, i64)* @init_hwxmits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hwxmits(%struct.hw_xmit* %0, i64 %1) #0 {
  %3 = alloca %struct.hw_xmit*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hw_xmit* %0, %struct.hw_xmit** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %12 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %15 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %18 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %20 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %10
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %25 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %24, i32 1
  store %struct.hw_xmit* %25, %struct.hw_xmit** %3, align 8
  br label %6

26:                                               ; preds = %6
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
