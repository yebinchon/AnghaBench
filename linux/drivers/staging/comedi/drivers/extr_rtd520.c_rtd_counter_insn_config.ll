; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_counter_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_counter_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.rtd_private* }
%struct.rtd_private = type { i32*, i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTD_CLOCK_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rtd_counter_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd_counter_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtd_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.rtd_private*, %struct.rtd_private** %15, align 8
  store %struct.rtd_private* %16, %struct.rtd_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %124 [
    i32 128, label %24
    i32 130, label %54
    i32 129, label %64
    i32 131, label %98
  ]

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %131

38:                                               ; preds = %24
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %41 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @LAS0_8254_GATE_SEL(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writeb(i32 %46, i64 %52)
  br label %127

54:                                               ; preds = %4
  %55 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %56 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  br label %127

64:                                               ; preds = %4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  switch i32 %68, label %72 [
    i32 0, label %69
    i32 1, label %70
    i32 2, label %71
  ]

69:                                               ; preds = %64
  store i32 3, i32* %12, align 4
  br label %75

70:                                               ; preds = %64
  store i32 5, i32* %12, align 4
  br label %75

71:                                               ; preds = %64
  store i32 4, i32* %12, align 4
  br label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %131

75:                                               ; preds = %71, %70, %69
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %131

82:                                               ; preds = %75
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %85 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @LAS0_8254_CLK_SEL(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i32 @writeb(i32 %90, i64 %96)
  br label %127

98:                                               ; preds = %4
  %99 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %100 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  %106 = load %struct.rtd_private*, %struct.rtd_private** %10, align 8
  %107 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = load i32, i32* @RTD_CLOCK_BASE, align 4
  br label %120

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  store i32 %121, i32* %123, align 4
  br label %127

124:                                              ; preds = %4
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %131

127:                                              ; preds = %120, %82, %54, %38
  %128 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %129 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %124, %79, %72, %35
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @LAS0_8254_GATE_SEL(i32) #1

declare dso_local i64 @LAS0_8254_CLK_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
