; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_pulse_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_pulse_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_CRAMSK_INDXPOL_A = common dso_local global i32 0, align 4
@S626_CRBMSK_INTCTRL = common dso_local global i32 0, align 4
@S626_CRBMSK_INDXPOL_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @s626_pulse_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_pulse_index(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @S626_LP_CRA(i32 %11)
  %13 = call i32 @s626_debi_read(%struct.comedi_device* %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @S626_LP_CRA(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @S626_CRAMSK_INDXPOL_A, align 4
  %19 = xor i32 %17, %18
  %20 = call i32 @s626_debi_write(%struct.comedi_device* %14, i32 %16, i32 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @S626_LP_CRA(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @s626_debi_write(%struct.comedi_device* %21, i32 %23, i32 %24)
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @S626_LP_CRB(i32 %28)
  %30 = call i32 @s626_debi_read(%struct.comedi_device* %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @S626_CRBMSK_INTCTRL, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @S626_LP_CRB(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @S626_CRBMSK_INDXPOL_B, align 4
  %40 = xor i32 %38, %39
  %41 = call i32 @s626_debi_write(%struct.comedi_device* %35, i32 %37, i32 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @S626_LP_CRB(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @s626_debi_write(%struct.comedi_device* %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @s626_debi_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @S626_LP_CRA(i32) #1

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @S626_LP_CRB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
