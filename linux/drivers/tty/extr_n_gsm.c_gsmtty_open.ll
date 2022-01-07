; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gsm_dlci* }
%struct.gsm_dlci = type { i64, %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @gsmtty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmtty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gsm_dlci*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.gsm_dlci*, %struct.gsm_dlci** %8, align 8
  store %struct.gsm_dlci* %9, %struct.gsm_dlci** %5, align 8
  %10 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %11 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %10, i32 0, i32 1
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %13 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = call i32 @tty_port_tty_set(%struct.tty_port* %16, %struct.tty_struct* %17)
  %19 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %20 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %22 = call i32 @tty_port_set_initialized(%struct.tty_port* %21, i32 1)
  %23 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %24 = call i32 @gsm_dlci_begin_open(%struct.gsm_dlci* %23)
  %25 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = call i32 @tty_port_block_til_ready(%struct.tty_port* %25, %struct.tty_struct* %26, %struct.file* %27)
  ret i32 %28
}

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.tty_port*, i32) #1

declare dso_local i32 @gsm_dlci_begin_open(%struct.gsm_dlci*) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.tty_port*, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
