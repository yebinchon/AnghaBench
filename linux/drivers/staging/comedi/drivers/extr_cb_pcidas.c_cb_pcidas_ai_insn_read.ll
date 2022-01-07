; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.cb_pcidas_private* }
%struct.cb_pcidas_private = type { i64, i64, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@PCIDAS_CALIB_EN = common dso_local global i32 0, align 4
@PCIDAS_CALIB_REG = common dso_local global i64 0, align 8
@PCIDAS_AI_UNIP = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@PCIDAS_AI_SE = common dso_local global i32 0, align 4
@PCIDAS_AI_REG = common dso_local global i64 0, align 8
@PCIDAS_AI_FIFO_CLR_REG = common dso_local global i64 0, align 8
@PCIDAS_AI_DATA_REG = common dso_local global i64 0, align 8
@cb_pcidas_ai_eoc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidas_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cb_pcidas_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %18, align 8
  store %struct.cb_pcidas_private* %19, %struct.cb_pcidas_private** %10, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CR_RANGE(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_AREF(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CR_ALT_SOURCE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %4
  %39 = load i32, i32* @PCIDAS_CALIB_EN, align 4
  %40 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %41 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PCIDAS_CALIB_SRC(i32 %42)
  %44 = or i32 %39, %43
  %45 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %46 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i32 %44, i64 %49)
  store i32 0, i32* %11, align 4
  br label %58

51:                                               ; preds = %4
  %52 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %53 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCIDAS_CALIB_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 0, i64 %56)
  br label %58

58:                                               ; preds = %51, %38
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @PCIDAS_AI_CHAN(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @PCIDAS_AI_GAIN(i32 %61)
  %63 = or i32 %60, %62
  store i32 %63, i32* %14, align 4
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @comedi_range_is_unipolar(%struct.comedi_subdevice* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* @PCIDAS_AI_UNIP, align 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %68, %58
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @AREF_DIFF, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @PCIDAS_AI_SE, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %83 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCIDAS_AI_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %81, i64 %86)
  %88 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %89 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCIDAS_AI_FIFO_CLR_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outw(i32 0, i64 %92)
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %127, %80
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %97 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  %101 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %102 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCIDAS_AI_DATA_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outw(i32 0, i64 %105)
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %109 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %110 = load i32, i32* @cb_pcidas_ai_eoc, align 4
  %111 = call i32 @comedi_timeout(%struct.comedi_device* %107, %struct.comedi_subdevice* %108, %struct.comedi_insn* %109, i32 %110, i32 0)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %132

116:                                              ; preds = %100
  %117 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %10, align 8
  %118 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PCIDAS_AI_DATA_REG, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @inw(i64 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %94

130:                                              ; preds = %94
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %114
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @PCIDAS_CALIB_SRC(i32) #1

declare dso_local i32 @PCIDAS_AI_CHAN(i32) #1

declare dso_local i32 @PCIDAS_AI_GAIN(i32) #1

declare dso_local i64 @comedi_range_is_unipolar(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
