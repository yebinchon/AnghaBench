; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_round_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_round_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_period = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sx_period*)* @round_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_period(i32 %0, %struct.sx_period* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sx_period*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sx_period* %1, %struct.sx_period** %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.sx_period*, %struct.sx_period** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %8, i64 %10
  %12 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sx_period*, %struct.sx_period** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %17, i64 %20
  %22 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ule i32 %16, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.sx_period*, %struct.sx_period** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %27, i64 %30
  %32 = getelementptr inbounds %struct.sx_period, %struct.sx_period* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %26, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %25, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store i32 7, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
