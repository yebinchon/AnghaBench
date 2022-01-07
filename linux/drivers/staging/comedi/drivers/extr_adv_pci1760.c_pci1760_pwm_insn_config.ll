; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_pwm_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1760.c_pci1760_pwm_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI1760_PWM_TIMEBASE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PCI1760_CMD_GET_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCI1760_CMD_ENA_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1760_pwm_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_pwm_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %197 [
    i32 132, label %21
    i32 131, label %58
    i32 128, label %67
    i32 130, label %148
    i32 129, label %178
  ]

21:                                               ; preds = %4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @pci1760_pwm_enable(%struct.comedi_device* %22, i32 %23, i32 0)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %204

29:                                               ; preds = %21
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %32, 65535
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %204

37:                                               ; preds = %29
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @PCI1760_CMD_SET_PWM_CNT(i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci1760_cmd(%struct.comedi_device* %38, i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %204

49:                                               ; preds = %37
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pci1760_pwm_enable(%struct.comedi_device* %50, i32 %51, i32 1)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %204

57:                                               ; preds = %49
  br label %200

58:                                               ; preds = %4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @pci1760_pwm_enable(%struct.comedi_device* %59, i32 %60, i32 0)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %204

66:                                               ; preds = %58
  br label %200

67:                                               ; preds = %4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pci1760_pwm_enable(%struct.comedi_device* %68, i32 %69, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %204

75:                                               ; preds = %67
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pci1760_pwm_ns_to_div(i32 %78, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pci1760_pwm_ns_to_div(i32 %85, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %75
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %75
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %204

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %106, %98
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %204

127:                                              ; preds = %106
  %128 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @PCI1760_CMD_SET_PWM_HI(i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @pci1760_cmd(%struct.comedi_device* %128, i32 %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %204

137:                                              ; preds = %127
  %138 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @PCI1760_CMD_SET_PWM_LO(i32 %139)
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @pci1760_cmd(%struct.comedi_device* %138, i32 %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %5, align 4
  br label %204

147:                                              ; preds = %137
  br label %200

148:                                              ; preds = %4
  %149 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %150 = load i32, i32* @PCI1760_CMD_GET_STATUS, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @PCI1760_CMD_SET_PWM_HI(i32 %151)
  %153 = call i32 @pci1760_cmd(%struct.comedi_device* %149, i32 %150, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %155 = load i32, i32* @PCI1760_CMD_GET_STATUS, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @PCI1760_CMD_SET_PWM_LO(i32 %156)
  %158 = call i32 @pci1760_cmd(%struct.comedi_device* %154, i32 %155, i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %12, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %148
  %165 = load i32, i32* @ETIMEDOUT, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %204

167:                                              ; preds = %161
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @PCI1760_PWM_TIMEBASE, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  store i32 %175, i32* %177, align 4
  br label %200

178:                                              ; preds = %4
  %179 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %180 = load i32, i32* @PCI1760_CMD_GET_STATUS, align 4
  %181 = load i32, i32* @PCI1760_CMD_ENA_PWM, align 4
  %182 = call i32 @pci1760_cmd(%struct.comedi_device* %179, i32 %180, i32 %181)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %5, align 4
  br label %204

187:                                              ; preds = %178
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @BIT(i32 %189)
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32 %194, i32* %196, align 4
  br label %200

197:                                              ; preds = %4
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %204

200:                                              ; preds = %187, %167, %147, %66, %57
  %201 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %202 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %197, %185, %164, %145, %135, %114, %95, %73, %64, %55, %47, %34, %27
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @pci1760_pwm_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pci1760_cmd(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @PCI1760_CMD_SET_PWM_CNT(i32) #1

declare dso_local i32 @pci1760_pwm_ns_to_div(i32, i32) #1

declare dso_local i32 @PCI1760_CMD_SET_PWM_HI(i32) #1

declare dso_local i32 @PCI1760_CMD_SET_PWM_LO(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
