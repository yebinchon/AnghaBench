; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_get_port_by_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_get_port_by_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.tty_struct = type { i64 }
%struct.nozomi = type { %struct.port* }

@MAX_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.port* (%struct.tty_struct*)* @get_port_by_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.port* @get_port_by_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.nozomi*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.nozomi* @get_dc_by_tty(%struct.tty_struct* %4)
  store %struct.nozomi* %5, %struct.nozomi** %3, align 8
  %6 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %7 = icmp ne %struct.nozomi* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.nozomi*, %struct.nozomi** %3, align 8
  %10 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %9, i32 0, i32 0
  %11 = load %struct.port*, %struct.port** %10, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_PORT, align 8
  %16 = urem i64 %14, %15
  %17 = getelementptr inbounds %struct.port, %struct.port* %11, i64 %16
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %8
  %20 = phi %struct.port* [ %17, %8 ], [ null, %18 ]
  ret %struct.port* %20
}

declare dso_local %struct.nozomi* @get_dc_by_tty(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
