; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_update_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sifive.c___ssp_update_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_serial_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_serial_port*, i32)* @__ssp_update_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ssp_update_baud_rate(%struct.sifive_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sifive_serial_port*, align 8
  %4 = alloca i32, align 4
  store %struct.sifive_serial_port* %0, %struct.sifive_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %6 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %14 = getelementptr inbounds %struct.sifive_serial_port, %struct.sifive_serial_port* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sifive_serial_port*, %struct.sifive_serial_port** %3, align 8
  %16 = call i32 @__ssp_update_div(%struct.sifive_serial_port* %15)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @__ssp_update_div(%struct.sifive_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
