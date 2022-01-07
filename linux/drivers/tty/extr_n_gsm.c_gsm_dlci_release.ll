; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { i32, i32, i32 }
%struct.tty_struct = type { i32 }

@DLCI_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*)* @gsm_dlci_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_dlci_release(%struct.gsm_dlci* %0) #0 {
  %2 = alloca %struct.gsm_dlci*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %2, align 8
  %4 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %5 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %4, i32 0, i32 1
  %6 = call %struct.tty_struct* @tty_port_tty_get(i32* %5)
  store %struct.tty_struct* %6, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = icmp ne %struct.tty_struct* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %11 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %14 = call i32 @gsm_destroy_network(%struct.gsm_dlci* %13)
  %15 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %16 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = call i32 @tty_hangup(%struct.tty_struct* %18)
  %20 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %21 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %20, i32 0, i32 1
  %22 = call i32 @tty_port_tty_set(i32* %21, i32* null)
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = call i32 @tty_kref_put(%struct.tty_struct* %23)
  br label %25

25:                                               ; preds = %9, %1
  %26 = load i32, i32* @DLCI_CLOSED, align 4
  %27 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %28 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.gsm_dlci*, %struct.gsm_dlci** %2, align 8
  %30 = call i32 @dlci_put(%struct.gsm_dlci* %29)
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gsm_destroy_network(%struct.gsm_dlci*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_tty_set(i32*, i32*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @dlci_put(%struct.gsm_dlci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
