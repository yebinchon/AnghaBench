; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_indirect_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd6729_socket = type { i32, i64 }

@port_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.pd6729_socket*, i16)* @indirect_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @indirect_read(%struct.pd6729_socket* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.pd6729_socket*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.pd6729_socket* %0, %struct.pd6729_socket** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @port_lock, i64 %8)
  %10 = load %struct.pd6729_socket*, %struct.pd6729_socket** %3, align 8
  %11 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 64
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %15, %13
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %4, align 2
  %18 = load %struct.pd6729_socket*, %struct.pd6729_socket** %3, align 8
  %19 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i16, i16* %4, align 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @outb(i16 zeroext %21, i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = call zeroext i8 @inb(i64 %25)
  store i8 %26, i8* %6, align 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @port_lock, i64 %27)
  %29 = load i8, i8* %6, align 1
  ret i8 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
