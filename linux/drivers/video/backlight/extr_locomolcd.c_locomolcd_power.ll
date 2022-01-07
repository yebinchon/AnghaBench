; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_locomolcd.c_locomolcd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sharpsl_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@locomolcd_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locomolcd_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_param, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* @locomolcd_dev, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @local_irq_restore(i64 %11)
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i64 (...) @machine_is_collie()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 128, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %16, %13
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i64 (...) @machine_is_poodle()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 118, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23, %20
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @locomolcd_on(i32 %31)
  br label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @locomolcd_off(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  br label %39

39:                                               ; preds = %36, %10
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @machine_is_collie(...) #1

declare dso_local i64 @machine_is_poodle(...) #1

declare dso_local i32 @locomolcd_on(i32) #1

declare dso_local i32 @locomolcd_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
