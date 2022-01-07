; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_userimask.c_register_intc_userimask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_userimask.c_register_intc_userimask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uimask = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"userimask support registered for levels 0 -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_intc_userimask(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @uimask, align 4
  %5 = call i64 @unlikely(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @SZ_4K, align 4
  %13 = call i32 @ioremap_nocache(i64 %11, i32 %12)
  store i32 %13, i32* @uimask, align 4
  %14 = load i32, i32* @uimask, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %10
  %24 = call i64 (...) @intc_get_dfl_prio_level()
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i64 @intc_get_dfl_prio_level(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
