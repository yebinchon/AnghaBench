; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_watchpoint_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm-ccn.c_arm_ccn_pmu_xp_watchpoint_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_8__, %struct.hw_perf_event, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.hw_perf_event = type { i64, i64, i32 }
%struct.arm_ccn = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.arm_ccn_component* }
%struct.arm_ccn_component = type { i64 }

@CCN_XP_DT_INTERFACE_SEL = common dso_local global i64 0, align 8
@CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK = common dso_local global i32 0, align 4
@CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK = common dso_local global i32 0, align 4
@CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @arm_ccn_pmu_xp_watchpoint_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_ccn_pmu_xp_watchpoint_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arm_ccn*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.arm_ccn_component*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.arm_ccn* @pmu_to_arm_ccn(i32 %14)
  store %struct.arm_ccn* %15, %struct.arm_ccn** %3, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  store %struct.hw_perf_event* %17, %struct.hw_perf_event** %4, align 8
  %18 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %19 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %26, align 8
  store %struct.arm_ccn_component* %27, %struct.arm_ccn_component** %5, align 8
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %40 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @CCN_CONFIG_MASK(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.arm_ccn*, %struct.arm_ccn** %3, align 8
  %52 = getelementptr inbounds %struct.arm_ccn, %struct.arm_ccn* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @CCN_CONFIG_MASK(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @CCN_XP_DT_CONFIG__DT_CFG__WATCHPOINT(i64 %63)
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %68 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CCN_XP_DT_INTERFACE_SEL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT(i64 %74)
  %76 = shl i32 %73, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %81 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @CCN_CONFIG_DIR(i32 %83)
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT(i64 %85)
  %87 = shl i32 %84, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK, align 4
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT(i64 %91)
  %93 = shl i32 %90, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %98 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @CCN_CONFIG_PORT(i32 %100)
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT(i64 %102)
  %104 = shl i32 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK, align 4
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT(i64 %108)
  %110 = shl i32 %107, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %115 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @CCN_CONFIG_VC(i32 %117)
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT(i64 %119)
  %121 = shl i32 %118, %120
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %126 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CCN_XP_DT_INTERFACE_SEL, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %133 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = call i64 @CCN_XP_DT_CMP_VAL_L(i64 %135)
  %137 = add nsw i64 %134, %136
  %138 = call i32 @writel(i32 %131, i64 %137)
  %139 = load i32, i32* %8, align 4
  %140 = ashr i32 %139, 32
  %141 = and i32 %140, 2147483647
  %142 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %143 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i64 @CCN_XP_DT_CMP_VAL_L(i64 %145)
  %147 = add nsw i64 %144, %146
  %148 = add nsw i64 %147, 4
  %149 = call i32 @writel(i32 %141, i64 %148)
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %152 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = call i64 @CCN_XP_DT_CMP_VAL_H(i64 %154)
  %156 = add nsw i64 %153, %155
  %157 = call i32 @writel(i32 %150, i64 %156)
  %158 = load i32, i32* %9, align 4
  %159 = ashr i32 %158, 32
  %160 = and i32 %159, 268435455
  %161 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %162 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i64 @CCN_XP_DT_CMP_VAL_H(i64 %164)
  %166 = add nsw i64 %163, %165
  %167 = add nsw i64 %166, 4
  %168 = call i32 @writel(i32 %160, i64 %167)
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %171 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = call i64 @CCN_XP_DT_CMP_MASK_L(i64 %173)
  %175 = add nsw i64 %172, %174
  %176 = call i32 @writel(i32 %169, i64 %175)
  %177 = load i32, i32* %10, align 4
  %178 = ashr i32 %177, 32
  %179 = and i32 %178, 2147483647
  %180 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %181 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i64 @CCN_XP_DT_CMP_MASK_L(i64 %183)
  %185 = add nsw i64 %182, %184
  %186 = add nsw i64 %185, 4
  %187 = call i32 @writel(i32 %179, i64 %186)
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %190 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i64 @CCN_XP_DT_CMP_MASK_H(i64 %192)
  %194 = add nsw i64 %191, %193
  %195 = call i32 @writel(i32 %188, i64 %194)
  %196 = load i32, i32* %11, align 4
  %197 = ashr i32 %196, 32
  %198 = and i32 %197, 268435455
  %199 = load %struct.arm_ccn_component*, %struct.arm_ccn_component** %5, align 8
  %200 = getelementptr inbounds %struct.arm_ccn_component, %struct.arm_ccn_component* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %6, align 8
  %203 = call i64 @CCN_XP_DT_CMP_MASK_H(i64 %202)
  %204 = add nsw i64 %201, %203
  %205 = add nsw i64 %204, 4
  %206 = call i32 @writel(i32 %198, i64 %205)
  ret void
}

declare dso_local %struct.arm_ccn* @pmu_to_arm_ccn(i32) #1

declare dso_local i64 @CCN_CONFIG_MASK(i32) #1

declare dso_local i32 @CCN_XP_DT_CONFIG__DT_CFG__WATCHPOINT(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT(i64) #1

declare dso_local i32 @CCN_CONFIG_DIR(i32) #1

declare dso_local i32 @CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT(i64) #1

declare dso_local i32 @CCN_CONFIG_PORT(i32) #1

declare dso_local i32 @CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT(i64) #1

declare dso_local i32 @CCN_CONFIG_VC(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CCN_XP_DT_CMP_VAL_L(i64) #1

declare dso_local i64 @CCN_XP_DT_CMP_VAL_H(i64) #1

declare dso_local i64 @CCN_XP_DT_CMP_MASK_L(i64) #1

declare dso_local i64 @CCN_XP_DT_CMP_MASK_H(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
