; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"rs_throttle\00", align 1
@SER_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_throttle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.serial_state*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  store %struct.serial_state* %7, %struct.serial_state** %3, align 8
  %8 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @serial_paranoia_check(%struct.serial_state* %8, i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call i64 @I_IXOFF(%struct.tty_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = call i32 @STOP_CHAR(%struct.tty_struct* %21)
  %23 = call i32 @rs_send_xchar(%struct.tty_struct* %20, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = call i64 @C_CRTSCTS(%struct.tty_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @SER_RTS, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %32 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %39 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rtsdtr_ctrl(i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  br label %44

44:                                               ; preds = %35, %14
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @rs_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
