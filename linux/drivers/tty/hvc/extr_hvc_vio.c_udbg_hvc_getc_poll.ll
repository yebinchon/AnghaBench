; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_getc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_getc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hvterm_privs = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udbg_hvc_getc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udbg_hvc_getc_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  %4 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hvterm_privs, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %4, i64 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %26

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hvterm_privs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 129, label %17
  ]

15:                                               ; preds = %9
  %16 = call i32 @hvterm_raw_get_chars(i32 0, i8* %3, i32 1)
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %9
  %18 = call i32 @hvterm_hvsi_get_chars(i32 0, i8* %3, i32 1)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %17, %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 -1, i32* %1, align 4
  br label %26

23:                                               ; preds = %19
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %23, %22, %8
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @hvterm_raw_get_chars(i32, i8*, i32) #1

declare dso_local i32 @hvterm_hvsi_get_chars(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
