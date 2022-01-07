; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32, i32, i32, i32, i32, i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32, i32, i32 }

@DT2821_TMRCTR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_ERRINTEN = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@DT2821_SUPCSR_DS_AD_CLK = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DS_AD_TRIG = common dso_local global i32 0, align 4
@DT2821_SUPCSR_CLRDMADNE = common dso_local global i32 0, align 4
@DT2821_SUPCSR_BUFFB = common dso_local global i32 0, align 4
@DT2821_SUPCSR_ADCINIT = common dso_local global i32 0, align 4
@DT2821_SUPCSR_REG = common dso_local global i64 0, align 8
@COMEDI_ISADMA_READ = common dso_local global i32 0, align 4
@DT2821_SUPCSR_DDMA = common dso_local global i32 0, align 4
@DT2821_ADCSR_ADCLK = common dso_local global i32 0, align 4
@DT2821_ADCSR_IADDONE = common dso_local global i32 0, align 4
@DT2821_ADCSR_REG = common dso_local global i64 0, align 8
@DT2821_SUPCSR_PRLD = common dso_local global i32 0, align 4
@dt282x_ai_timeout = common dso_local global i32 0, align 4
@DT2821_ADCSR_MUXBUSY = common dso_local global i32 0, align 4
@DT2821_SUPCSR_STRIG = common dso_local global i32 0, align 4
@DT2821_SUPCSR_XTRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @dt282x_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.dt282x_private*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.dt282x_private*, %struct.dt282x_private** %11, align 8
  store %struct.dt282x_private* %12, %struct.dt282x_private** %6, align 8
  %13 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %14 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %13, i32 0, i32 6
  %15 = load %struct.comedi_isadma*, %struct.comedi_isadma** %14, align 8
  store %struct.comedi_isadma* %15, %struct.comedi_isadma** %7, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %8, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @dt282x_disable_dma(%struct.comedi_device* %20)
  %22 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %23 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DT2821_TMRCTR_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outw(i32 %24, i64 %29)
  %31 = load i32, i32* @DT2821_SUPCSR_ERRINTEN, align 4
  %32 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %33 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TRIG_FOLLOW, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @DT2821_SUPCSR_DS_AD_CLK, align 4
  %41 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %42 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @DT2821_SUPCSR_DS_AD_TRIG, align 4
  %45 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %46 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %49 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DT2821_SUPCSR_CLRDMADNE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @DT2821_SUPCSR_BUFFB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @DT2821_SUPCSR_ADCINIT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %71 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %73 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %76 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @COMEDI_ISADMA_READ, align 4
  %78 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %79 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = call i32 @dt282x_prep_ai_dma(%struct.comedi_device* %82, i32 0, i32 0)
  %84 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %85 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %47
  %89 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %90 = call i32 @dt282x_prep_ai_dma(%struct.comedi_device* %89, i32 1, i32 0)
  %91 = load i32, i32* @DT2821_SUPCSR_DDMA, align 4
  %92 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %93 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %97 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %100 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outw(i32 %98, i64 %103)
  br label %105

105:                                              ; preds = %88, %47
  %106 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %107 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %106, i32 0, i32 4
  store i32 0, i32* %107, align 8
  %108 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dt282x_load_changain(%struct.comedi_device* %108, i32 %111, i32 %114)
  %116 = load i32, i32* @DT2821_ADCSR_ADCLK, align 4
  %117 = load i32, i32* @DT2821_ADCSR_IADDONE, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %120 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %122 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DT2821_ADCSR_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outw(i32 %123, i64 %128)
  %130 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %131 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DT2821_SUPCSR_PRLD, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %136 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @outw(i32 %134, i64 %139)
  %141 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %142 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %143 = load i32, i32* @dt282x_ai_timeout, align 4
  %144 = load i32, i32* @DT2821_ADCSR_MUXBUSY, align 4
  %145 = call i32 @comedi_timeout(%struct.comedi_device* %141, %struct.comedi_subdevice* %142, i32* null, i32 %143, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %105
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %184

150:                                              ; preds = %105
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TRIG_FOLLOW, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %158 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DT2821_SUPCSR_STRIG, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %163 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @outw(i32 %161, i64 %166)
  br label %183

168:                                              ; preds = %150
  %169 = load i32, i32* @DT2821_SUPCSR_XTRIG, align 4
  %170 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %171 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.dt282x_private*, %struct.dt282x_private** %6, align 8
  %175 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %178 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DT2821_SUPCSR_REG, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @outw(i32 %176, i64 %181)
  br label %183

183:                                              ; preds = %168, %156
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %148
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @dt282x_disable_dma(%struct.comedi_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @dt282x_prep_ai_dma(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @dt282x_load_changain(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
