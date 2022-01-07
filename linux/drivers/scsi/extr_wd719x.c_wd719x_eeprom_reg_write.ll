; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_eeprom_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_eeprom_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeprom_93cx6 = type { i64, i64, i64, %struct.wd719x* }
%struct.wd719x = type { i32 }

@WD719X_EE_DI = common dso_local global i32 0, align 4
@WD719X_EE_CLK = common dso_local global i32 0, align 4
@WD719X_EE_CS = common dso_local global i32 0, align 4
@WD719X_PCI_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeprom_93cx6*)* @wd719x_eeprom_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd719x_eeprom_reg_write(%struct.eeprom_93cx6* %0) #0 {
  %2 = alloca %struct.eeprom_93cx6*, align 8
  %3 = alloca %struct.wd719x*, align 8
  %4 = alloca i32, align 4
  store %struct.eeprom_93cx6* %0, %struct.eeprom_93cx6** %2, align 8
  %5 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %6 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %5, i32 0, i32 3
  %7 = load %struct.wd719x*, %struct.wd719x** %6, align 8
  store %struct.wd719x* %7, %struct.wd719x** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @WD719X_EE_DI, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %18 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @WD719X_EE_CLK, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.eeprom_93cx6*, %struct.eeprom_93cx6** %2, align 8
  %27 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @WD719X_EE_CS, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %36 = load i32, i32* @WD719X_PCI_GPIO_DATA, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @wd719x_writeb(%struct.wd719x* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @wd719x_writeb(%struct.wd719x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
