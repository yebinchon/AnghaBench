; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_indirect_setbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_indirect_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }

@port_lock = common dso_local global i32 0, align 4
@sockets = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8)* @indirect_setbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @indirect_setbit(i32 %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @port_lock, i64 %10)
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 64
  %16 = add nsw i32 %13, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 2
  store i16 %23, i16* %7, align 2
  %24 = load i16, i16* %5, align 2
  %25 = trunc i16 %24 to i8
  %26 = load i16, i16* %7, align 2
  %27 = call i32 @outb(i8 zeroext %25, i16 zeroext %26)
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  %31 = trunc i32 %30 to i16
  %32 = call zeroext i8 @inb(i16 zeroext %31)
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  %39 = load i16, i16* %5, align 2
  %40 = trunc i16 %39 to i8
  %41 = load i16, i16* %7, align 2
  %42 = call i32 @outb(i8 zeroext %40, i16 zeroext %41)
  %43 = load i8, i8* %8, align 1
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = trunc i32 %46 to i16
  %48 = call i32 @outb(i8 zeroext %43, i16 zeroext %47)
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @port_lock, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i16 zeroext) #1

declare dso_local zeroext i8 @inb(i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
