; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_do_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_do_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@SET_BIT = common dso_local global i32 0, align 4
@SET_CLK = common dso_local global i32 0, align 4
@nc_gpreg = common dso_local global i32 0, align 4
@CLR_CLK = common dso_local global i32 0, align 4
@CLR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32*, i32, i32*)* @S24C16_do_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S24C16_do_bit(%struct.sym_device* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sym_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.sym_device* %0, %struct.sym_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = load i32, i32* @SET_BIT, align 4
  %13 = call i32 @S24C16_set_bit(%struct.sym_device* %9, i32 %10, i32* %11, i32 %12)
  %14 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @SET_CLK, align 4
  %17 = call i32 @S24C16_set_bit(%struct.sym_device* %14, i32 0, i32* %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %22 = load i32, i32* @nc_gpreg, align 4
  %23 = call i32 @INB(%struct.sym_device* %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %4
  %26 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @CLR_CLK, align 4
  %29 = call i32 @S24C16_set_bit(%struct.sym_device* %26, i32 0, i32* %27, i32 %28)
  %30 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @CLR_BIT, align 4
  %33 = call i32 @S24C16_set_bit(%struct.sym_device* %30, i32 0, i32* %31, i32 %32)
  ret void
}

declare dso_local i32 @S24C16_set_bit(%struct.sym_device*, i32, i32*, i32) #1

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
