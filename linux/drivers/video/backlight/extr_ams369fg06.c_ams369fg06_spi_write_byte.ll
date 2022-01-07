; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_spi_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_spi_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams369fg06 = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ams369fg06*, i32, i32)* @ams369fg06_spi_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams369fg06_spi_write_byte(%struct.ams369fg06* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ams369fg06*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca %struct.spi_message, align 4
  %9 = alloca %struct.spi_transfer, align 8
  store %struct.ams369fg06* %0, %struct.ams369fg06** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32 2, i32* %10, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 8
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = call i32 @spi_message_init(%struct.spi_message* %8)
  %19 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %20 = load %struct.ams369fg06*, %struct.ams369fg06** %4, align 8
  %21 = getelementptr inbounds %struct.ams369fg06, %struct.ams369fg06* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spi_sync(i32 %22, %struct.spi_message* %8)
  ret i32 %23
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
