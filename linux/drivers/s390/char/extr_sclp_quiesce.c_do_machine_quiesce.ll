; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_quiesce.c_do_machine_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_quiesce.c_do_machine_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PSW_MASK_BASE = common dso_local global i32 0, align 4
@PSW_MASK_EA = common dso_local global i32 0, align 4
@PSW_MASK_BA = common dso_local global i32 0, align 4
@PSW_MASK_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_machine_quiesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_machine_quiesce() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 (...) @smp_send_stop()
  %3 = load i32, i32* @PSW_MASK_BASE, align 4
  %4 = load i32, i32* @PSW_MASK_EA, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PSW_MASK_BA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PSW_MASK_WAIT, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 4095, i32* %11, align 4
  %12 = bitcast %struct.TYPE_3__* %1 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i32 @__load_psw(i64 %13)
  ret void
}

declare dso_local i32 @smp_send_stop(...) #1

declare dso_local i32 @__load_psw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
