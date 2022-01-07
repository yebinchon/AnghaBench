; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.das800_private*, %struct.das800_board* }
%struct.das800_private = type { i32 }
%struct.das800_board = type { i32 }

@CIO_ENHF = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@CONV_HCEN = common dso_local global i32 0, align 4
@CONV_CONTROL = common dso_local global i32 0, align 4
@CONTROL1_INTE = common dso_local global i32 0, align 4
@CONTROL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das800_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das800_enable(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.das800_board*, align 8
  %4 = alloca %struct.das800_private*, align 8
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 3
  %8 = load %struct.das800_board*, %struct.das800_board** %7, align 8
  store %struct.das800_board* %8, %struct.das800_board** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 2
  %11 = load %struct.das800_private*, %struct.das800_private** %10, align 8
  store %struct.das800_private* %11, %struct.das800_private** %4, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.das800_board*, %struct.das800_board** %3, align 8
  %17 = getelementptr inbounds %struct.das800_board, %struct.das800_board* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @CIO_ENHF, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DAS800_GAIN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = load i32, i32* @CONV_HCEN, align 4
  %31 = load i32, i32* @CONV_CONTROL, align 4
  %32 = call i32 @das800_ind_write(%struct.comedi_device* %29, i32 %30, i32 %31)
  %33 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %34 = load i32, i32* @CONTROL1_INTE, align 4
  %35 = load %struct.das800_private*, %struct.das800_private** %4, align 8
  %36 = getelementptr inbounds %struct.das800_private, %struct.das800_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load i32, i32* @CONTROL1, align 4
  %40 = call i32 @das800_ind_write(%struct.comedi_device* %33, i32 %38, i32 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das800_ind_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
