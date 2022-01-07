; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_getc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hvterm_privs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_hvc_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_hvc_getc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32*, i32** @hvterm_privs, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %26

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %25, %9
  %11 = call i32 (...) @udbg_hvc_getc_poll()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  store volatile i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %19, %14
  %16 = load volatile i64, i64* %3, align 8
  %17 = icmp ult i64 %16, 2000000
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = load volatile i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store volatile i64 %21, i64* %3, align 8
  br label %15

22:                                               ; preds = %15
  br label %25

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %22
  br label %10

26:                                               ; preds = %23, %8
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @udbg_hvc_getc_poll(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
