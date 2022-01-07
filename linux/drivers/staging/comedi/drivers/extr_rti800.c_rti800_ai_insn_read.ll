; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti800.c_rti800_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rti800.c_rti800_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.rti800_private* }
%struct.rti800_private = type { i8, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@RTI800_ADCHI = common dso_local global i64 0, align 8
@RTI800_CLRFLAGS = common dso_local global i64 0, align 8
@RTI800_MUXGAIN = common dso_local global i64 0, align 8
@RTI800_CONVERT = common dso_local global i64 0, align 8
@rti800_ai_eoc = common dso_local global i32 0, align 4
@RTI800_ADCLO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @rti800_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rti800_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rti800_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.rti800_private*, %struct.rti800_private** %19, align 8
  store %struct.rti800_private* %20, %struct.rti800_private** %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CR_CHAN(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_RANGE(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RTI800_ADCHI, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTI800_CLRFLAGS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i8 zeroext 0, i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 5
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %13, align 1
  %46 = load i8, i8* %13, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.rti800_private*, %struct.rti800_private** %10, align 8
  %49 = getelementptr inbounds %struct.rti800_private, %struct.rti800_private* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 8
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %4
  %54 = load i8, i8* %13, align 1
  %55 = load %struct.rti800_private*, %struct.rti800_private** %10, align 8
  %56 = getelementptr inbounds %struct.rti800_private, %struct.rti800_private* %55, i32 0, i32 0
  store i8 %54, i8* %56, align 8
  %57 = load %struct.rti800_private*, %struct.rti800_private** %10, align 8
  %58 = getelementptr inbounds %struct.rti800_private, %struct.rti800_private* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTI800_MUXGAIN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outb(i8 zeroext %59, i64 %64)
  %66 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %53
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 40, i32 80
  br label %83

83:                                               ; preds = %78, %77
  %84 = phi i32 [ 20, %77 ], [ %82, %78 ]
  br label %85

85:                                               ; preds = %83, %73
  %86 = phi i32 [ 10, %73 ], [ %84, %83 ]
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @udelay(i32 %87)
  br label %89

89:                                               ; preds = %85, %53
  br label %90

90:                                               ; preds = %89, %4
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %144, %90
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %94 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %91
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RTI800_CONVERT, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i8 zeroext 0, i64 %102)
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %106 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %107 = load i32, i32* @rti800_ai_eoc, align 4
  %108 = call i32 @comedi_timeout(%struct.comedi_device* %104, %struct.comedi_subdevice* %105, %struct.comedi_insn* %106, i32 %107, i32 0)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load i32, i32* %14, align 4
  store i32 %112, i32* %5, align 4
  br label %151

113:                                              ; preds = %97
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @RTI800_ADCLO, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @inb(i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @RTI800_ADCHI, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @inb(i64 %124)
  %126 = and i32 %125, 15
  %127 = shl i32 %126, 8
  %128 = load i32, i32* %17, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %17, align 4
  %130 = load %struct.rti800_private*, %struct.rti800_private** %10, align 8
  %131 = getelementptr inbounds %struct.rti800_private, %struct.rti800_private* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %113
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @comedi_offset_munge(%struct.comedi_subdevice* %135, i32 %136)
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %134, %113
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %91

147:                                              ; preds = %91
  %148 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %149 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %111
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @comedi_offset_munge(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
