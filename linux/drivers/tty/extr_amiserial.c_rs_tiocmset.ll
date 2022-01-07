; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_rs_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"rs_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @rs_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.serial_state*, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.serial_state*, %struct.serial_state** %11, align 8
  store %struct.serial_state* %12, %struct.serial_state** %8, align 8
  %13 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @serial_paranoia_check(%struct.serial_state* %13, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %84

22:                                               ; preds = %3
  %23 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %24 = call i64 @tty_io_error(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @TIOCM_RTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @SER_RTS, align 4
  %38 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %39 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TIOCM_DTR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @SER_DTR, align 4
  %49 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %50 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TIOCM_RTS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @SER_RTS, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %62 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @TIOCM_DTR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @SER_DTR, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %74 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.serial_state*, %struct.serial_state** %8, align 8
  %79 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @rtsdtr_ctrl(i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @local_irq_restore(i64 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %77, %26, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @serial_paranoia_check(%struct.serial_state*, i32, i8*) #1

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rtsdtr_ctrl(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
