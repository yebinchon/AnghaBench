; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_check_chanlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_ai_check_chanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci1710_private* }
%struct.pci1710_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32*, i32 }

@AREF_DIFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Odd channel cannot be differential input!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci1710_ai_check_chanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_ai_check_chanlist(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca %struct.pci1710_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.pci1710_private*, %struct.pci1710_private** %18, align 8
  store %struct.pci1710_private* %19, %struct.pci1710_private** %8, align 8
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CR_CHAN(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_AREF(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, 1
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = urem i32 %33, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pci1710_private*, %struct.pci1710_private** %8, align 8
  %47 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %229

48:                                               ; preds = %3
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  store i32 %53, i32* %54, align 16
  store i32 1, i32* %14, align 4
  br label %55

55:                                               ; preds = %145, %48
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %148

61:                                               ; preds = %55
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CR_CHAN(i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CR_AREF(i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %82, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %61
  br label %148

92:                                               ; preds = %61
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @AREF_DIFF, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %229

107:                                              ; preds = %96, %92
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @AREF_DIFF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = urem i32 %113, %116
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %111, %107
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %229

133:                                              ; preds = %118
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %142
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %55

148:                                              ; preds = %91, %55
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %222, %148
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %225

156:                                              ; preds = %150
  %157 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %158 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = urem i32 %164, %165
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %163, %169
  br i1 %170, label %171, label %221

171:                                              ; preds = %156
  %172 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %173 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @CR_CHAN(i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @CR_RANGE(i32 %184)
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @CR_AREF(i32 %189)
  %191 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %192 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %13, align 4
  %196 = urem i32 %194, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @CR_CHAN(i32 %199)
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = load i32, i32* %13, align 4
  %206 = urem i32 %204, %205
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @CR_RANGE(i32 %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %13, align 4
  %213 = urem i32 %211, %212
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @CR_AREF(i32 %216)
  %218 = call i32 (i32, i8*, ...) @dev_err(i32 %174, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %180, i32 %185, i32 %190, i32 %200, i32 %210, i32 %217)
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %229

221:                                              ; preds = %156
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %150

225:                                              ; preds = %150
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.pci1710_private*, %struct.pci1710_private** %8, align 8
  %228 = getelementptr inbounds %struct.pci1710_private, %struct.pci1710_private* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %225, %171, %122, %100, %42
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
