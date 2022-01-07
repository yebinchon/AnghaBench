; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_do_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_do_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.fwtty_port = type { i32 }
%struct.tty_struct = type { i32 }

@hangup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fwtty_do_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_do_hangup(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = load i32, i32* @hangup, align 4
  %7 = call %struct.fwtty_port* @to_port(%struct.work_struct* %5, i32 %6)
  store %struct.fwtty_port* %7, %struct.fwtty_port** %3, align 8
  %8 = call i32 @msecs_to_jiffies(i32 50)
  %9 = call i32 @schedule_timeout_uninterruptible(i32 %8)
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %11 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %10, i32 0, i32 0
  %12 = call %struct.tty_struct* @tty_port_tty_get(i32* %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = icmp ne %struct.tty_struct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = call i32 @tty_vhangup(%struct.tty_struct* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = call i32 @tty_kref_put(%struct.tty_struct* %19)
  ret void
}

declare dso_local %struct.fwtty_port* @to_port(%struct.work_struct*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
