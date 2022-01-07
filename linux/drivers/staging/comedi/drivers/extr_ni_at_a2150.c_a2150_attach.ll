; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, i64, %struct.comedi_subdevice*, i32, i32, %struct.a2150_board* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.a2150_board = type { i32 }
%struct.comedi_devconfig = type { i32* }
%struct.a2150_private = type { i32, i32 }

@a2150_attach.timeout = internal constant i32 2000, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I8253_BASE_REG = common dso_local global i64 0, align 8
@I8254_IO8 = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_OTHER = common dso_local global i32 0, align 4
@range_a2150 = common dso_local global i32 0, align 4
@a2150_ai_rinsn = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@a2150_ai_cmd = common dso_local global i32 0, align 4
@a2150_ai_cmdtest = common dso_local global i32 0, align 4
@a2150_cancel = common dso_local global i32 0, align 4
@IRQ_DMA_CNTRL_REG = common dso_local global i64 0, align 8
@DPD_BIT = common dso_local global i32 0, align 4
@APD_BIT = common dso_local global i32 0, align 4
@CONFIG_REG = common dso_local global i64 0, align 8
@DCAL_BIT = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"timed out waiting for offset calibration to complete\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ENABLE0_BIT = common dso_local global i32 0, align 4
@ENABLE1_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @a2150_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.a2150_board*, align 8
  %7 = alloca %struct.a2150_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call %struct.a2150_private* @comedi_alloc_devpriv(%struct.comedi_device* %11, i32 8)
  store %struct.a2150_private* %12, %struct.a2150_private** %7, align 8
  %13 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %14 = icmp ne %struct.a2150_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %207

18:                                               ; preds = %2
  %19 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %20 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @comedi_request_region(%struct.comedi_device* %19, i32 %24, i32 28)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %207

30:                                               ; preds = %18
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call %struct.a2150_board* @a2150_probe(%struct.comedi_device* %31)
  store %struct.a2150_board* %32, %struct.a2150_board** %6, align 8
  %33 = load %struct.a2150_board*, %struct.a2150_board** %6, align 8
  %34 = icmp ne %struct.a2150_board* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %207

38:                                               ; preds = %30
  %39 = load %struct.a2150_board*, %struct.a2150_board** %6, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 7
  store %struct.a2150_board* %39, %struct.a2150_board** %41, align 8
  %42 = load %struct.a2150_board*, %struct.a2150_board** %6, align 8
  %43 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %49 = call i32 @a2150_alloc_irq_and_dma(%struct.comedi_device* %47, %struct.comedi_devconfig* %48)
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @I8253_BASE_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @I8254_IO8, align 4
  %56 = call i32 @comedi_8254_init(i64 %54, i32 0, i32 %55, i32 0)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %38
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %207

66:                                               ; preds = %38
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %67, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %207

73:                                               ; preds = %66
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 4
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %75, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i64 0
  store %struct.comedi_subdevice* %77, %struct.comedi_subdevice** %8, align 8
  %78 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @SDF_READABLE, align 4
  %82 = load i32, i32* @SDF_GROUND, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SDF_OTHER, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 1
  store i32 4, i32* %89, align 4
  %90 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %90, i32 0, i32 2
  store i32 65535, i32* %91, align 8
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %93 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %92, i32 0, i32 8
  store i32* @range_a2150, i32** %93, align 8
  %94 = load i32, i32* @a2150_ai_rinsn, align 4
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %73
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %103, i32 0, i32 2
  store %struct.comedi_subdevice* %102, %struct.comedi_subdevice** %104, align 8
  %105 = load i32, i32* @SDF_CMD_READ, align 4
  %106 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %107 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %111 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @a2150_ai_cmd, align 4
  %116 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %117 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @a2150_ai_cmdtest, align 4
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @a2150_cancel, align 4
  %122 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %101, %73
  %125 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %126 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %129 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IRQ_DMA_CNTRL_REG, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outw(i32 %127, i64 %132)
  %134 = load i32, i32* @DPD_BIT, align 4
  %135 = load i32, i32* @APD_BIT, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %138 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @CONFIG_REG, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @outw_p(i32 %136, i64 %141)
  %143 = load i32, i32* @DPD_BIT, align 4
  %144 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CONFIG_REG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outw_p(i32 %143, i64 %148)
  %150 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %151 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %153 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %156 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @CONFIG_REG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @outw(i32 %154, i64 %159)
  store i32 0, i32* %9, align 4
  br label %161

161:                                              ; preds = %177, %124
  %162 = load i32, i32* %9, align 4
  %163 = icmp slt i32 %162, 2000
  br i1 %163, label %164, label %180

164:                                              ; preds = %161
  %165 = load i32, i32* @DCAL_BIT, align 4
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @STATUS_REG, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @inw(i64 %170)
  %172 = and i32 %165, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %180

175:                                              ; preds = %164
  %176 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %177

177:                                              ; preds = %175
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %161

180:                                              ; preds = %174, %161
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 2000
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %188 = load i32, i32* @ETIME, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %207

190:                                              ; preds = %180
  %191 = load i32, i32* @ENABLE0_BIT, align 4
  %192 = load i32, i32* @ENABLE1_BIT, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %195 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.a2150_private*, %struct.a2150_private** %7, align 8
  %199 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %202 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CONFIG_REG, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @outw(i32 %200, i64 %205)
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %190, %183, %71, %63, %35, %28, %15
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.a2150_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local %struct.a2150_board* @a2150_probe(%struct.comedi_device*) #1

declare dso_local i32 @a2150_alloc_irq_and_dma(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @comedi_8254_init(i64, i32, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
