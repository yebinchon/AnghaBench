; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32 }

@PWRAP_CIPHER_SWRST = common dso_local global i32 0, align 4
@PWRAP_CIPHER_KEY_SEL = common dso_local global i32 0, align 4
@PWRAP_CIPHER_IV_SEL = common dso_local global i32 0, align 4
@PWRAP_CIPHER_LOAD = common dso_local global i32 0, align 4
@PWRAP_CIPHER_START = common dso_local global i32 0, align 4
@PWRAP_CIPHER_EN = common dso_local global i32 0, align 4
@PWRAP_DEW_CIPHER_SWRST = common dso_local global i64 0, align 8
@PWRAP_DEW_CIPHER_KEY_SEL = common dso_local global i64 0, align 8
@PWRAP_DEW_CIPHER_IV_SEL = common dso_local global i64 0, align 8
@PWRAP_DEW_CIPHER_LOAD = common dso_local global i64 0, align 8
@PWRAP_DEW_CIPHER_START = common dso_local global i64 0, align 8
@PWRAP_DEW_CIPHER_EN = common dso_local global i64 0, align 8
@pwrap_is_cipher_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cipher data ready@AP fail, ret=%d\0A\00", align 1
@pwrap_is_pmic_cipher_ready = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"timeout waiting for cipher data ready@PMIC\0A\00", align 1
@PWRAP_DEW_CIPHER_MODE = common dso_local global i64 0, align 8
@pwrap_is_fsm_idle_and_sync_idle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cipher mode idle fail, ret=%d\0A\00", align 1
@PWRAP_CIPHER_MODE = common dso_local global i32 0, align 4
@PWRAP_DEW_WRITE_TEST = common dso_local global i64 0, align 8
@PWRAP_DEW_WRITE_TEST_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"rdata=0x%04X\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*)* @pwrap_init_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_init_cipher(%struct.pmic_wrapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmic_wrapper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %7 = load i32, i32* @PWRAP_CIPHER_SWRST, align 4
  %8 = call i32 @pwrap_writel(%struct.pmic_wrapper* %6, i32 1, i32 %7)
  %9 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %10 = load i32, i32* @PWRAP_CIPHER_SWRST, align 4
  %11 = call i32 @pwrap_writel(%struct.pmic_wrapper* %9, i32 0, i32 %10)
  %12 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %13 = load i32, i32* @PWRAP_CIPHER_KEY_SEL, align 4
  %14 = call i32 @pwrap_writel(%struct.pmic_wrapper* %12, i32 1, i32 %13)
  %15 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %16 = load i32, i32* @PWRAP_CIPHER_IV_SEL, align 4
  %17 = call i32 @pwrap_writel(%struct.pmic_wrapper* %15, i32 2, i32 %16)
  %18 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %19 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %39 [
    i32 131, label %23
    i32 135, label %30
    i32 134, label %30
    i32 133, label %30
    i32 130, label %30
    i32 128, label %30
    i32 132, label %34
    i32 129, label %38
  ]

23:                                               ; preds = %1
  %24 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %25 = load i32, i32* @PWRAP_CIPHER_LOAD, align 4
  %26 = call i32 @pwrap_writel(%struct.pmic_wrapper* %24, i32 1, i32 %25)
  %27 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %28 = load i32, i32* @PWRAP_CIPHER_START, align 4
  %29 = call i32 @pwrap_writel(%struct.pmic_wrapper* %27, i32 1, i32 %28)
  br label %39

30:                                               ; preds = %1, %1, %1, %1, %1
  %31 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %32 = load i32, i32* @PWRAP_CIPHER_EN, align 4
  %33 = call i32 @pwrap_writel(%struct.pmic_wrapper* %31, i32 1, i32 %32)
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %36 = load i32, i32* @PWRAP_CIPHER_EN, align 4
  %37 = call i32 @pwrap_writel(%struct.pmic_wrapper* %35, i32 0, i32 %36)
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %1, %38, %34, %30, %23
  %40 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %41 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %42 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @PWRAP_DEW_CIPHER_SWRST, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pwrap_write(%struct.pmic_wrapper* %40, i32 %48, i32 1)
  %50 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %51 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %52 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @PWRAP_DEW_CIPHER_SWRST, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @pwrap_write(%struct.pmic_wrapper* %50, i32 %58, i32 0)
  %60 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %61 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %62 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @PWRAP_DEW_CIPHER_KEY_SEL, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @pwrap_write(%struct.pmic_wrapper* %60, i32 %68, i32 1)
  %70 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %71 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %72 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @PWRAP_DEW_CIPHER_IV_SEL, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @pwrap_write(%struct.pmic_wrapper* %70, i32 %78, i32 2)
  %80 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %81 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %117 [
    i32 136, label %85
    i32 139, label %106
    i32 138, label %106
    i32 137, label %106
  ]

85:                                               ; preds = %39
  %86 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %87 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %88 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PWRAP_DEW_CIPHER_LOAD, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @pwrap_write(%struct.pmic_wrapper* %86, i32 %94, i32 1)
  %96 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %97 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %98 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @PWRAP_DEW_CIPHER_START, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @pwrap_write(%struct.pmic_wrapper* %96, i32 %104, i32 1)
  br label %118

106:                                              ; preds = %39, %39, %39
  %107 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %108 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %109 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @PWRAP_DEW_CIPHER_EN, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @pwrap_write(%struct.pmic_wrapper* %107, i32 %115, i32 1)
  br label %118

117:                                              ; preds = %39
  br label %118

118:                                              ; preds = %117, %106, %85
  %119 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %120 = load i32, i32* @pwrap_is_cipher_ready, align 4
  %121 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %119, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %126 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %207

131:                                              ; preds = %118
  %132 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %133 = load i32, i32* @pwrap_is_pmic_cipher_ready, align 4
  %134 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %139 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %207

143:                                              ; preds = %131
  %144 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %145 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %146 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* @PWRAP_DEW_CIPHER_MODE, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @pwrap_write(%struct.pmic_wrapper* %144, i32 %152, i32 1)
  %154 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %155 = load i32, i32* @pwrap_is_fsm_idle_and_sync_idle, align 4
  %156 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %154, i32 %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %143
  %160 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %161 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @dev_err(i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %207

166:                                              ; preds = %143
  %167 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %168 = load i32, i32* @PWRAP_CIPHER_MODE, align 4
  %169 = call i32 @pwrap_writel(%struct.pmic_wrapper* %167, i32 1, i32 %168)
  %170 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %171 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %172 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @PWRAP_DEW_WRITE_TEST, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @PWRAP_DEW_WRITE_TEST_VAL, align 4
  %180 = call i64 @pwrap_write(%struct.pmic_wrapper* %170, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %166
  %183 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %184 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %185 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @PWRAP_DEW_WRITE_TEST, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @pwrap_read(%struct.pmic_wrapper* %183, i32 %191, i32* %5)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @PWRAP_DEW_WRITE_TEST_VAL, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194, %182, %166
  %199 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %200 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 (i32, i8*, ...) @dev_err(i32 %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EFAULT, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %207

206:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %198, %159, %137, %124
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i64 @pwrap_write(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @pwrap_wait_for_state(%struct.pmic_wrapper*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @pwrap_read(%struct.pmic_wrapper*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
