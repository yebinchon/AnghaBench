; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_ioctl_on_close_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc_sch.c_chsc_ioctl_on_close_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@on_close_mutex = common dso_local global i32 0, align 4
@on_close_chsc_area = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@on_close_request = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ocrret:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @chsc_ioctl_on_close_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_ioctl_on_close_remove() #0 {
  %1 = alloca [13 x i8], align 1
  %2 = alloca i32, align 4
  %3 = call i32 @mutex_lock(i32* @on_close_mutex)
  %4 = load i32*, i32** @on_close_chsc_area, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %15

9:                                                ; preds = %0
  %10 = load i32*, i32** @on_close_chsc_area, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = call i32 @free_page(i64 %11)
  store i32* null, i32** @on_close_chsc_area, align 8
  %13 = load i32*, i32** @on_close_request, align 8
  %14 = call i32 @kfree(i32* %13)
  store i32* null, i32** @on_close_request, align 8
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %9, %6
  %16 = call i32 @mutex_unlock(i32* @on_close_mutex)
  %17 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @snprintf(i8* %17, i32 13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %1, i64 0, i64 0
  %21 = call i32 @CHSC_LOG(i32 0, i8* %20)
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @CHSC_LOG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
