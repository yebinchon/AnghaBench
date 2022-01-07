; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_ipw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipw_tty*, i32 }
%struct.ipw_tty = type { i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, %struct.tty_struct* }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TTYTYPE_MODEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @ipw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ipw_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.ipw_tty* @get_tty(i32 %9)
  store %struct.ipw_tty* %10, %struct.ipw_tty** %6, align 8
  %11 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %12 = icmp ne %struct.ipw_tty* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %18 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %21 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %27 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %30 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %36 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store %struct.tty_struct* %34, %struct.tty_struct** %37, align 8
  %38 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  store %struct.ipw_tty* %38, %struct.ipw_tty** %40, align 8
  %41 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %42 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %45 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TTYTYPE_MODEM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %51 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ipwireless_ppp_open(i32 %52)
  br label %54

54:                                               ; preds = %49, %28
  %55 = load %struct.ipw_tty*, %struct.ipw_tty** %6, align 8
  %56 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ipw_tty* @get_tty(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipwireless_ppp_open(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
