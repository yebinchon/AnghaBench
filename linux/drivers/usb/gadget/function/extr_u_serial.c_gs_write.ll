; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"gs_write: ttyGS%d (%p) writing %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @gs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_port*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.gs_port*, %struct.gs_port** %10, align 8
  store %struct.gs_port* %11, %struct.gs_port** %7, align 8
  %12 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %13 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_vdebug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.tty_struct* %15, i32 %16)
  %18 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %26 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %25, i32 0, i32 2
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @kfifo_in(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %32 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %37 = call i32 @gs_start_tx(%struct.gs_port* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.gs_port*, %struct.gs_port** %7, align 8
  %40 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @pr_vdebug(i8*, i32, %struct.tty_struct*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @gs_start_tx(%struct.gs_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
