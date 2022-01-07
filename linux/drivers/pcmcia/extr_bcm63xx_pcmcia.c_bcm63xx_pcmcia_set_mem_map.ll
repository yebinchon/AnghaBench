; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_set_mem_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_pcmcia_set_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.bcm63xx_pcmcia_socket* }
%struct.bcm63xx_pcmcia_socket = type { %struct.resource*, %struct.resource* }
%struct.resource = type { i64 }
%struct.pccard_mem_map = type { i32, i64, i64 }

@MAP_ATTRIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.pccard_mem_map*)* @bcm63xx_pcmcia_set_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_pcmcia_set_mem_map(%struct.pcmcia_socket* %0, %struct.pccard_mem_map* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.pccard_mem_map*, align 8
  %5 = alloca %struct.bcm63xx_pcmcia_socket*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store %struct.pccard_mem_map* %1, %struct.pccard_mem_map** %4, align 8
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 0
  %9 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %8, align 8
  store %struct.bcm63xx_pcmcia_socket* %9, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %10 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %4, align 8
  %11 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MAP_ATTRIB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %18 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %17, i32 0, i32 1
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %19, %struct.resource** %6, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %5, align 8
  %22 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %22, align 8
  store %struct.resource* %23, %struct.resource** %6, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %4, align 8
  %29 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.pccard_mem_map*, %struct.pccard_mem_map** %4, align 8
  %33 = getelementptr inbounds %struct.pccard_mem_map, %struct.pccard_mem_map* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
