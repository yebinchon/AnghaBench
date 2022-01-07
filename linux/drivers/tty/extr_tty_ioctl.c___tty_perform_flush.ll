; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c___tty_perform_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c___tty_perform_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty_ldisc* }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i64)* @__tty_perform_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tty_perform_flush(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  store %struct.tty_ldisc* %9, %struct.tty_ldisc** %6, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %56 [
    i64 130, label %11
    i64 129, label %32
    i64 128, label %53
  ]

11:                                               ; preds = %2
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %13 = icmp ne %struct.tty_ldisc* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %16 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %18, align 8
  %20 = icmp ne i32 (%struct.tty_struct*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %23 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %25, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 %26(%struct.tty_struct* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = call i32 @tty_unthrottle(%struct.tty_struct* %29)
  br label %31

31:                                               ; preds = %21, %14, %11
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %34 = icmp ne %struct.tty_ldisc* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %37 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %39, align 8
  %41 = icmp ne i32 (%struct.tty_struct*)* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %44 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %46, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = call i32 %47(%struct.tty_struct* %48)
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = call i32 @tty_unthrottle(%struct.tty_struct* %50)
  br label %52

52:                                               ; preds = %42, %35, %32
  br label %53

53:                                               ; preds = %2, %52
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %54)
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %53, %31
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @tty_unthrottle(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
