; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty3270* }
%struct.tty3270 = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @tty3270_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.tty3270*, align 8
  %6 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.tty3270*, %struct.tty3270** %8, align 8
  store %struct.tty3270* %9, %struct.tty3270** %5, align 8
  %10 = load %struct.tty3270*, %struct.tty3270** %5, align 8
  %11 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %6, align 8
  %12 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %13 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = call i32 @tty_port_tty_set(%struct.tty_port* %16, %struct.tty_struct* %17)
  ret i32 0
}

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
