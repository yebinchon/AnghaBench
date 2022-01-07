; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_ao_config_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_ao_config_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32* }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_krange* }
%struct.comedi_krange = type { i32, i32 }

@NI_M_AO_CFG_BANK_UPDATE_TIMED = common dso_local global i32 0, align 4
@NI_M_AO_CFG_BANK_REF_INT_10V = common dso_local global i32 0, align 4
@NI_M_AO_CFG_BANK_REF_INT_5V = common dso_local global i32 0, align 4
@NI_M_AO_REF_ATTENUATION_X5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bug! unhandled ao reference voltage\0A\00", align 1
@NI_M_AO_CFG_BANK_OFFSET_0V = common dso_local global i32 0, align 4
@NI_M_AO_CFG_BANK_OFFSET_5V = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bug! unhandled ao offset voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32)* @ni_m_series_ao_config_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_ao_config_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ni_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.comedi_krange*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.ni_private*, %struct.ni_private** %19, align 8
  store %struct.ni_private* %20, %struct.ni_private** %11, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load i32, i32* @NI_M_AO_CFG_BANK_UPDATE_TIMED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %34 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %32
  store i32 %40, i32* %38, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %43 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @NI_M_AO_CFG_BANK_REG(i32 %49)
  %51 = call i32 @ni_writeb(%struct.comedi_device* %41, i32 %48, i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @NI_M_AO_WAVEFORM_ORDER_REG(i32 %53)
  %55 = call i32 @ni_writeb(%struct.comedi_device* %52, i32 15, i32 %54)
  br label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %24

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59, %5
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %178, %60
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %181

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CR_CHAN(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CR_RANGE(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.comedi_krange*, %struct.comedi_krange** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %82, i64 %84
  store %struct.comedi_krange* %85, %struct.comedi_krange** %17, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %86 = load %struct.comedi_krange*, %struct.comedi_krange** %17, align 8
  %87 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.comedi_krange*, %struct.comedi_krange** %17, align 8
  %90 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  switch i32 %92, label %127 [
    i32 20000000, label %93
    i32 10000000, label %101
    i32 4000000, label %109
    i32 2000000, label %118
  ]

93:                                               ; preds = %65
  %94 = load i32, i32* @NI_M_AO_CFG_BANK_REF_INT_10V, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @NI_M_AO_REF_ATTENUATION_REG(i32 %98)
  %100 = call i32 @ni_writeb(%struct.comedi_device* %97, i32 0, i32 %99)
  br label %132

101:                                              ; preds = %65
  %102 = load i32, i32* @NI_M_AO_CFG_BANK_REF_INT_5V, align 4
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @NI_M_AO_REF_ATTENUATION_REG(i32 %106)
  %108 = call i32 @ni_writeb(%struct.comedi_device* %105, i32 0, i32 %107)
  br label %132

109:                                              ; preds = %65
  %110 = load i32, i32* @NI_M_AO_CFG_BANK_REF_INT_10V, align 4
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = load i32, i32* @NI_M_AO_REF_ATTENUATION_X5, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @NI_M_AO_REF_ATTENUATION_REG(i32 %115)
  %117 = call i32 @ni_writeb(%struct.comedi_device* %113, i32 %114, i32 %116)
  br label %132

118:                                              ; preds = %65
  %119 = load i32, i32* @NI_M_AO_CFG_BANK_REF_INT_5V, align 4
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = load i32, i32* @NI_M_AO_REF_ATTENUATION_X5, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @NI_M_AO_REF_ATTENUATION_REG(i32 %124)
  %126 = call i32 @ni_writeb(%struct.comedi_device* %122, i32 %123, i32 %125)
  br label %132

127:                                              ; preds = %65
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %127, %118, %109, %101, %93
  %133 = load %struct.comedi_krange*, %struct.comedi_krange** %17, align 8
  %134 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.comedi_krange*, %struct.comedi_krange** %17, align 8
  %137 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  switch i32 %139, label %148 [
    i32 0, label %140
    i32 10000000, label %144
  ]

140:                                              ; preds = %132
  %141 = load i32, i32* @NI_M_AO_CFG_BANK_OFFSET_0V, align 4
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  br label %153

144:                                              ; preds = %132
  %145 = load i32, i32* @NI_M_AO_CFG_BANK_OFFSET_5V, align 4
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  br label %153

148:                                              ; preds = %132
  %149 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %150 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %144, %140
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @NI_M_AO_CFG_BANK_UPDATE_TIMED, align 4
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %156, %153
  %161 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @NI_M_AO_CFG_BANK_REG(i32 %163)
  %165 = call i32 @ni_writeb(%struct.comedi_device* %161, i32 %162, i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %168 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @NI_M_AO_WAVEFORM_ORDER_REG(i32 %175)
  %177 = call i32 @ni_writeb(%struct.comedi_device* %173, i32 %174, i32 %176)
  br label %178

178:                                              ; preds = %160
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %61

181:                                              ; preds = %61
  %182 = load i32, i32* %16, align 4
  ret i32 %182
}

declare dso_local i32 @ni_writeb(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NI_M_AO_CFG_BANK_REG(i32) #1

declare dso_local i32 @NI_M_AO_WAVEFORM_ORDER_REG(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @NI_M_AO_REF_ATTENUATION_REG(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
