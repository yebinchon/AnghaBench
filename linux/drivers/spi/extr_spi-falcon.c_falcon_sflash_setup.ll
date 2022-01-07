; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@ebu_lock = common dso_local global i32 0, align 4
@CLOCK_100M = common dso_local global i32 0, align 4
@EBUCC_EBUDIV_SELF100 = common dso_local global i32 0, align 4
@EBUCC = common dso_local global i32 0, align 4
@CLOCK_50M = common dso_local global i32 0, align 4
@SFTIME_SCKF_POS_MASK = common dso_local global i32 0, align 4
@SFTIME_SCKR_POS_MASK = common dso_local global i32 0, align 4
@SFTIME_SCK_PER_MASK = common dso_local global i32 0, align 4
@SFTIME_SCKR_POS_OFFSET = common dso_local global i32 0, align 4
@SFTIME_SCK_PER_OFFSET = common dso_local global i32 0, align 4
@SFTIME = common dso_local global i32 0, align 4
@SFIO_UNUSED_WD_MASK = common dso_local global i32 0, align 4
@SFIO = common dso_local global i32 0, align 4
@BUSRCON0_AGEN_SERIAL_FLASH = common dso_local global i32 0, align 4
@BUSRCON0_PORTW_8_BIT_MUX = common dso_local global i32 0, align 4
@BUSRCON0 = common dso_local global i32 0, align 4
@BUSWCON0_AGEN_SERIAL_FLASH = common dso_local global i32 0, align 4
@BUSWCON0 = common dso_local global i32 0, align 4
@SFCON_DEV_SIZE_MASK = common dso_local global i32 0, align 4
@SFCON_DEV_SIZE_A23_0 = common dso_local global i32 0, align 4
@SFCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @falcon_sflash_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_sflash_setup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @ebu_lock, i64 %5)
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CLOCK_100M, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUCC_EBUDIV_SELF100, align 4
  %14 = load i32, i32* @EBUCC, align 4
  %15 = call i32 @ltq_sys1_w32_mask(i32 0, i32 %13, i32 %14)
  store i32 1, i32* %3, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUCC_EBUDIV_SELF100, align 4
  %18 = load i32, i32* @EBUCC, align 4
  %19 = call i32 @ltq_sys1_w32_mask(i32 %17, i32 0, i32 %18)
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %33, %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp ult i32 %21, 7
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* @CLOCK_50M, align 4
  %25 = load i32, i32* %3, align 4
  %26 = udiv i32 %24, %25
  %27 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ule i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %20

36:                                               ; preds = %31, %20
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* @SFTIME_SCKF_POS_MASK, align 4
  %39 = load i32, i32* @SFTIME_SCKR_POS_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SFTIME_SCK_PER_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SFTIME_SCKR_POS_OFFSET, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SFTIME_SCK_PER_OFFSET, align 4
  %48 = add nsw i32 %47, 1
  %49 = shl i32 %46, %48
  %50 = or i32 %45, %49
  %51 = load i32, i32* @SFTIME, align 4
  %52 = call i32 @ltq_ebu_w32_mask(i32 %42, i32 %50, i32 %51)
  %53 = load i32, i32* @SFIO_UNUSED_WD_MASK, align 4
  %54 = and i32 %53, 12
  %55 = load i32, i32* @SFIO, align 4
  %56 = call i32 @ltq_ebu_w32(i32 %54, i32 %55)
  %57 = load i32, i32* @BUSRCON0_AGEN_SERIAL_FLASH, align 4
  %58 = load i32, i32* @BUSRCON0_PORTW_8_BIT_MUX, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BUSRCON0, align 4
  %61 = call i32 @ltq_ebu_w32(i32 %59, i32 %60)
  %62 = load i32, i32* @BUSWCON0_AGEN_SERIAL_FLASH, align 4
  %63 = load i32, i32* @BUSWCON0, align 4
  %64 = call i32 @ltq_ebu_w32(i32 %62, i32 %63)
  %65 = load i32, i32* @SFCON_DEV_SIZE_MASK, align 4
  %66 = load i32, i32* @SFCON_DEV_SIZE_A23_0, align 4
  %67 = load i32, i32* @SFCON, align 4
  %68 = call i32 @ltq_ebu_w32_mask(i32 %65, i32 %66, i32 %67)
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @ebu_lock, i64 %69)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ltq_sys1_w32_mask(i32, i32, i32) #1

declare dso_local i32 @ltq_ebu_w32_mask(i32, i32, i32) #1

declare dso_local i32 @ltq_ebu_w32(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
