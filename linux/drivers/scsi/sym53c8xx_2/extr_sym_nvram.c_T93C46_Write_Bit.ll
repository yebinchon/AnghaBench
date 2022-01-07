; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Write_Bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Write_Bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@nc_gpreg = common dso_local global i32 0, align 4
@nc_mbox1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32, i32*)* @T93C46_Write_Bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @T93C46_Write_Bit(%struct.sym_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sym_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.sym_device* %0, %struct.sym_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 2
  store i32 %13, i32* %11, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 253
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 16
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %23 = load i32, i32* @nc_gpreg, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @OUTB(%struct.sym_device* %22, i32 %23, i32 %25)
  %27 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %28 = load i32, i32* @nc_mbox1, align 4
  %29 = call i32 @INB(%struct.sym_device* %27, i32 %28)
  %30 = call i32 @udelay(i32 2)
  %31 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @T93C46_Clk(%struct.sym_device* %31, i32* %32)
  ret void
}

declare dso_local i32 @OUTB(%struct.sym_device*, i32, i32) #1

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @T93C46_Clk(%struct.sym_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
