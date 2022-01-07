; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_console_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_console_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i64 }

@MAX_NR_HVC_CONSOLES = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@vtermnos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.console*, i8*)* @hvc_console_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_console_setup(%struct.console* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.console*, %struct.console** %4, align 8
  %7 = getelementptr inbounds %struct.console, %struct.console* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.console*, %struct.console** %4, align 8
  %12 = getelementptr inbounds %struct.console, %struct.console* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_NR_HVC_CONSOLES, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %10
  %20 = load i32*, i32** @vtermnos, align 8
  %21 = load %struct.console*, %struct.console** %4, align 8
  %22 = getelementptr inbounds %struct.console, %struct.console* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
