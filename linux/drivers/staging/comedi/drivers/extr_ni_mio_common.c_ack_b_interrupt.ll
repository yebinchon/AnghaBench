; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_b_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_b_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@NISTC_AO_STATUS1_BC_TC = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_BC_TC = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_OVERRUN = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_ERR = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_START = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_START = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_START1 = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_START1 = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_UC_TC = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_UC_TC = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_UI2_TC = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_UI2_TC = common dso_local global i16 0, align 2
@NISTC_AO_STATUS1_UPDATE = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_AO_UPDATE = common dso_local global i16 0, align 2
@NISTC_INTB_ACK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16)* @ack_b_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_b_interrupt(%struct.comedi_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @NISTC_AO_STATUS1_BC_TC, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i16, i16* @NISTC_INTB_ACK_AO_BC_TC, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @NISTC_AO_STATUS1_OVERRUN, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i16, i16* @NISTC_INTB_ACK_AO_ERR, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %5, align 2
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @NISTC_AO_STATUS1_START, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i16, i16* @NISTC_INTB_ACK_AO_START, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %5, align 2
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i16, i16* %4, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @NISTC_AO_STATUS1_START1, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i16, i16* @NISTC_INTB_ACK_AO_START1, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* %5, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %5, align 2
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @NISTC_AO_STATUS1_UC_TC, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i16, i16* @NISTC_INTB_ACK_AO_UC_TC, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %5, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %5, align 2
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i16, i16* %4, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @NISTC_AO_STATUS1_UI2_TC, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i16, i16* @NISTC_INTB_ACK_AO_UI2_TC, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %5, align 2
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i16, i16* %4, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* @NISTC_AO_STATUS1_UPDATE, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i16, i16* @NISTC_INTB_ACK_AO_UPDATE, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* %5, align 2
  %100 = zext i16 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* %5, align 2
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i16, i16* %5, align 2
  %105 = icmp ne i16 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %108 = load i16, i16* %5, align 2
  %109 = load i32, i32* @NISTC_INTB_ACK_REG, align 4
  %110 = call i32 @ni_stc_writew(%struct.comedi_device* %107, i16 zeroext %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
