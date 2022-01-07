; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_pccard_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_pccard_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrc4171_socket = type { i32, i8*, i8* }
%struct.pcmcia_socket = type { i32, i32, i32, i32, i64 }

@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@vrc4171_irq = common dso_local global i32 0, align 4
@vrc4171_sockets = common dso_local global %struct.vrc4171_socket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pccard_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_init(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca %struct.vrc4171_socket*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %5 = load i32, i32* @SS_CAP_PCCARD, align 4
  %6 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 1
  store i32 4096, i32* %15, align 4
  %16 = load i32, i32* @vrc4171_irq, align 4
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %20 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** @vrc4171_sockets, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %22, i64 %24
  store %struct.vrc4171_socket* %25, %struct.vrc4171_socket** %3, align 8
  %26 = call i8* (...) @search_nonuse_irq()
  %27 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %3, align 8
  %28 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = call i8* (...) @search_nonuse_irq()
  %30 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %3, align 8
  %31 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vrc4171_socket*, %struct.vrc4171_socket** %3, align 8
  %33 = getelementptr inbounds %struct.vrc4171_socket, %struct.vrc4171_socket* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_init(i32* %33)
  ret i32 0
}

declare dso_local i8* @search_nonuse_irq(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
