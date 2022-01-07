; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, %struct.das16_private_struct* }
%struct.das16_private_struct = type { i32, i32, i64, %struct.TYPE_2__, %struct.comedi_isadma* }
%struct.TYPE_2__ = type { i64 }
%struct.comedi_isadma = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i32, i32* }

@CMDF_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"isa dma transfers cannot be performed with CMDF_PRIORITY, aborting\0A\00", align 1
@DAS1600_CONV_DISABLE = common dso_local global i32 0, align 4
@DAS1600_CONV_REG = common dso_local global i64 0, align 8
@TRIG_NOW = common dso_local global i64 0, align 8
@DAS1600_BURST_VAL = common dso_local global i32 0, align 4
@DAS1600_BURST_REG = common dso_local global i64 0, align 8
@DAS16_PACER_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DAS16_CTRL_INTE = common dso_local global i32 0, align 4
@DAS16_CTRL_PACING_MASK = common dso_local global i32 0, align 4
@DAS16_CTRL_DMAE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@DAS16_CTRL_EXT_PACER = common dso_local global i32 0, align 4
@DAS16_CTRL_INT_PACER = common dso_local global i32 0, align 4
@DAS16_CTRL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das16_cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_cmd_exec(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.das16_private_struct*, align 8
  %7 = alloca %struct.comedi_isadma*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 3
  %17 = load %struct.das16_private_struct*, %struct.das16_private_struct** %16, align 8
  store %struct.das16_private_struct* %17, %struct.das16_private_struct** %6, align 8
  %18 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %19 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %18, i32 0, i32 4
  %20 = load %struct.comedi_isadma*, %struct.comedi_isadma** %19, align 8
  store %struct.comedi_isadma* %20, %struct.comedi_isadma** %7, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load %struct.comedi_async*, %struct.comedi_async** %22, align 8
  store %struct.comedi_async* %23, %struct.comedi_async** %8, align 8
  %24 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 0
  store %struct.comedi_cmd* %25, %struct.comedi_cmd** %9, align 8
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_CHAN(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CR_CHAN(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CR_RANGE(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CMDF_PRIORITY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %206

60:                                               ; preds = %2
  %61 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %62 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32, i32* @DAS1600_CONV_DISABLE, align 4
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DAS1600_CONV_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @das16_ai_set_mux_range(%struct.comedi_device* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @das16_set_pacer(%struct.comedi_device* %79, i32 %82, i32 %85)
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %13, align 4
  %89 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %90 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %73
  %94 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %95 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TRIG_NOW, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load i32, i32* @DAS1600_BURST_VAL, align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DAS1600_BURST_REG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i32 %100, i64 %105)
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @DAS16_PACER_BURST_LEN(i32 %110)
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %121

114:                                              ; preds = %93
  %115 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DAS1600_BURST_REG, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outb(i32 0, i64 %119)
  br label %121

121:                                              ; preds = %114, %99
  br label %122

122:                                              ; preds = %121, %73
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DAS16_PACER_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @outb(i32 %123, i64 %128)
  %130 = load %struct.comedi_isadma*, %struct.comedi_isadma** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %134 = call i32 @das16_ai_setup_dma(%struct.comedi_device* %132, %struct.comedi_subdevice* %133, i32 0)
  %135 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %136 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %135, i32 0, i32 0
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %136, i64 %137)
  %139 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %140 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load i64, i64* @jiffies, align 8
  %142 = call i64 (...) @timer_period()
  %143 = add nsw i64 %141, %142
  %144 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %145 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %148 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %147, i32 0, i32 3
  %149 = call i32 @add_timer(%struct.TYPE_2__* %148)
  %150 = load i32, i32* @DAS16_CTRL_INTE, align 4
  %151 = load i32, i32* @DAS16_CTRL_PACING_MASK, align 4
  %152 = or i32 %150, %151
  %153 = xor i32 %152, -1
  %154 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %155 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* @DAS16_CTRL_DMAE, align 4
  %159 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %160 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %164 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TRIG_EXT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %122
  %169 = load i32, i32* @DAS16_CTRL_EXT_PACER, align 4
  %170 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %171 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %180

174:                                              ; preds = %122
  %175 = load i32, i32* @DAS16_CTRL_INT_PACER, align 4
  %176 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %177 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %168
  %181 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %182 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %185 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DAS16_CTRL_REG, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outb(i32 %183, i64 %188)
  %190 = load %struct.das16_private_struct*, %struct.das16_private_struct** %6, align 8
  %191 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %180
  %195 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %196 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @DAS1600_CONV_REG, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outb(i32 0, i64 %199)
  br label %201

201:                                              ; preds = %194, %180
  %202 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %203 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %202, i32 0, i32 0
  %204 = load i64, i64* %14, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %201, %55
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @das16_ai_set_mux_range(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @das16_set_pacer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DAS16_PACER_BURST_LEN(i32) #1

declare dso_local i32 @das16_ai_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @timer_period(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
