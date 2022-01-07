; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_udbg_opal_putc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_udbg_opal_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hvc_opal_boot_termno = common dso_local global i32 0, align 4
@hvc_opal_boot_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @udbg_opal_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbg_opal_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %5 = load i32, i32* @hvc_opal_boot_termno, align 4
  store i32 %5, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @udbg_opal_putc(i8 signext 13)
  br label %10

10:                                               ; preds = %9, %1
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvc_opal_boot_priv, i32 0, i32 0), align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %16
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @opal_put_chars(i32 %14, i8* %2, i32 1)
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @hvc_opal_hvsi_put_chars(i32 %17, i8* %2, i32 1)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %11, %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @opal_flush_console(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ true, %22 ], [ %29, %25 ]
  br i1 %31, label %11, label %32

32:                                               ; preds = %30
  ret void
}

declare dso_local i32 @opal_put_chars(i32, i8*, i32) #1

declare dso_local i32 @hvc_opal_hvsi_put_chars(i32, i8*, i32) #1

declare dso_local i32 @opal_flush_console(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
