; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_set_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_set_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.apci3120_private* }
%struct.apci3120_private = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@APCI3120_CHANLIST_UNIPOLAR = common dso_local global i32 0, align 4
@APCI3120_CHANLIST_REG = common dso_local global i64 0, align 8
@APCI3120_TIMER_MODE_REG = common dso_local global i64 0, align 8
@APCI3120_CTRL_REG = common dso_local global i64 0, align 8
@APCI3120_MODE_SCAN_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*)* @apci3120_set_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_set_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.apci3120_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.apci3120_private*, %struct.apci3120_private** %15, align 8
  store %struct.apci3120_private* %16, %struct.apci3120_private** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %58, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_CHAN(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_RANGE(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @APCI3120_CHANLIST_MUX(i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @APCI3120_CHANLIST_GAIN(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @APCI3120_CHANLIST_INDEX(i32 %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load i32, i32* @APCI3120_CHANLIST_UNIPOLAR, align 4
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %46, %21
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI3120_CHANLIST_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %17

61:                                               ; preds = %17
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @APCI3120_TIMER_MODE_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inw(i64 %66)
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @APCI3120_CTRL_PR(i32 %69)
  %71 = call i32 @APCI3120_CTRL_PA(i32 0)
  %72 = or i32 %70, %71
  %73 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  %74 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  %76 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @APCI3120_CTRL_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 %77, i64 %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %92

86:                                               ; preds = %61
  %87 = load i32, i32* @APCI3120_MODE_SCAN_ENA, align 4
  %88 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  %89 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %61
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @APCI3120_CHANLIST_MUX(i32) #1

declare dso_local i32 @APCI3120_CHANLIST_GAIN(i32) #1

declare dso_local i32 @APCI3120_CHANLIST_INDEX(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @APCI3120_CTRL_PR(i32) #1

declare dso_local i32 @APCI3120_CTRL_PA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
