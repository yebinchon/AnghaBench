; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_handle_fifo_dregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_handle_fifo_dregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.ni_private* }
%struct.comedi_subdevice = type { i32 }
%struct.ni_private = type { i16*, i64, i64 }

@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_FIFO_E = common dso_local global i16 0, align 2
@NI611X_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_STATUS_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@NI_E_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @ni_handle_fifo_dregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_handle_fifo_dregs(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  store %struct.ni_private* %11, %struct.ni_private** %3, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %4, align 8
  %15 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %16 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %29, %19
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %23 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %21, i32 %22)
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @NISTC_AI_STATUS1_FIFO_E, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %32 = call i32 @ni_readl(%struct.comedi_device* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 16
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %6, align 2
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %37 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %36, i16* %6, i32 1)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 65535
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %6, align 2
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %42 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %41, i16* %6, i32 1)
  br label %20

43:                                               ; preds = %20
  br label %147

44:                                               ; preds = %1
  %45 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %56, %49
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = load i32, i32* @NI6143_AI_FIFO_STATUS_REG, align 4
  %53 = call i32 @ni_readl(%struct.comedi_device* %51, i32 %52)
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = load i32, i32* @NI6143_AI_FIFO_DATA_REG, align 4
  %59 = call i32 @ni_readl(%struct.comedi_device* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = lshr i32 %60, 16
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %6, align 2
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %64 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %63, i16* %6, i32 1)
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 65535
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %6, align 2
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %69 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %68, i16* %6, i32 1)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %7, align 4
  br label %50

72:                                               ; preds = %50
  %73 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %74 = load i32, i32* @NI6143_AI_FIFO_STATUS_REG, align 4
  %75 = call i32 @ni_readl(%struct.comedi_device* %73, i32 %74)
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %80 = load i32, i32* @NI6143_AI_FIFO_CTRL_REG, align 4
  %81 = call i32 @ni_writel(%struct.comedi_device* %79, i32 1, i32 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = load i32, i32* @NI6143_AI_FIFO_DATA_REG, align 4
  %84 = call i32 @ni_readl(%struct.comedi_device* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 65535
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %6, align 2
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %90 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %89, i16* %6, i32 1)
  br label %91

91:                                               ; preds = %78, %72
  br label %146

92:                                               ; preds = %44
  %93 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %94 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %95 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %93, i32 %94)
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* @NISTC_AI_STATUS1_FIFO_E, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %96, %98
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %8, align 2
  br label %101

101:                                              ; preds = %138, %92
  %102 = load i16, i16* %8, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %135, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %109 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %108, i32 0, i32 0
  %110 = load i16*, i16** %109, align 8
  %111 = call i32 @ARRAY_SIZE(i16* %110)
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %106
  %114 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %115 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %116 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %114, i32 %115)
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @NISTC_AI_STATUS1_FIFO_E, align 2
  %119 = zext i16 %118 to i32
  %120 = and i32 %117, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %8, align 2
  %122 = load i16, i16* %8, align 2
  %123 = icmp ne i16 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %138

125:                                              ; preds = %113
  %126 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %127 = load i32, i32* @NI_E_AI_FIFO_DATA_REG, align 4
  %128 = call zeroext i16 @ni_readw(%struct.comedi_device* %126, i32 %127)
  %129 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %130 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %129, i32 0, i32 0
  %131 = load i16*, i16** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i16, i16* %131, i64 %133
  store i16 %128, i16* %134, align 2
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %106

138:                                              ; preds = %124, %106
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %140 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %141 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %140, i32 0, i32 0
  %142 = load i16*, i16** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %139, i16* %142, i32 %143)
  br label %101

145:                                              ; preds = %101
  br label %146

146:                                              ; preds = %145, %91
  br label %147

147:                                              ; preds = %146, %43
  ret void
}

declare dso_local zeroext i16 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

declare dso_local zeroext i16 @ni_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
