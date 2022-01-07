; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.s526_private* }
%struct.s526_private = type { i32* }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@S526_GPCT_MODE_AUTOLOAD_MASK = common dso_local global i32 0, align 4
@S526_GPCT_MODE_AUTOLOAD_NONE = common dso_local global i32 0, align 4
@S526_GPCT_CTRL_CT_RESET = common dso_local global i32 0, align 4
@S526_GPCT_MODE_PR_SELECT_MASK = common dso_local global i32 0, align 4
@S526_GPCT_MODE_PR_SELECT_PR0 = common dso_local global i32 0, align 4
@S526_GPCT_MODE_PR_SELECT_PR1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPCT_RESET_COUNTER_ON_INDEX = common dso_local global i32 0, align 4
@GPCT_X2 = common dso_local global i32 0, align 4
@GPCT_X4 = common dso_local global i32 0, align 4
@S526_GPCT_CTRL_CT_LOAD = common dso_local global i32 0, align 4
@S526_GPCT_MODE_AUTOLOAD_IXRISE = common dso_local global i32 0, align 4
@S526_GPCT_MODE_CLK_SRC_QUADX1 = common dso_local global i32 0, align 4
@S526_GPCT_MODE_CLK_SRC_QUADX2 = common dso_local global i32 0, align 4
@S526_GPCT_MODE_CLK_SRC_QUADX4 = common dso_local global i32 0, align 4
@S526_GPCT_MODE_CTDIR_CTRL_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_gpct_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_gpct_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.s526_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.s526_private*, %struct.s526_private** %14, align 8
  store %struct.s526_private* %15, %struct.s526_private** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %216 [
    i32 129, label %23
    i32 128, label %60
    i32 130, label %138
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s526_private*, %struct.s526_private** %10, align 8
  %28 = getelementptr inbounds %struct.s526_private, %struct.s526_private* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65535
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @S526_GPCT_MODE_REG(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @outw(i32 %37, i64 %43)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @S526_GPCT_MODE_AUTOLOAD_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @S526_GPCT_MODE_AUTOLOAD_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %23
  %51 = load i32, i32* @S526_GPCT_CTRL_CT_RESET, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @S526_GPCT_CTRL_REG(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @outw(i32 %51, i64 %57)
  br label %59

59:                                               ; preds = %50, %23
  br label %219

60:                                               ; preds = %4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.s526_private*, %struct.s526_private** %10, align 8
  %65 = getelementptr inbounds %struct.s526_private, %struct.s526_private* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 65535
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_PR0, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @S526_GPCT_MODE_REG(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @outw(i32 %81, i64 %87)
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @s526_gpct_write(%struct.comedi_device* %89, i32 %90, i32 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_PR1, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @S526_GPCT_MODE_REG(i32 %110)
  %112 = add nsw i64 %109, %111
  %113 = call i32 @outw(i32 %106, i64 %112)
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @s526_gpct_write(%struct.comedi_device* %114, i32 %115, i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %60
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 65535
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @S526_GPCT_CTRL_REG(i32 %133)
  %135 = add nsw i64 %132, %134
  %136 = call i32 @outw(i32 %129, i64 %135)
  br label %137

137:                                              ; preds = %124, %60
  br label %219

138:                                              ; preds = %4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.s526_private*, %struct.s526_private** %10, align 8
  %143 = getelementptr inbounds %struct.s526_private, %struct.s526_private* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 65535
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %12, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_PR0, align 4
  %157 = load i32, i32* %12, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i64 @S526_GPCT_MODE_REG(i32 %163)
  %165 = add nsw i64 %162, %164
  %166 = call i32 @outw(i32 %159, i64 %165)
  %167 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @s526_gpct_write(%struct.comedi_device* %167, i32 %168, i32 %171)
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, 65535
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_MASK, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %12, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* @S526_GPCT_MODE_PR_SELECT_PR1, align 4
  %182 = load i32, i32* %12, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i64 @S526_GPCT_MODE_REG(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = call i32 @outw(i32 %184, i64 %190)
  %192 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @s526_gpct_write(%struct.comedi_device* %192, i32 %193, i32 %196)
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 4
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %138
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 4
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 65535
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %209 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i64 @S526_GPCT_CTRL_REG(i32 %211)
  %213 = add nsw i64 %210, %212
  %214 = call i32 @outw(i32 %207, i64 %213)
  br label %215

215:                                              ; preds = %202, %138
  br label %219

216:                                              ; preds = %4
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %5, align 4
  br label %223

219:                                              ; preds = %215, %137, %59
  %220 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %221 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %219, %216
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i64 @S526_GPCT_MODE_REG(i32) #1

declare dso_local i64 @S526_GPCT_CTRL_REG(i32) #1

declare dso_local i32 @s526_gpct_write(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
