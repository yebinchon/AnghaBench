; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@ME4000_DIO_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_MODE_0 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_1 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_2 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_3 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_4 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_5 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_6 = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_MODE_7 = common dso_local global i32 0, align 4
@ME4000_DIO_DIR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 255, i32* %11, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 65280, i32* %11, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = icmp ult i32 %26, 24
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 16711680, i32* %11, align 4
  br label %30

29:                                               ; preds = %25
  store i32 -16777216, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, %struct.comedi_insn* %35, i32* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %5, align 4
  br label %144

43:                                               ; preds = %32
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ME4000_DIO_CTRL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @inl(i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @ME4000_DIO_CTRL_MODE_0, align 4
  %51 = load i32, i32* @ME4000_DIO_CTRL_MODE_1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ME4000_DIO_CTRL_MODE_2, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ME4000_DIO_CTRL_MODE_3, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ME4000_DIO_CTRL_MODE_4, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ME4000_DIO_CTRL_MODE_5, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ME4000_DIO_CTRL_MODE_6, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @ME4000_DIO_CTRL_MODE_7, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %43
  %74 = load i32, i32* @ME4000_DIO_CTRL_MODE_0, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %73, %43
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65280
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @ME4000_DIO_CTRL_MODE_2, align 4
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 16711680
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @ME4000_DIO_CTRL_MODE_4, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, -16777216
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @ME4000_DIO_CTRL_MODE_6, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ME4000_DIO_DIR_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @inl(i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %107
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, 255
  store i32 %119, i32* %117, align 4
  %120 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, -65281
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* @ME4000_DIO_CTRL_MODE_0, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* @ME4000_DIO_CTRL_MODE_2, align 4
  %128 = load i32, i32* @ME4000_DIO_CTRL_MODE_3, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %115, %107
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %136 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ME4000_DIO_CTRL_REG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outl(i32 %134, i64 %139)
  %141 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %142 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %133, %41
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
