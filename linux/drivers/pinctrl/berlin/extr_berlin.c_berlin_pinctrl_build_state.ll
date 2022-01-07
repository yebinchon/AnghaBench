; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/berlin/extr_berlin.c_berlin_pinctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.berlin_pinctrl = type { i32, %struct.berlin_pinctrl_function*, %struct.TYPE_2__* }
%struct.berlin_pinctrl_function = type { i8**, i32, i64 }
%struct.TYPE_2__ = type { i32, %struct.berlin_desc_group* }
%struct.berlin_desc_group = type { i32, i8*, %struct.berlin_desc_function* }
%struct.berlin_desc_function = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @berlin_pinctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pinctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.berlin_pinctrl*, align 8
  %5 = alloca %struct.berlin_desc_group*, align 8
  %6 = alloca %struct.berlin_desc_function*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.berlin_pinctrl_function*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.berlin_pinctrl* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.berlin_pinctrl* %13, %struct.berlin_pinctrl** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %15 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %19 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %29, i64 %31
  store %struct.berlin_desc_group* %32, %struct.berlin_desc_group** %5, align 8
  %33 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %5, align 8
  %34 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = shl i32 1, %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.berlin_pinctrl_function* @kcalloc(i32 %44, i32 24, i32 %45)
  %47 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %47, i32 0, i32 1
  store %struct.berlin_pinctrl_function* %46, %struct.berlin_pinctrl_function** %48, align 8
  %49 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %50 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %49, i32 0, i32 1
  %51 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %50, align 8
  %52 = icmp ne %struct.berlin_pinctrl_function* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %215

56:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %91, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %60 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %57
  %66 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %67 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %70, i64 %72
  store %struct.berlin_desc_group* %73, %struct.berlin_desc_group** %5, align 8
  %74 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %5, align 8
  %75 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %74, i32 0, i32 2
  %76 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %75, align 8
  store %struct.berlin_desc_function* %76, %struct.berlin_desc_function** %6, align 8
  br label %77

77:                                               ; preds = %82, %65
  %78 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %79 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %84 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %85 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @berlin_pinctrl_add_function(%struct.berlin_pinctrl* %83, i64 %86)
  %88 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %89 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %88, i32 1
  store %struct.berlin_desc_function* %89, %struct.berlin_desc_function** %6, align 8
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %57

94:                                               ; preds = %57
  %95 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %95, i32 0, i32 1
  %97 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %96, align 8
  %98 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %99 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 24
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.berlin_pinctrl_function* @krealloc(%struct.berlin_pinctrl_function* %97, i32 %103, i32 %104)
  %106 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %107 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %106, i32 0, i32 1
  store %struct.berlin_pinctrl_function* %105, %struct.berlin_pinctrl_function** %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %211, %94
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %111 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %214

116:                                              ; preds = %108
  %117 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %118 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %121, i64 %123
  store %struct.berlin_desc_group* %124, %struct.berlin_desc_group** %5, align 8
  %125 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %5, align 8
  %126 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %125, i32 0, i32 2
  %127 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %126, align 8
  store %struct.berlin_desc_function* %127, %struct.berlin_desc_function** %6, align 8
  br label %128

128:                                              ; preds = %203, %116
  %129 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %130 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %210

133:                                              ; preds = %128
  %134 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %135 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %134, i32 0, i32 1
  %136 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %135, align 8
  store %struct.berlin_pinctrl_function* %136, %struct.berlin_pinctrl_function** %9, align 8
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %152, %133
  %138 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %139 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %144 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %147 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @strcmp(i64 %145, i64 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  store i32 1, i32* %11, align 4
  br label %155

152:                                              ; preds = %142
  %153 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %154 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %153, i32 1
  store %struct.berlin_pinctrl_function* %154, %struct.berlin_pinctrl_function** %9, align 8
  br label %137

155:                                              ; preds = %151, %137
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %155
  %159 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %160 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %159, i32 0, i32 1
  %161 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %160, align 8
  %162 = call i32 @kfree(%struct.berlin_pinctrl_function* %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %215

165:                                              ; preds = %155
  %166 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %167 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %192, label %170

170:                                              ; preds = %165
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %174 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i8** @devm_kcalloc(i32* %172, i32 %175, i32 8, i32 %176)
  %178 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %179 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %178, i32 0, i32 0
  store i8** %177, i8*** %179, align 8
  %180 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %181 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = icmp ne i8** %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %170
  %185 = load %struct.berlin_pinctrl*, %struct.berlin_pinctrl** %4, align 8
  %186 = getelementptr inbounds %struct.berlin_pinctrl, %struct.berlin_pinctrl* %185, i32 0, i32 1
  %187 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %186, align 8
  %188 = call i32 @kfree(%struct.berlin_pinctrl_function* %187)
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %215

191:                                              ; preds = %170
  br label %192

192:                                              ; preds = %191, %165
  %193 = load %struct.berlin_pinctrl_function*, %struct.berlin_pinctrl_function** %9, align 8
  %194 = getelementptr inbounds %struct.berlin_pinctrl_function, %struct.berlin_pinctrl_function* %193, i32 0, i32 0
  %195 = load i8**, i8*** %194, align 8
  store i8** %195, i8*** %10, align 8
  br label %196

196:                                              ; preds = %200, %192
  %197 = load i8**, i8*** %10, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i8**, i8*** %10, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i32 1
  store i8** %202, i8*** %10, align 8
  br label %196

203:                                              ; preds = %196
  %204 = load %struct.berlin_desc_group*, %struct.berlin_desc_group** %5, align 8
  %205 = getelementptr inbounds %struct.berlin_desc_group, %struct.berlin_desc_group* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load i8**, i8*** %10, align 8
  store i8* %206, i8** %207, align 8
  %208 = load %struct.berlin_desc_function*, %struct.berlin_desc_function** %6, align 8
  %209 = getelementptr inbounds %struct.berlin_desc_function, %struct.berlin_desc_function* %208, i32 1
  store %struct.berlin_desc_function* %209, %struct.berlin_desc_function** %6, align 8
  br label %128

210:                                              ; preds = %128
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %108

214:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %214, %184, %158, %53
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.berlin_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.berlin_pinctrl_function* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @berlin_pinctrl_add_function(%struct.berlin_pinctrl*, i64) #1

declare dso_local %struct.berlin_pinctrl_function* @krealloc(%struct.berlin_pinctrl_function*, i32, i32) #1

declare dso_local i32 @strcmp(i64, i64) #1

declare dso_local i32 @kfree(%struct.berlin_pinctrl_function*) #1

declare dso_local i8** @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
