; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_nonstatic_validate_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_nonstatic_validate_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.socket_data* }
%struct.socket_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@MEM_PROBE_LOW = common dso_local global i32 0, align 4
@probe_mem = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@MEM_PROBE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pcmcia_nonstatic_validate_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_nonstatic_validate_mem(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.socket_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 2
  %9 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  store %struct.socket_data* %9, %struct.socket_data** %4, align 8
  %10 = load i32, i32* @MEM_PROBE_LOW, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @probe_mem, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SOCKET_PRESENT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @MEM_PROBE_HIGH, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @validate_mem(%struct.pcmcia_socket* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %35 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.socket_data*, %struct.socket_data** %4, align 8
  %39 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %38, i32 0, i32 0
  %40 = icmp ne %struct.TYPE_2__* %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %41, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @validate_mem(%struct.pcmcia_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
