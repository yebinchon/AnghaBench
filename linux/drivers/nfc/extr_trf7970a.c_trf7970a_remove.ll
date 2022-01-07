; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.trf7970a = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @trf7970a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.trf7970a*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.trf7970a* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.trf7970a* %5, %struct.trf7970a** %3, align 8
  %6 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %7 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %10 = call i32 @trf7970a_shutdown(%struct.trf7970a* %9)
  %11 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %12 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %15 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nfc_digital_unregister_device(i32 %16)
  %18 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %19 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nfc_digital_free_device(i32 %20)
  %22 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %23 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_disable(i32 %24)
  %26 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %27 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %26, i32 0, i32 0
  %28 = call i32 @mutex_destroy(i32* %27)
  ret i32 0
}

declare dso_local %struct.trf7970a* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trf7970a_shutdown(%struct.trf7970a*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfc_digital_unregister_device(i32) #1

declare dso_local i32 @nfc_digital_free_device(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
