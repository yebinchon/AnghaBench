; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@S626_GSEL_BIPOLAR5V = common dso_local global i64 0, align 8
@S626_GSEL_BIPOLAR10V = common dso_local global i64 0, align 8
@S626_LP_GSEL = common dso_local global i32 0, align 4
@S626_LP_ISEL = common dso_local global i32 0, align 4
@S626_P_GPIO = common dso_local global i64 0, align 8
@S626_GPIO1_HI = common dso_local global i32 0, align 4
@s626_ai_eoc = common dso_local global i32 0, align 4
@S626_P_FB_BUFFER1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s626_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @CR_CHAN(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @CR_RANGE(i32 %23)
  store i64 %24, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  %29 = shl i64 %28, 8
  %30 = load i64, i64* @S626_GSEL_BIPOLAR5V, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %12, align 8
  br label %37

32:                                               ; preds = %4
  %33 = load i64, i64* %10, align 8
  %34 = shl i64 %33, 8
  %35 = load i64, i64* @S626_GSEL_BIPOLAR10V, align 8
  %36 = or i64 %34, %35
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = load i32, i32* @S626_LP_GSEL, align 4
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @s626_debi_write(%struct.comedi_device* %38, i32 %39, i64 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = load i32, i32* @S626_LP_ISEL, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @s626_debi_write(%struct.comedi_device* %42, i32 %43, i64 %44)
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %127, %37
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %130

52:                                               ; preds = %46
  %53 = call i32 @usleep_range(i32 10, i32 20)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @S626_P_GPIO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @S626_GPIO1_HI, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @S626_P_GPIO, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @S626_GPIO1_HI, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @S626_P_GPIO, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @S626_GPIO1_HI, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @S626_P_GPIO, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 %83, i64 %88)
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @S626_GPIO1_HI, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @S626_P_GPIO, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %100 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %101 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %102 = load i32, i32* @s626_ai_eoc, align 4
  %103 = call i32 @comedi_timeout(%struct.comedi_device* %99, %struct.comedi_subdevice* %100, %struct.comedi_insn* %101, i32 %102, i32 0)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %52
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %5, align 4
  br label %204

108:                                              ; preds = %52
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @S626_P_FB_BUFFER1, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @readl(i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @s626_ai_reg_to_uint(i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %111, %108
  %126 = call i32 @udelay(i32 4)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %46

130:                                              ; preds = %46
  %131 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @S626_P_GPIO, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @readl(i64 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @S626_GPIO1_HI, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @S626_P_GPIO, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 %140, i64 %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @S626_GPIO1_HI, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %152 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @S626_P_GPIO, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @S626_GPIO1_HI, align 4
  %159 = xor i32 %158, -1
  %160 = and i32 %157, %159
  %161 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %162 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @S626_P_GPIO, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 %160, i64 %165)
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @S626_GPIO1_HI, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %171 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @S626_P_GPIO, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  %176 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %178 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %179 = load i32, i32* @s626_ai_eoc, align 4
  %180 = call i32 @comedi_timeout(%struct.comedi_device* %176, %struct.comedi_subdevice* %177, %struct.comedi_insn* %178, i32 %179, i32 0)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %130
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %5, align 4
  br label %204

185:                                              ; preds = %130
  %186 = load i32, i32* %16, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %190 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @S626_P_FB_BUFFER1, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @readl(i64 %193)
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @s626_ai_reg_to_uint(i32 %195)
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  br label %202

202:                                              ; preds = %188, %185
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %183, %106
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @comedi_timeout(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32, i32) #1

declare dso_local i32 @s626_ai_reg_to_uint(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
