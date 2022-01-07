; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_clear_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_dio_clear_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@S626_LP_MISC1 = common dso_local global i32 0, align 4
@S626_MISC1_NOEDCAP = common dso_local global i32 0, align 4
@S626_DIO_BANKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @s626_dio_clear_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_dio_clear_irq(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @S626_LP_MISC1, align 4
  %6 = load i32, i32* @S626_MISC1_NOEDCAP, align 4
  %7 = call i32 @s626_debi_write(%struct.comedi_device* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @S626_DIO_BANKS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @S626_LP_WRCAPSEL(i32 %14)
  %16 = call i32 @s626_debi_write(%struct.comedi_device* %13, i32 %15, i32 65535)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %8

20:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @S626_LP_WRCAPSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
