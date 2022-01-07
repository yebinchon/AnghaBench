; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.vcc_port = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"VCC: break_ctl: Invalid TTY handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"VCC: break_ctl: Failed to find VCC port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VCC_CTL_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @vcc_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_break_ctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcc_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = icmp ne %struct.tty_struct* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.vcc_port* @vcc_get_ne(i32 %21)
  store %struct.vcc_port* %22, %struct.vcc_port** %6, align 8
  %23 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %24 = icmp ne %struct.vcc_port* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %38 = call i32 @vcc_put(%struct.vcc_port* %37, i32 0)
  store i32 0, i32* %3, align 4
  br label %58

39:                                               ; preds = %33
  %40 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %41 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %40, i32 0, i32 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %45 = load i32, i32* @VCC_CTL_BREAK, align 4
  %46 = call i64 @vcc_send_ctl(%struct.vcc_port* %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %50 = call i32 @vcc_kick_tx(%struct.vcc_port* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %53 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %52, i32 0, i32 0
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.vcc_port*, %struct.vcc_port** %6, align 8
  %57 = call i32 @vcc_put(%struct.vcc_port* %56, i32 0)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %36, %29, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.vcc_port* @vcc_get_ne(i32) #1

declare dso_local i32 @vcc_put(%struct.vcc_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vcc_send_ctl(%struct.vcc_port*, i32) #1

declare dso_local i32 @vcc_kick_tx(%struct.vcc_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
