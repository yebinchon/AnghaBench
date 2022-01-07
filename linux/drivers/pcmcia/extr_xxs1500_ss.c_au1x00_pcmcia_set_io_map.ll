; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_au1x00_pcmcia_set_io_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_xxs1500_ss.c_au1x00_pcmcia_set_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.pccard_io_map = type { i64, i64 }
%struct.xxs1500_pcmcia_sock = type { i64 }

@IO_MAP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.pccard_io_map*)* @au1x00_pcmcia_set_io_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x00_pcmcia_set_io_map(%struct.pcmcia_socket* %0, %struct.pccard_io_map* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.pccard_io_map*, align 8
  %5 = alloca %struct.xxs1500_pcmcia_sock*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store %struct.pccard_io_map* %1, %struct.pccard_io_map** %4, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = call %struct.xxs1500_pcmcia_sock* @to_xxs_socket(%struct.pcmcia_socket* %6)
  store %struct.xxs1500_pcmcia_sock* %7, %struct.xxs1500_pcmcia_sock** %5, align 8
  %8 = load %struct.xxs1500_pcmcia_sock*, %struct.xxs1500_pcmcia_sock** %5, align 8
  %9 = getelementptr inbounds %struct.xxs1500_pcmcia_sock, %struct.xxs1500_pcmcia_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pccard_io_map*, %struct.pccard_io_map** %4, align 8
  %12 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.pccard_io_map*, %struct.pccard_io_map** %4, align 8
  %14 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IO_MAP_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.pccard_io_map*, %struct.pccard_io_map** %4, align 8
  %19 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  ret i32 0
}

declare dso_local %struct.xxs1500_pcmcia_sock* @to_xxs_socket(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
