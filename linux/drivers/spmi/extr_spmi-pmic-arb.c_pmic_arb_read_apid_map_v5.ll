; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_read_apid_map_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi-pmic-arb.c_pmic_arb_read_apid_map_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_pmic_arb = type { i64, i64, i64, i64*, i64, i64, %struct.TYPE_4__*, %struct.apid_data*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.apid_data = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 (i64)* }

@PMIC_ARB_PPID_MASK = common dso_local global i64 0, align 8
@INVALID_EE = common dso_local global i64 0, align 8
@PMIC_ARB_APID_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"PPID APID Write-EE IRQ-EE\0A\00", align 1
@PMIC_ARB_MAX_PPID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%#03X %3u %2u %2u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_pmic_arb*)* @pmic_arb_read_apid_map_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_arb_read_apid_map_v5(%struct.spmi_pmic_arb* %0) #0 {
  %2 = alloca %struct.spmi_pmic_arb*, align 8
  %3 = alloca %struct.apid_data*, align 8
  %4 = alloca %struct.apid_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.spmi_pmic_arb* %0, %struct.spmi_pmic_arb** %2, align 8
  %12 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %13 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %12, i32 0, i32 7
  %14 = load %struct.apid_data*, %struct.apid_data** %13, align 8
  store %struct.apid_data* %14, %struct.apid_data** %3, align 8
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %134, %1
  %16 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %17 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %16, i32 0, i32 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (i64)*, i64 (i64)** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 %20(i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %25 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %139

29:                                               ; preds = %15
  %30 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %31 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl_relaxed(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %134

39:                                               ; preds = %29
  %40 = load i64, i64* %10, align 8
  %41 = ashr i64 %40, 8
  %42 = load i64, i64* @PMIC_ARB_PPID_MASK, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @PMIC_ARB_CHAN_IS_IRQ_OWNER(i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %47 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @SPMI_OWNERSHIP_TABLE_REG(i64 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i64 @readl_relaxed(i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @SPMI_OWNERSHIP_PERIPH2OWNER(i64 %53)
  %55 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %56 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %39
  %60 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %61 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  br label %65

63:                                               ; preds = %39
  %64 = load i64, i64* @INVALID_EE, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i64 [ %62, %59 ], [ %64, %63 ]
  %67 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %68 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %70 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %76 = and i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %79 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %85 = xor i64 %84, -1
  %86 = and i64 %83, %85
  store i64 %86, i64* %6, align 8
  %87 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %88 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %87, i32 0, i32 7
  %89 = load %struct.apid_data*, %struct.apid_data** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %89, i64 %90
  store %struct.apid_data* %91, %struct.apid_data** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %65
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.apid_data*, %struct.apid_data** %4, align 8
  %99 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %102 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %107 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.apid_data*, %struct.apid_data** %4, align 8
  %110 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %127

111:                                              ; preds = %97, %94, %65
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114, %111
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %120 = or i64 %118, %119
  %121 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %122 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %120, i64* %125, align 8
  br label %126

126:                                              ; preds = %117, %114
  br label %127

127:                                              ; preds = %126, %105
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %130 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %133 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %132, i32 0, i32 5
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %38
  %135 = load i64, i64* %5, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %5, align 8
  %137 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %138 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %137, i32 1
  store %struct.apid_data* %138, %struct.apid_data** %3, align 8
  br label %15

139:                                              ; preds = %28
  %140 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %141 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %140, i32 0, i32 6
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %145

145:                                              ; preds = %184, %139
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @PMIC_ARB_MAX_PPID, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %145
  %150 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %151 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %149
  %161 = load i64, i64* @PMIC_ARB_APID_VALID, align 8
  %162 = xor i64 %161, -1
  %163 = load i64, i64* %6, align 8
  %164 = and i64 %163, %162
  store i64 %164, i64* %6, align 8
  %165 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %166 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %165, i32 0, i32 7
  %167 = load %struct.apid_data*, %struct.apid_data** %166, align 8
  %168 = load i64, i64* %6, align 8
  %169 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %167, i64 %168
  store %struct.apid_data* %169, %struct.apid_data** %3, align 8
  %170 = load %struct.spmi_pmic_arb*, %struct.spmi_pmic_arb** %2, align 8
  %171 = getelementptr inbounds %struct.spmi_pmic_arb, %struct.spmi_pmic_arb* %170, i32 0, i32 6
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %6, align 8
  %176 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %177 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.apid_data*, %struct.apid_data** %3, align 8
  %180 = getelementptr inbounds %struct.apid_data, %struct.apid_data* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %174, i64 %175, i64 %178, i64 %181)
  br label %183

183:                                              ; preds = %160, %149
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %7, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %7, align 8
  br label %145

187:                                              ; preds = %145
  ret i32 0
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @PMIC_ARB_CHAN_IS_IRQ_OWNER(i64) #1

declare dso_local i64 @SPMI_OWNERSHIP_TABLE_REG(i64) #1

declare dso_local i64 @SPMI_OWNERSHIP_PERIPH2OWNER(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
