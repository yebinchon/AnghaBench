; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Send_Command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_T93C46_Send_Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@nc_gpreg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32, i32*, i32*)* @T93C46_Send_Command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @T93C46_Send_Command(%struct.sym_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.sym_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 9
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 8, %16
  %18 = ashr i32 %15, %17
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @T93C46_Write_Bit(%struct.sym_device* %14, i32 %18, i32* %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.sym_device*, %struct.sym_device** %5, align 8
  %26 = load i32, i32* @nc_gpreg, align 4
  %27 = call i32 @INB(%struct.sym_device* %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

declare dso_local i32 @T93C46_Write_Bit(%struct.sym_device*, i32, i32*) #1

declare dso_local i32 @INB(%struct.sym_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
