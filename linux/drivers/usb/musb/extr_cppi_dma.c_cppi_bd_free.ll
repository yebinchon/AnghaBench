; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_bd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_bd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi_channel = type { %struct.cppi_descriptor* }
%struct.cppi_descriptor = type { %struct.cppi_descriptor* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi_channel*, %struct.cppi_descriptor*)* @cppi_bd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi_bd_free(%struct.cppi_channel* %0, %struct.cppi_descriptor* %1) #0 {
  %3 = alloca %struct.cppi_channel*, align 8
  %4 = alloca %struct.cppi_descriptor*, align 8
  store %struct.cppi_channel* %0, %struct.cppi_channel** %3, align 8
  store %struct.cppi_descriptor* %1, %struct.cppi_descriptor** %4, align 8
  %5 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %6 = icmp ne %struct.cppi_descriptor* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load %struct.cppi_channel*, %struct.cppi_channel** %3, align 8
  %10 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %9, i32 0, i32 0
  %11 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %10, align 8
  %12 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %12, i32 0, i32 0
  store %struct.cppi_descriptor* %11, %struct.cppi_descriptor** %13, align 8
  %14 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %15 = load %struct.cppi_channel*, %struct.cppi_channel** %3, align 8
  %16 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %15, i32 0, i32 0
  store %struct.cppi_descriptor* %14, %struct.cppi_descriptor** %16, align 8
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
