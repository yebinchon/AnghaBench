; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_a_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ack_a_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@NISTC_AI_STATUS1_SC_TC = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_AI_SC_TC = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_START1 = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_AI_START1 = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_START = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_AI_START = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_STOP = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_AI_STOP = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_OVER = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_AI_ERR = common dso_local global i16 0, align 2
@NISTC_INTA_ACK_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16)* @ack_a_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_a_interrupt(%struct.comedi_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i16 %1, i16* %4, align 2
  store i16 0, i16* %5, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @NISTC_AI_STATUS1_SC_TC, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i16, i16* @NISTC_INTA_ACK_AI_SC_TC, align 2
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
  %22 = load i16, i16* @NISTC_AI_STATUS1_START1, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i16, i16* @NISTC_INTA_ACK_AI_START1, align 2
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
  %36 = load i16, i16* @NISTC_AI_STATUS1_START, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i16, i16* @NISTC_INTA_ACK_AI_START, align 2
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
  %50 = load i16, i16* @NISTC_AI_STATUS1_STOP, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i16, i16* @NISTC_INTA_ACK_AI_STOP, align 2
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
  %64 = load i16, i16* @NISTC_AI_STATUS1_OVER, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i16, i16* @NISTC_INTA_ACK_AI_ERR, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %5, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %5, align 2
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i16, i16* %5, align 2
  %77 = icmp ne i16 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = load i16, i16* %5, align 2
  %81 = load i32, i32* @NISTC_INTA_ACK_REG, align 4
  %82 = call i32 @ni_stc_writew(%struct.comedi_device* %79, i16 zeroext %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
