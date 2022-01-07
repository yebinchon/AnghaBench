; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_se_diff_bit_6xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_se_diff_bit_6xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_board* }
%struct.pcidas64_board = type { i64 }

@LAYOUT_64XX = common dso_local global i64 0, align 8
@LAYOUT_60XX = common dso_local global i64 0, align 8
@ADC_SE_DIFF_BIT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32)* @se_diff_bit_6xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @se_diff_bit_6xxx(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcidas64_board*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.pcidas64_board*, %struct.pcidas64_board** %8, align 8
  store %struct.pcidas64_board* %9, %struct.pcidas64_board** %6, align 8
  %10 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %11 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LAYOUT_64XX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15, %2
  %19 = load %struct.pcidas64_board*, %struct.pcidas64_board** %6, align 8
  %20 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LAYOUT_60XX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %15
  %28 = load i16, i16* @ADC_SE_DIFF_BIT, align 2
  store i16 %28, i16* %3, align 2
  br label %30

29:                                               ; preds = %24, %18
  store i16 0, i16* %3, align 2
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i16, i16* %3, align 2
  ret i16 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
