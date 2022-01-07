; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-pspi.c_npcm_pspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.npcm_pspi = type { i32 }

@NPCM_PSPI_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @npcm_pspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_pspi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.npcm_pspi*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = call %struct.npcm_pspi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.npcm_pspi* %11, %struct.npcm_pspi** %8, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %14 = call i32 @npcm_pspi_setup_transfer(%struct.spi_device* %12, %struct.spi_transfer* %13)
  %15 = load %struct.npcm_pspi*, %struct.npcm_pspi** %8, align 8
  %16 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %15, i32 0, i32 0
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load %struct.npcm_pspi*, %struct.npcm_pspi** %8, align 8
  %19 = call i32 @npcm_pspi_enable(%struct.npcm_pspi* %18)
  %20 = load %struct.npcm_pspi*, %struct.npcm_pspi** %8, align 8
  %21 = getelementptr inbounds %struct.npcm_pspi, %struct.npcm_pspi* %20, i32 0, i32 0
  %22 = load i32, i32* @NPCM_PSPI_TIMEOUT_MS, align 4
  %23 = call i32 @msecs_to_jiffies(i32 %22)
  %24 = call i32 @wait_for_completion_timeout(i32* %21, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.npcm_pspi*, %struct.npcm_pspi** %8, align 8
  %29 = call i32 @npcm_pspi_disable(%struct.npcm_pspi* %28)
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.npcm_pspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @npcm_pspi_setup_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @npcm_pspi_enable(%struct.npcm_pspi*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @npcm_pspi_disable(%struct.npcm_pspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
