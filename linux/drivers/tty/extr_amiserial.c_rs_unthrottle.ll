; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"rs_unthrottle\00", align 1
@SER_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_unthrottle(%struct.tty_struct* %0) #0 {
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
  %12 = call i64 @serial_paranoia_check(%struct.serial_state* %8, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call i64 @I_IXOFF(%struct.tty_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %21 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %26 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %32

27:                                               ; preds = %19
  %28 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = call i32 @START_CHAR(%struct.tty_struct* %29)
  %31 = call i32 @rs_send_xchar(%struct.tty_struct* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = call i64 @C_CRTSCTS(%struct.tty_struct* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @SER_RTS, align 4
  %39 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %40 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = load %struct.serial_state*, %struct.serial_state** %3, align 8
  %47 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rtsdtr_ctrl(i32 %48)
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  br label %52

52:                                               ; preds = %43, %14
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @rs_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

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
