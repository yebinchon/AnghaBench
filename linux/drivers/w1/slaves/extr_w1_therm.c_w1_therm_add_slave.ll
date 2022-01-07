; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_therm_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_therm.c_w1_therm_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*)* @w1_therm_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_therm_add_slave(%struct.w1_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_slave*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @kzalloc(i32 4, i32 %4)
  %6 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %7 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %9 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.w1_slave*, %struct.w1_slave** %3, align 8
  %17 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @THERM_REFCNT(i32 %18)
  %20 = call i32 @atomic_set(i32 %19, i32 1)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32, i32) #1

declare dso_local i32 @THERM_REFCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
