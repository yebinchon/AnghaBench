; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_authentication.c_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"gb_authenticate\00", align 1
@cap_class = common dso_local global i32 0, align 4
@cap_dev_num = common dso_local global i32 0, align 4
@NUM_MINORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @THIS_MODULE, align 4
  %4 = call i32 @class_create(i32 %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* @cap_class, align 4
  %5 = load i32, i32* @cap_class, align 4
  %6 = call i64 @IS_ERR(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @cap_class, align 4
  %10 = call i32 @PTR_ERR(i32 %9)
  store i32 %10, i32* %1, align 4
  br label %22

11:                                               ; preds = %0
  %12 = load i32, i32* @NUM_MINORS, align 4
  %13 = call i32 @alloc_chrdev_region(i32* @cap_dev_num, i32 0, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %18

17:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %22

18:                                               ; preds = %16
  %19 = load i32, i32* @cap_class, align 4
  %20 = call i32 @class_destroy(i32 %19)
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %17, %8
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i32 @class_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
