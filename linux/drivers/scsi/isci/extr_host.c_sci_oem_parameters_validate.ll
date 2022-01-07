; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_oem_parameters_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_oem_parameters_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_oem_params = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@SCI_MAX_PORTS = common dso_local global i32 0, align 4
@SCIC_SDS_PARM_PHY_MASK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@SCIC_PORT_MANUAL_CONFIGURATION_MODE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_DEVICE_SPIN_UP_COUNT = common dso_local global i32 0, align 4
@ISCI_ROM_VER_1_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_oem_parameters_validate(%struct.sci_oem_params* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sci_oem_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sci_oem_params* %0, %struct.sci_oem_params** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SCI_MAX_PORTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %15 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCIC_SDS_PARM_PHY_MASK_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %215

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SCI_MAX_PHYS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %38 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %49 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %215

61:                                               ; preds = %47, %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %67 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SCI_MAX_PHYS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %79 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %215

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %73

94:                                               ; preds = %73
  br label %132

95:                                               ; preds = %65
  %96 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %97 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SCIC_PORT_MANUAL_CONFIGURATION_MODE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %95
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %118, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @SCI_MAX_PHYS, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %109 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %215

127:                                              ; preds = %121
  br label %131

128:                                              ; preds = %95
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %215

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %94
  %133 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %134 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @MAX_CONCURRENT_DEVICE_SPIN_UP_COUNT, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %132
  %140 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %141 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %139, %132
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %215

148:                                              ; preds = %139
  %149 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %150 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %214

154:                                              ; preds = %148
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @ISCI_ROM_VER_1_1, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %154
  %159 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %160 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %215

167:                                              ; preds = %158, %154
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* @ISCI_ROM_VER_1_1, align 8
  %170 = icmp sge i64 %168, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %167
  %172 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %173 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %8, align 8
  switch i64 %176, label %178 [
    i64 0, label %177
    i64 2, label %177
    i64 3, label %177
    i64 6, label %177
    i64 7, label %177
  ]

177:                                              ; preds = %171, %171, %171, %171, %171
  br label %181

178:                                              ; preds = %171
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %215

181:                                              ; preds = %177
  %182 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %183 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %8, align 8
  %186 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %187 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %181
  %192 = load i64, i64* %8, align 8
  switch i64 %192, label %194 [
    i64 0, label %193
    i64 2, label %193
    i64 3, label %193
  ]

193:                                              ; preds = %191, %191, %191
  br label %197

194:                                              ; preds = %191
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %215

197:                                              ; preds = %193
  br label %212

198:                                              ; preds = %181
  %199 = load %struct.sci_oem_params*, %struct.sci_oem_params** %4, align 8
  %200 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %211

204:                                              ; preds = %198
  %205 = load i64, i64* %8, align 8
  switch i64 %205, label %207 [
    i64 0, label %206
    i64 3, label %206
    i64 6, label %206
  ]

206:                                              ; preds = %204, %204, %204
  br label %210

207:                                              ; preds = %204
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %215

210:                                              ; preds = %206
  br label %211

211:                                              ; preds = %210, %198
  br label %212

212:                                              ; preds = %211, %197
  br label %213

213:                                              ; preds = %212, %167
  br label %214

214:                                              ; preds = %213, %148
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %214, %207, %194, %178, %164, %145, %128, %124, %87, %58, %24
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
