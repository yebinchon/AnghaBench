; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_throttle_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_throttle_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32, i32 }
%struct.tty_struct = type { i32 }

@OOB_RX_THROTTLE = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_port*)* @fwtty_throttle_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_throttle_port(%struct.fwtty_port* %0) #0 {
  %2 = alloca %struct.fwtty_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %2, align 8
  %5 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %6 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %5, i32 0, i32 2
  %7 = call %struct.tty_struct* @tty_port_tty_get(i32* %6)
  store %struct.tty_struct* %7, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = icmp ne %struct.tty_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %13 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %16 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @OOB_RX_THROTTLE, align 4
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %20 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = call i64 @C_CRTSCTS(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %11
  %27 = load i32, i32* @TIOCM_RTS, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %30 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %11
  %34 = load i32, i32* %4, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @OOB_RX_THROTTLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %41 = call i32 @__fwtty_write_port_status(%struct.fwtty_port* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %44 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = call i32 @tty_kref_put(%struct.tty_struct* %46)
  br label %48

48:                                               ; preds = %42, %10
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @__fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
