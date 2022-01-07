; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_T93C46_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_T93C46_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@nc_gpreg = common dso_local global i32 0, align 4
@nc_gpcntl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*, i32*)* @sym_read_T93C46_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_read_T93C46_nvram(%struct.sym_device* %0, i32* %1) #0 {
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %11 = load i32, i32* @nc_gpreg, align 4
  %12 = call i32 @INB(%struct.sym_device* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %14 = load i32, i32* @nc_gpcntl, align 4
  %15 = call i32 @INB(%struct.sym_device* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 233
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %19 = load i32, i32* @nc_gpreg, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @OUTB(%struct.sym_device* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 233
  %24 = or i32 %23, 9
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %26 = load i32, i32* @nc_gpcntl, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @OUTB(%struct.sym_device* %25, i32 %26, i32 %27)
  %29 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @T93C46_Read_Data(%struct.sym_device* %29, i32* %30, i32 2, i32* %6)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %33 = load i32, i32* @nc_gpcntl, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @OUTB(%struct.sym_device* %32, i32 %33, i32 %34)
  %36 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %37 = load i32, i32* @nc_gpreg, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @OUTB(%struct.sym_device* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_device*, i32, i32) #1

declare dso_local i32 @T93C46_Read_Data(%struct.sym_device*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
