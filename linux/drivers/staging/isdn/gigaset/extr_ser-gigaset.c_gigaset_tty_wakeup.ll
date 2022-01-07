; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_tty_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_tty_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.cardstate = type { i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @gigaset_tty_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_tty_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.cardstate*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.cardstate* @cs_get(%struct.tty_struct* %4)
  store %struct.cardstate* %5, %struct.cardstate** %3, align 8
  %6 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %11 = icmp ne %struct.cardstate* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %15 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %14, i32 0, i32 0
  %16 = call i32 @tasklet_schedule(i32* %15)
  %17 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %18 = call i32 @cs_put(%struct.cardstate* %17)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.cardstate* @cs_get(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @cs_put(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
