; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_indirect_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16 }

@port_lock = common dso_local global i32 0, align 4
@sockets = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32, i16)* @indirect_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @indirect_read(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i16 %1, i16* %4, align 2
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @port_lock, i64 %8)
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 64
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, %11
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %4, align 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 2
  store i16 %21, i16* %5, align 2
  %22 = load i16, i16* %4, align 2
  %23 = load i16, i16* %5, align 2
  %24 = call i32 @outb(i16 zeroext %22, i16 zeroext %23)
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = add nsw i32 %26, 1
  %28 = trunc i32 %27 to i16
  %29 = call zeroext i8 @inb(i16 zeroext %28)
  store i8 %29, i8* %6, align 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @port_lock, i64 %30)
  %32 = load i8, i8* %6, align 1
  ret i8 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i16 zeroext, i16 zeroext) #1

declare dso_local zeroext i8 @inb(i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
