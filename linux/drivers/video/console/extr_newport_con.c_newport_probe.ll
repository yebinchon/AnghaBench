; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newport_regs = type { i32 }
%struct.gio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gio_device_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@npregs = common dso_local global %struct.newport_regs* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Newport\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@newport_con = common dso_local global i32 0, align 4
@MAX_NR_CONSOLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gio_device*, %struct.gio_device_id*)* @newport_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newport_probe(%struct.gio_device* %0, %struct.gio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gio_device*, align 8
  %5 = alloca %struct.gio_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gio_device* %0, %struct.gio_device** %4, align 8
  store %struct.gio_device_id* %1, %struct.gio_device_id** %5, align 8
  %8 = load %struct.gio_device*, %struct.gio_device** %4, align 8
  %9 = getelementptr inbounds %struct.gio_device, %struct.gio_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.newport_regs*, %struct.newport_regs** @npregs, align 8
  %18 = icmp ne %struct.newport_regs* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load %struct.gio_device*, %struct.gio_device** %4, align 8
  %24 = getelementptr inbounds %struct.gio_device, %struct.gio_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 983040
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @request_mem_region(i64 %29, i32 65536, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @ioremap(i64 %36, i32 4)
  %38 = inttoptr i64 %37 to %struct.newport_regs*
  store %struct.newport_regs* %38, %struct.newport_regs** @npregs, align 8
  %39 = call i32 (...) @console_lock()
  %40 = load i64, i64* @MAX_NR_CONSOLES, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i32 @do_take_over_console(i32* @newport_con, i32 0, i64 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = call i32 (...) @console_unlock()
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %32, %19, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @request_mem_region(i64, i32, i8*) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @do_take_over_console(i32*, i32, i64, i32) #1

declare dso_local i32 @console_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
