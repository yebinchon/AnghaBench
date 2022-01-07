; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_report_tamper_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imxdi.c_di_report_tamper_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdi_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@DTCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"DryIce tamper event detected\0A\00", align 1
@DSR_VTD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%sVoltage Tamper Event\0A\00", align 1
@DTCR_VTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Spurious \00", align 1
@DSR_CTD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s32768 Hz Clock Tamper Event\0A\00", align 1
@DTCR_CTE = common dso_local global i32 0, align 4
@DSR_TTD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%sTemperature Tamper Event\0A\00", align 1
@DTCR_TTE = common dso_local global i32 0, align 4
@DSR_SAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"%sSecure Controller Alarm Event\0A\00", align 1
@DTCR_SAIE = common dso_local global i32 0, align 4
@DSR_EBD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"%sExternal Boot Tamper Event\0A\00", align 1
@DTCR_EBE = common dso_local global i32 0, align 4
@DSR_ETAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"%sExternal Tamper A Event\0A\00", align 1
@DTCR_ETAE = common dso_local global i32 0, align 4
@DSR_ETBD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"%sExternal Tamper B Event\0A\00", align 1
@DTCR_ETBE = common dso_local global i32 0, align 4
@DSR_WTD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"%sWire-mesh Tamper Event\0A\00", align 1
@DTCR_WTE = common dso_local global i32 0, align 4
@DSR_MCO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"%sMonotonic-counter Overflow Event\0A\00", align 1
@DTCR_MOE = common dso_local global i32 0, align 4
@DSR_TCO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"%sTimer-counter Overflow Event\0A\00", align 1
@DTCR_TOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imxdi_dev*, i32)* @di_report_tamper_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @di_report_tamper_info(%struct.imxdi_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.imxdi_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imxdi_dev* %0, %struct.imxdi_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %7 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DTCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %13 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DSR_VTD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %23 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DTCR_VTE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %32 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %21, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DSR_CTD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %40 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DTCR_CTE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %38, %33
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DSR_TTD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %57 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @DTCR_TTE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %66 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %55, %50
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DSR_SAD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %74 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DTCR_SAIE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %83 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %72, %67
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @DSR_EBD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %91 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @DTCR_EBE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %100 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %89, %84
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @DSR_ETAD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %108 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @DTCR_ETAE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %117 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %106, %101
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @DSR_ETBD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %118
  %124 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %125 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @DTCR_ETBE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %123, %118
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @DSR_WTD, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %142 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @DTCR_WTE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %151 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %140, %135
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @DSR_MCO, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %159 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @DTCR_MOE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %168 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %161, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %157, %152
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @DSR_TCO, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load %struct.imxdi_dev*, %struct.imxdi_dev** %3, align 8
  %176 = getelementptr inbounds %struct.imxdi_dev, %struct.imxdi_dev* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @DTCR_TOE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %185 = call i32 (i32*, i8*, ...) @dev_emerg(i32* %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %174, %169
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_emerg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
