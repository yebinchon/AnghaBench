; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha1542.c_aha1542_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDF = common dso_local global i32 0, align 4
@INTRMASK = common dso_local global i32 0, align 4
@HACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @aha1542_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha1542_out(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %7, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @STATUS(i32 %13)
  %15 = load i32, i32* @CDF, align 4
  %16 = load i32, i32* @CDF, align 4
  %17 = call i32 @wait_mask(i32 %14, i32 %15, i32 0, i32 %16, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DATA(i32 %24)
  %26 = call i32 @outb(i32 %23, i32 %25)
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @INTRFLAGS(i32 %28)
  %30 = load i32, i32* @INTRMASK, align 4
  %31 = load i32, i32* @HACC, align 4
  %32 = call i32 @wait_mask(i32 %29, i32 %30, i32 %31, i32 0, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @wait_mask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @STATUS(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @DATA(i32) #1

declare dso_local i32 @INTRFLAGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
