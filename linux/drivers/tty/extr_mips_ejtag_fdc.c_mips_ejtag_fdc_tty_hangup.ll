; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mips_ejtag_fdc.c_mips_ejtag_fdc_tty_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.mips_ejtag_fdc_tty_port* }
%struct.mips_ejtag_fdc_tty_port = type { i32, i32, i64, i64, i64, %struct.mips_ejtag_fdc_tty* }
%struct.mips_ejtag_fdc_tty = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mips_ejtag_fdc_tty_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_ejtag_fdc_tty_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mips_ejtag_fdc_tty_port*, align 8
  %4 = alloca %struct.mips_ejtag_fdc_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %6, align 8
  store %struct.mips_ejtag_fdc_tty_port* %7, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %8 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %9 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %8, i32 0, i32 5
  %10 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %9, align 8
  store %struct.mips_ejtag_fdc_tty* %10, %struct.mips_ejtag_fdc_tty** %4, align 8
  %11 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %12 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %15 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %20 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mips_ejtag_fdc_tty*, %struct.mips_ejtag_fdc_tty** %4, align 8
  %23 = getelementptr inbounds %struct.mips_ejtag_fdc_tty, %struct.mips_ejtag_fdc_tty* %22, i32 0, i32 0
  %24 = call i32 @atomic_sub(i64 %21, i32* %23)
  %25 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %26 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %28 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %30 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %32 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %31, i32 0, i32 1
  %33 = call i32 @complete(i32* %32)
  br label %34

34:                                               ; preds = %18, %1
  %35 = load %struct.mips_ejtag_fdc_tty_port*, %struct.mips_ejtag_fdc_tty_port** %3, align 8
  %36 = getelementptr inbounds %struct.mips_ejtag_fdc_tty_port, %struct.mips_ejtag_fdc_tty_port* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @tty_port_hangup(i32 %40)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_port_hangup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
