; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.fwtty_port* }
%struct.fwtty_port = type { i32, i32, i32 }
%struct.ktermios = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @fwtty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.fwtty_port*, %struct.fwtty_port** %8, align 8
  store %struct.fwtty_port* %9, %struct.fwtty_port** %5, align 8
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %11 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = call i32 @set_termios(%struct.fwtty_port* %13, %struct.tty_struct* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CBAUD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @TIOCM_DTR, align 4
  %27 = load i32, i32* @TIOCM_RTS, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %31 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %68

34:                                               ; preds = %18, %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CBAUD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %37
  %45 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %46 = call i64 @C_CRTSCTS(%struct.tty_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = call i32 @tty_throttled(%struct.tty_struct* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @TIOCM_DTR, align 4
  %54 = load i32, i32* @TIOCM_RTS, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %57 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @TIOCM_DTR, align 4
  %62 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %63 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %52
  br label %67

67:                                               ; preds = %66, %37, %34
  br label %68

68:                                               ; preds = %67, %25
  %69 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %70 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %69)
  %71 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %72 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %71, i32 0, i32 2
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CRTSCTS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %68
  %81 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %82 = call i64 @C_CRTSCTS(%struct.tty_struct* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %86 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %88 = call i32 @fwtty_restart_tx(%struct.fwtty_port* %87)
  br label %89

89:                                               ; preds = %84, %80
  br label %106

90:                                               ; preds = %68
  %91 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %92 = call i64 @C_CRTSCTS(%struct.tty_struct* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %96 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* @TIOCM_CTS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %94, %90
  br label %106

106:                                              ; preds = %105, %89
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_termios(%struct.fwtty_port*, %struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @tty_throttled(%struct.tty_struct*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwtty_restart_tx(%struct.fwtty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
