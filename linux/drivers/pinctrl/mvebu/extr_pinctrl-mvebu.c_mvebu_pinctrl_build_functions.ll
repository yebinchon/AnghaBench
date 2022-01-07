; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_build_functions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinctrl_build_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mvebu_pinctrl = type { i32, i32, i32, %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_function*, %struct.TYPE_3__ }
%struct.mvebu_pinctrl_group = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mvebu_pinctrl_function = type { i8**, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"More functions than pins(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mvebu_pinctrl*)* @mvebu_pinctrl_build_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pinctrl_build_functions(%struct.platform_device* %0, %struct.mvebu_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mvebu_pinctrl*, align 8
  %6 = alloca %struct.mvebu_pinctrl_function*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvebu_pinctrl_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mvebu_pinctrl_group*, align 8
  %14 = alloca %struct.mvebu_pinctrl_function*, align 8
  %15 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mvebu_pinctrl* %1, %struct.mvebu_pinctrl** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %17 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @devm_kcalloc(i32* %21, i32 %22, i32 16, i32 %23)
  %25 = bitcast i8* %24 to %struct.mvebu_pinctrl_function*
  store %struct.mvebu_pinctrl_function* %25, %struct.mvebu_pinctrl_function** %6, align 8
  %26 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %6, align 8
  %27 = icmp ne %struct.mvebu_pinctrl_function* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %212

31:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %105, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %35 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %108

38:                                               ; preds = %32
  %39 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %40 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %39, i32 0, i32 3
  %41 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %41, i64 %43
  store %struct.mvebu_pinctrl_group* %44, %struct.mvebu_pinctrl_group** %11, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %101, %38
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %48 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %104

51:                                               ; preds = %45
  %52 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %53 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %58 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %61 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %59, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %56
  br label %101

71:                                               ; preds = %56, %51
  %72 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %6, align 8
  %73 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %11, align 8
  %74 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @_add_function(%struct.mvebu_pinctrl_function* %72, i32* %8, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @EOVERFLOW, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %71
  %87 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %90 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %86, %71
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %97, %70
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %45

104:                                              ; preds = %45
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %32

108:                                              ; preds = %32
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %111 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %6, align 8
  %113 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %114 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %113, i32 0, i32 4
  store %struct.mvebu_pinctrl_function* %112, %struct.mvebu_pinctrl_function** %114, align 8
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %208, %108
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %118 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %211

121:                                              ; preds = %115
  %122 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %123 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %122, i32 0, i32 3
  %124 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %124, i64 %126
  store %struct.mvebu_pinctrl_group* %127, %struct.mvebu_pinctrl_group** %13, align 8
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %204, %121
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %13, align 8
  %131 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %207

134:                                              ; preds = %128
  %135 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %136 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %134
  %140 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %141 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %13, align 8
  %144 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %142, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %139
  br label %204

154:                                              ; preds = %139, %134
  %155 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %5, align 8
  %156 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %13, align 8
  %157 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.mvebu_pinctrl_function* @mvebu_pinctrl_find_function_by_name(%struct.mvebu_pinctrl* %155, i32 %163)
  store %struct.mvebu_pinctrl_function* %164, %struct.mvebu_pinctrl_function** %14, align 8
  %165 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %14, align 8
  %166 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = icmp ne i8** %167, null
  br i1 %168, label %188, label %169

169:                                              ; preds = %154
  %170 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %14, align 8
  %173 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i8* @devm_kcalloc(i32* %171, i32 %174, i32 8, i32 %175)
  %177 = bitcast i8* %176 to i8**
  %178 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %14, align 8
  %179 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %178, i32 0, i32 0
  store i8** %177, i8*** %179, align 8
  %180 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %14, align 8
  %181 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = icmp ne i8** %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %169
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %212

187:                                              ; preds = %169
  br label %188

188:                                              ; preds = %187, %154
  %189 = load %struct.mvebu_pinctrl_function*, %struct.mvebu_pinctrl_function** %14, align 8
  %190 = getelementptr inbounds %struct.mvebu_pinctrl_function, %struct.mvebu_pinctrl_function* %189, i32 0, i32 0
  %191 = load i8**, i8*** %190, align 8
  store i8** %191, i8*** %15, align 8
  br label %192

192:                                              ; preds = %196, %188
  %193 = load i8**, i8*** %15, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i8**, i8*** %15, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %198, i8*** %15, align 8
  br label %192

199:                                              ; preds = %192
  %200 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %13, align 8
  %201 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %15, align 8
  store i8* %202, i8** %203, align 8
  br label %204

204:                                              ; preds = %199, %153
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %128

207:                                              ; preds = %128
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %115

211:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %184, %28
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @_add_function(%struct.mvebu_pinctrl_function*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.mvebu_pinctrl_function* @mvebu_pinctrl_find_function_by_name(%struct.mvebu_pinctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
