; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@SET_BIT = common dso_local global i32 0, align 4
@SET_CLK = common dso_local global i32 0, align 4
@CLR_BIT = common dso_local global i32 0, align 4
@CLR_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32*)* @S24C16_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S24C16_start(%struct.sym_device* %0, i32* %1) #0 {
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @SET_BIT, align 4
  %8 = call i32 @S24C16_set_bit(%struct.sym_device* %5, i32 1, i32* %6, i32 %7)
  %9 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SET_CLK, align 4
  %12 = call i32 @S24C16_set_bit(%struct.sym_device* %9, i32 0, i32* %10, i32 %11)
  %13 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @CLR_BIT, align 4
  %16 = call i32 @S24C16_set_bit(%struct.sym_device* %13, i32 0, i32* %14, i32 %15)
  %17 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @CLR_CLK, align 4
  %20 = call i32 @S24C16_set_bit(%struct.sym_device* %17, i32 0, i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @S24C16_set_bit(%struct.sym_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
