; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_free_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gserial_free_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.gs_port* }
%struct.gs_port = type { i32 }

@ports = common dso_local global %struct.TYPE_2__* null, align 8
@gs_tty_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gserial_free_line(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.gs_port*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %5 = load i8, i8* %2, align 1
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.gs_port*, %struct.gs_port** %14, align 8
  %16 = icmp ne %struct.gs_port* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %30 = load i8, i8* %2, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.gs_port*, %struct.gs_port** %33, align 8
  store %struct.gs_port* %34, %struct.gs_port** %3, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %36 = load i8, i8* %2, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.gs_port* null, %struct.gs_port** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ports, align 8
  %41 = load i8, i8* %2, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.gs_port*, %struct.gs_port** %3, align 8
  %47 = call i32 @gserial_free_port(%struct.gs_port* %46)
  %48 = load i32, i32* @gs_tty_driver, align 4
  %49 = load i8, i8* %2, align 1
  %50 = call i32 @tty_unregister_device(i32 %48, i8 zeroext %49)
  %51 = call i32 (...) @gserial_console_exit()
  br label %52

52:                                               ; preds = %28, %21
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gserial_free_port(%struct.gs_port*) #1

declare dso_local i32 @tty_unregister_device(i32, i8 zeroext) #1

declare dso_local i32 @gserial_console_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
