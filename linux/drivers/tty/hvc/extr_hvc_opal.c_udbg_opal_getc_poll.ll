; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_udbg_opal_getc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_opal.c_udbg_opal_getc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hvc_opal_boot_termno = common dso_local global i32 0, align 4
@hvc_opal_boot_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_opal_getc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_opal_getc_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = load i32, i32* @hvc_opal_boot_termno, align 4
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hvc_opal_boot_priv, i32 0, i32 0), align 4
  switch i32 %6, label %13 [
    i32 128, label %7
    i32 129, label %10
  ]

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @opal_get_chars(i32 %8, i8* %4, i32 1)
  store i32 %9, i32* %3, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @hvc_opal_hvsi_get_chars(i32 %11, i8* %4, i32 1)
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %0, %10, %7
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %20

17:                                               ; preds = %13
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %16
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @opal_get_chars(i32, i8*, i32) #1

declare dso_local i32 @hvc_opal_hvsi_get_chars(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
