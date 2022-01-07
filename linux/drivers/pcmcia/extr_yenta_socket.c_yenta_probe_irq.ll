; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_probe_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }

@CB_SOCKET_EVENT = common dso_local global i32 0, align 4
@CB_SOCKET_MASK = common dso_local global i32 0, align 4
@CB_CSTSMASK = common dso_local global i32 0, align 4
@I365_CSCINT = common dso_local global i32 0, align 4
@I365_CSC_STSCHG = common dso_local global i32 0, align 4
@CB_SOCKET_FORCE = common dso_local global i32 0, align 4
@CB_FCARDSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yenta_socket*, i32)* @yenta_probe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_probe_irq(%struct.yenta_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.yenta_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %10 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %11 = call i32 @cb_writel(%struct.yenta_socket* %9, i32 %10, i32 -1)
  %12 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %13 = load i32, i32* @CB_SOCKET_MASK, align 4
  %14 = load i32, i32* @CB_CSTSMASK, align 4
  %15 = call i32 @cb_writel(%struct.yenta_socket* %12, i32 %13, i32 %14)
  %16 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %17 = load i32, i32* @I365_CSCINT, align 4
  %18 = call i32 @exca_readb(%struct.yenta_socket* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %20 = load i32, i32* @I365_CSCINT, align 4
  %21 = call i32 @exca_writeb(%struct.yenta_socket* %19, i32 %20, i32 0)
  %22 = call i32 (...) @probe_irq_on()
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %22, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %53, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %30, %32
  %34 = and i64 %33, 1
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %39 = load i32, i32* @I365_CSCINT, align 4
  %40 = load i32, i32* @I365_CSC_STSCHG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 4
  %43 = or i32 %40, %42
  %44 = call i32 @exca_writeb(%struct.yenta_socket* %38, i32 %39, i32 %43)
  %45 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %46 = load i32, i32* @CB_SOCKET_FORCE, align 4
  %47 = load i32, i32* @CB_FCARDSTS, align 4
  %48 = call i32 @cb_writel(%struct.yenta_socket* %45, i32 %46, i32 %47)
  %49 = call i32 @udelay(i32 100)
  %50 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %51 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %52 = call i32 @cb_writel(%struct.yenta_socket* %50, i32 %51, i32 -1)
  br label %53

53:                                               ; preds = %37, %36
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %58 = load i32, i32* @CB_SOCKET_MASK, align 4
  %59 = call i32 @cb_writel(%struct.yenta_socket* %57, i32 %58, i32 0)
  %60 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %61 = load i32, i32* @I365_CSCINT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @exca_writeb(%struct.yenta_socket* %60, i32 %61, i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @probe_irq_mask(i64 %64)
  %66 = and i32 %65, 65535
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @exca_readb(%struct.yenta_socket*, i32) #1

declare dso_local i32 @exca_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @probe_irq_on(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @probe_irq_mask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
