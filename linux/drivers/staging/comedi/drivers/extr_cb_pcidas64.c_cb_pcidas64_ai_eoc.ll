; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ai_eoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_cb_pcidas64_ai_eoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i64 }
%struct.pcidas64_board = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@HW_STATUS_REG = common dso_local global i64 0, align 8
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_WRITE_PNTR_REG = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* @cb_pcidas64_ai_eoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas64_ai_eoc(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcidas64_board*, align 8
  %11 = alloca %struct.pcidas64_private*, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.pcidas64_board*, %struct.pcidas64_board** %14, align 8
  store %struct.pcidas64_board* %15, %struct.pcidas64_board** %10, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load %struct.pcidas64_private*, %struct.pcidas64_private** %17, align 8
  store %struct.pcidas64_private* %18, %struct.pcidas64_private** %11, align 8
  %19 = load %struct.pcidas64_private*, %struct.pcidas64_private** %11, align 8
  %20 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HW_STATUS_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readw(i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.pcidas64_board*, %struct.pcidas64_board** %10, align 8
  %26 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LAYOUT_4020, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = load %struct.pcidas64_private*, %struct.pcidas64_private** %11, align 8
  %32 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADC_WRITE_PNTR_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readw(i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %50

40:                                               ; preds = %30
  br label %47

41:                                               ; preds = %4
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @pipe_full_bits(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %45, %39
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @pipe_full_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
