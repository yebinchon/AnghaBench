; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_putc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_udbg_hvc_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@hvterm_privs = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @udbg_hvc_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udbg_hvc_putc(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  store i8 %0, i8* %2, align 1
  store i32 -1, i32* %3, align 4
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hvterm_privs, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @udbg_hvc_putc(i8 signext 13)
  br label %15

15:                                               ; preds = %14, %10
  br label %16

16:                                               ; preds = %30, %15
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hvterm_privs, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %29 [
    i32 128, label %22
    i32 129, label %27
  ]

22:                                               ; preds = %16
  %23 = load i8, i8* %2, align 1
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  store i8 %23, i8* %24, align 16
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %26 = call i32 @hvterm_raw_put_chars(i32 0, i8* %25, i32 1)
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %16
  %28 = call i32 @hvterm_hvsi_put_chars(i32 0, i8* %2, i32 1)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %27, %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %16, label %33

33:                                               ; preds = %9, %30
  ret void
}

declare dso_local i32 @hvterm_raw_put_chars(i32, i8*, i32) #1

declare dso_local i32 @hvterm_hvsi_put_chars(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
