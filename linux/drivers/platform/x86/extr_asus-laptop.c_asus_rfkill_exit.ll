; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_laptop*)* @asus_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_rfkill_exit(%struct.asus_laptop* %0) #0 {
  %2 = alloca %struct.asus_laptop*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %2, align 8
  %3 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %4 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %3, i32 0, i32 3
  %5 = call i32 @asus_rfkill_terminate(i32* %4)
  %6 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %7 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %6, i32 0, i32 2
  %8 = call i32 @asus_rfkill_terminate(i32* %7)
  %9 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %10 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %9, i32 0, i32 1
  %11 = call i32 @asus_rfkill_terminate(i32* %10)
  %12 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %13 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %12, i32 0, i32 0
  %14 = call i32 @asus_rfkill_terminate(i32* %13)
  ret void
}

declare dso_local i32 @asus_rfkill_terminate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
