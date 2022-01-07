; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_indirect_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pd6729.c_indirect_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd6729_socket = type { i32, i64 }

@port_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pd6729_socket*, i16, i16)* @indirect_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indirect_write16(%struct.pd6729_socket* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.pd6729_socket*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.pd6729_socket* %0, %struct.pd6729_socket** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @port_lock, i64 %10)
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %15 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 64
  %18 = add nsw i32 %13, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %5, align 2
  %20 = load %struct.pd6729_socket*, %struct.pd6729_socket** %4, align 8
  %21 = getelementptr inbounds %struct.pd6729_socket, %struct.pd6729_socket* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i16, i16* %5, align 2
  %24 = trunc i16 %23 to i8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @outb(i8 zeroext %24, i64 %25)
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  %31 = load i8, i8* %8, align 1
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @outb(i8 zeroext %31, i64 %33)
  %35 = load i16, i16* %5, align 2
  %36 = add i16 %35, 1
  store i16 %36, i16* %5, align 2
  %37 = load i16, i16* %5, align 2
  %38 = trunc i16 %37 to i8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @outb(i8 zeroext %38, i64 %39)
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i32
  %43 = ashr i32 %42, 8
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  %45 = load i8, i8* %8, align 1
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  %48 = call i32 @outb(i8 zeroext %45, i64 %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @port_lock, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
