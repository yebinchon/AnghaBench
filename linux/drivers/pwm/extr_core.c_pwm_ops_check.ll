; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_ops_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_ops_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_ops = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_ops*)* @pwm_ops_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_ops_check(%struct.pwm_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwm_ops*, align 8
  store %struct.pwm_ops* %0, %struct.pwm_ops** %3, align 8
  %4 = load %struct.pwm_ops*, %struct.pwm_ops** %3, align 8
  %5 = getelementptr inbounds %struct.pwm_ops, %struct.pwm_ops* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.pwm_ops*, %struct.pwm_ops** %3, align 8
  %10 = getelementptr inbounds %struct.pwm_ops, %struct.pwm_ops* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.pwm_ops*, %struct.pwm_ops** %3, align 8
  %15 = getelementptr inbounds %struct.pwm_ops, %struct.pwm_ops* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %26

19:                                               ; preds = %13, %8, %1
  %20 = load %struct.pwm_ops*, %struct.pwm_ops** %3, align 8
  %21 = getelementptr inbounds %struct.pwm_ops, %struct.pwm_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
