; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_3590.c_tape_3590_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"tape_3590\00", align 1
@TAPE_DBF_AREA = common dso_local global i32 0, align 4
@debug_sprintf_view = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"3590 init\0A\00", align 1
@tape_3590_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tape_3590_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"3590 init failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"3590 registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tape_3590_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @debug_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2, i32 2, i32 32)
  store i32 %3, i32* @TAPE_DBF_AREA, align 4
  %4 = load i32, i32* @TAPE_DBF_AREA, align 4
  %5 = call i32 @debug_register_view(i32 %4, i32* @debug_sprintf_view)
  %6 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32 %7, i32* @tape_3590_wq, align 4
  %8 = load i32, i32* @tape_3590_wq, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %25

13:                                               ; preds = %0
  %14 = call i32 @ccw_driver_register(i32* @tape_3590_driver)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @tape_3590_wq, align 4
  %19 = call i32 @destroy_workqueue(i32 %18)
  %20 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %23

21:                                               ; preds = %13
  %22 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %10
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_register_view(i32, i32*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @ccw_driver_register(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
