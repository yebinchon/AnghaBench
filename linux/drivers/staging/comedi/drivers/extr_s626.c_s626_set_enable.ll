; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_CRBMSK_INTCTRL = common dso_local global i32 0, align 4
@S626_CRBMSK_CLKENAB_A = common dso_local global i32 0, align 4
@S626_CRBMSK_CLKENAB_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @s626_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_set_enable(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @S626_CRBMSK_INTCTRL, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* @S626_CRBMSK_CLKENAB_A, align 4
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @S626_SET_CRB_CLKENAB_A(i32 %16)
  store i32 %17, i32* %8, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @S626_CRBMSK_CLKENAB_B, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @S626_SET_CRB_CLKENAB_B(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @S626_LP_CRB(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @s626_debi_replace(%struct.comedi_device* %25, i32 %27, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @S626_SET_CRB_CLKENAB_A(i32) #1

declare dso_local i32 @S626_SET_CRB_CLKENAB_B(i32) #1

declare dso_local i32 @s626_debi_replace(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @S626_LP_CRB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
