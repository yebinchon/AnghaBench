; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_di_inttrig_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_di_inttrig_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.apci1500_private* }
%struct.apci1500_private = type { i32*, i32*, i32* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@Z8536_PAB_MODE_PMS_DISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Z8536_PA_PM_REG = common dso_local global i32 0, align 4
@Z8536_PA_PT_REG = common dso_local global i32 0, align 4
@Z8536_PA_PP_REG = common dso_local global i32 0, align 4
@Z8536_PB_PM_REG = common dso_local global i32 0, align 4
@Z8536_PB_PT_REG = common dso_local global i32 0, align 4
@Z8536_PB_PP_REG = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_PMS_AND = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_PMS_OR = common dso_local global i32 0, align 4
@Z8536_PA_MODE_REG = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_PMS_MASK = common dso_local global i32 0, align 4
@Z8536_PAB_MODE_IMO = common dso_local global i32 0, align 4
@Z8536_CMD_SET_IE = common dso_local global i32 0, align 4
@Z8536_PA_CMDSTAT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Port A configured for %s mode pattern detection\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@Z8536_PB_MODE_REG = common dso_local global i32 0, align 4
@Z8536_PB_CMDSTAT_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Port B configured for %s mode pattern detection\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"digital trigger %d is not configured\0A\00", align 1
@Z8536_INT_CTRL_MIE = common dso_local global i32 0, align 4
@Z8536_INT_CTRL_DLC = common dso_local global i32 0, align 4
@Z8536_INT_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @apci1500_di_inttrig_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1500_di_inttrig_start(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.apci1500_private*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load %struct.apci1500_private*, %struct.apci1500_private** %17, align 8
  store %struct.apci1500_private* %18, %struct.apci1500_private** %8, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.comedi_cmd* %22, %struct.comedi_cmd** %9, align 8
  %23 = load i32, i32* @Z8536_PAB_MODE_PMS_DISABLE, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @Z8536_PAB_MODE_PMS_DISABLE, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 1
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %223

38:                                               ; preds = %3
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = call i32 @apci1500_port_enable(%struct.comedi_device* %39, i32 0)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %42 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %43 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* @Z8536_PA_PM_REG, align 4
  %51 = call i32 @z8536_write(%struct.comedi_device* %41, i32 %49, i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %54 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 255
  %61 = load i32, i32* @Z8536_PA_PT_REG, align 4
  %62 = call i32 @z8536_write(%struct.comedi_device* %52, i32 %60, i32 %61)
  %63 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %64 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %65 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* @Z8536_PA_PP_REG, align 4
  %73 = call i32 @z8536_write(%struct.comedi_device* %63, i32 %71, i32 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %75 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %76 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = load i32, i32* @Z8536_PB_PM_REG, align 4
  %85 = call i32 @z8536_write(%struct.comedi_device* %74, i32 %83, i32 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %88 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = load i32, i32* @Z8536_PB_PT_REG, align 4
  %97 = call i32 @z8536_write(%struct.comedi_device* %86, i32 %95, i32 %96)
  %98 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %99 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %100 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load i32, i32* @Z8536_PB_PP_REG, align 4
  %109 = call i32 @z8536_write(%struct.comedi_device* %98, i32 %107, i32 %108)
  %110 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %111 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 255
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %38
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @Z8536_PAB_MODE_PMS_AND, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @Z8536_PAB_MODE_PMS_OR, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %10, align 4
  %128 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %129 = load i32, i32* @Z8536_PA_MODE_REG, align 4
  %130 = call i32 @z8536_read(%struct.comedi_device* %128, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @Z8536_PAB_MODE_PMS_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %15, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @Z8536_PAB_MODE_IMO, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %15, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %15, align 4
  %140 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @Z8536_PA_MODE_REG, align 4
  %143 = call i32 @z8536_write(%struct.comedi_device* %140, i32 %141, i32 %142)
  %144 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %145 = load i32, i32* @Z8536_CMD_SET_IE, align 4
  %146 = load i32, i32* @Z8536_PA_CMDSTAT_REG, align 4
  %147 = call i32 @z8536_write(%struct.comedi_device* %144, i32 %145, i32 %146)
  store i32 1, i32* %14, align 4
  %148 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %149 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %155 = call i32 (i32, i8*, ...) @dev_dbg(i32 %150, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %126, %38
  %157 = load %struct.apci1500_private*, %struct.apci1500_private** %8, align 8
  %158 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 65280
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %203

166:                                              ; preds = %156
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @Z8536_PAB_MODE_PMS_AND, align 4
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @Z8536_PAB_MODE_PMS_OR, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %11, align 4
  %175 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %176 = load i32, i32* @Z8536_PB_MODE_REG, align 4
  %177 = call i32 @z8536_read(%struct.comedi_device* %175, i32 %176)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* @Z8536_PAB_MODE_PMS_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %15, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @Z8536_PAB_MODE_IMO, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %15, align 4
  %187 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* @Z8536_PB_MODE_REG, align 4
  %190 = call i32 @z8536_write(%struct.comedi_device* %187, i32 %188, i32 %189)
  %191 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %192 = load i32, i32* @Z8536_CMD_SET_IE, align 4
  %193 = load i32, i32* @Z8536_PB_CMDSTAT_REG, align 4
  %194 = call i32 @z8536_write(%struct.comedi_device* %191, i32 %192, i32 %193)
  store i32 1, i32* %14, align 4
  %195 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %196 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %202 = call i32 (i32, i8*, ...) @dev_dbg(i32 %197, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %173, %156
  %204 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %205 = call i32 @apci1500_port_enable(%struct.comedi_device* %204, i32 1)
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %203
  %209 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %210 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i32, i8*, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %223

216:                                              ; preds = %203
  %217 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %218 = load i32, i32* @Z8536_INT_CTRL_MIE, align 4
  %219 = load i32, i32* @Z8536_INT_CTRL_DLC, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @Z8536_INT_CTRL_REG, align 4
  %222 = call i32 @z8536_write(%struct.comedi_device* %217, i32 %220, i32 %221)
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %216, %208, %35
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @apci1500_port_enable(%struct.comedi_device*, i32) #1

declare dso_local i32 @z8536_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @z8536_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
