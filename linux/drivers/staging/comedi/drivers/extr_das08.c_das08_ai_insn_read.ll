; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, %struct.das08_private_struct*, %struct.das08_board_struct* }
%struct.das08_private_struct = type { i32*, i32 }
%struct.das08_board_struct = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DAS08_AI_LSB_REG = common dso_local global i64 0, align 8
@DAS08_AI_MSB_REG = common dso_local global i64 0, align 8
@DAS08_CONTROL_MUX_MASK = common dso_local global i32 0, align 4
@DAS08_CONTROL_REG = common dso_local global i64 0, align 8
@DAS08_GAIN_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"over-range\0A\00", align 1
@DAS08_AI_TRIG_REG = common dso_local global i64 0, align 8
@das08_ai_eoc = common dso_local global i32 0, align 4
@das08_encode12 = common dso_local global i64 0, align 8
@das08_pcm_encode12 = common dso_local global i64 0, align 8
@das08_encode16 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"bug! unknown ai encoding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das08_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.das08_board_struct*, align 8
  %11 = alloca %struct.das08_private_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  %21 = load %struct.das08_board_struct*, %struct.das08_board_struct** %20, align 8
  store %struct.das08_board_struct* %21, %struct.das08_board_struct** %10, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 3
  %24 = load %struct.das08_private_struct*, %struct.das08_private_struct** %23, align 8
  store %struct.das08_private_struct* %24, %struct.das08_private_struct** %11, align 8
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_CHAN(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CR_RANGE(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DAS08_AI_LSB_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inb(i64 %37)
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DAS08_AI_MSB_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 2
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* @DAS08_CONTROL_MUX_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  %51 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @DAS08_CONTROL_MUX(i32 %54)
  %56 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  %57 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  %61 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DAS08_CONTROL_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 %62, i64 %67)
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  %73 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %4
  %77 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %78 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @CR_RANGE(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.das08_private_struct*, %struct.das08_private_struct** %11, align 8
  %82 = getelementptr inbounds %struct.das08_private_struct, %struct.das08_private_struct* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DAS08_GAIN_REG, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  br label %94

94:                                               ; preds = %76, %4
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %220, %94
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %98 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %223

101:                                              ; preds = %95
  %102 = load %struct.das08_board_struct*, %struct.das08_board_struct** %10, align 8
  %103 = getelementptr inbounds %struct.das08_board_struct, %struct.das08_board_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DAS08_AI_MSB_REG, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inb(i64 %111)
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %117 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_info(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %106
  br label %121

121:                                              ; preds = %120, %101
  %122 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DAS08_AI_TRIG_REG, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outb_p(i32 0, i64 %126)
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %130 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %131 = load i32, i32* @das08_ai_eoc, align 4
  %132 = call i32 @comedi_timeout(%struct.comedi_device* %128, %struct.comedi_subdevice* %129, %struct.comedi_insn* %130, i32 %131, i32 0)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %5, align 4
  br label %225

137:                                              ; preds = %121
  %138 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %139 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DAS08_AI_MSB_REG, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @inb(i64 %142)
  store i32 %143, i32* %16, align 4
  %144 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DAS08_AI_LSB_REG, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @inb(i64 %148)
  store i32 %149, i32* %15, align 4
  %150 = load %struct.das08_board_struct*, %struct.das08_board_struct** %10, align 8
  %151 = getelementptr inbounds %struct.das08_board_struct, %struct.das08_board_struct* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @das08_encode12, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %137
  %156 = load i32, i32* %15, align 4
  %157 = ashr i32 %156, 4
  %158 = load i32, i32* %16, align 4
  %159 = shl i32 %158, 4
  %160 = or i32 %157, %159
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %219

165:                                              ; preds = %137
  %166 = load %struct.das08_board_struct*, %struct.das08_board_struct** %10, align 8
  %167 = getelementptr inbounds %struct.das08_board_struct, %struct.das08_board_struct* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @das08_pcm_encode12, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load i32, i32* %16, align 4
  %173 = shl i32 %172, 8
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %218

180:                                              ; preds = %165
  %181 = load %struct.das08_board_struct*, %struct.das08_board_struct** %10, align 8
  %182 = getelementptr inbounds %struct.das08_board_struct, %struct.das08_board_struct* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @das08_encode16, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %180
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %16, align 4
  %189 = and i32 %188, 127
  %190 = shl i32 %189, 8
  %191 = or i32 %187, %190
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %16, align 4
  %193 = and i32 %192, 128
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %186
  %196 = call i32 @BIT(i32 15)
  %197 = load i32, i32* %18, align 4
  %198 = add i32 %196, %197
  %199 = load i32*, i32** %9, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %198, i32* %202, align 4
  br label %211

203:                                              ; preds = %186
  %204 = call i32 @BIT(i32 15)
  %205 = load i32, i32* %18, align 4
  %206 = sub i32 %204, %205
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %206, i32* %210, align 4
  br label %211

211:                                              ; preds = %203, %195
  br label %217

212:                                              ; preds = %180
  %213 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %214 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @dev_err(i32 %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %225

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218, %155
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %95

223:                                              ; preds = %95
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %223, %212, %135
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @DAS08_CONTROL_MUX(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
