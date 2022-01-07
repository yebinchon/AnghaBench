; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_iram_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_iram_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32 }
%struct.video_frame = type { i32, i32, i32 }

@FLAG_B_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_vde*, %struct.video_frame*, i32, i32)* @tegra_vde_setup_iram_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_vde_setup_iram_tables(%struct.tegra_vde* %0, %struct.video_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tegra_vde*, align 8
  %6 = alloca %struct.video_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.video_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %5, align 8
  store %struct.video_frame* %1, %struct.video_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %16 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %15, i64 0
  %17 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_vde_ref_l0(i32 %18)
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %79, %4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %82

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %28, i64 %31
  store %struct.video_frame* %32, %struct.video_frame** %9, align 8
  %33 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %34 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add i32 %36, 1
  %38 = shl i32 %37, 26
  store i32 %38, i32* %10, align 4
  %39 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %40 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FLAG_B_FRAME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 25
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, 16777216
  store i32 %51, i32* %10, align 4
  %52 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %53 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %58

57:                                               ; preds = %23
  store i32 1792978176, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %27
  %59 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %59, i32 0, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %64, i32 1, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %69, i32 2, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %74, i32 3, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %20

82:                                               ; preds = %20
  %83 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %84 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %83, i64 0
  %85 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FLAG_B_FRAME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %193

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp uge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %193

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @trace_vde_ref_l1(i32 %100, i32 %101)
  store i32 0, i32* %13, align 4
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %143, %96
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %148

108:                                              ; preds = %104
  %109 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %109, i64 %112
  store %struct.video_frame* %113, %struct.video_frame** %9, align 8
  %114 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %115 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add i32 %117, 1
  %119 = shl i32 %118, 26
  store i32 %119, i32* %10, align 4
  %120 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %121 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @FLAG_B_FRAME, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = shl i32 %127, 25
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, 16777216
  store i32 %132, i32* %10, align 4
  %133 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %134 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %138, i32 2, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %108
  %144 = load i32, i32* %13, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %104

148:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %188, %148
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %193

153:                                              ; preds = %149
  %154 = load %struct.video_frame*, %struct.video_frame** %6, align 8
  %155 = load i32, i32* %14, align 4
  %156 = add i32 %155, 1
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %154, i64 %157
  store %struct.video_frame* %158, %struct.video_frame** %9, align 8
  %159 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %160 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add i32 %162, 1
  %164 = shl i32 %163, 26
  store i32 %164, i32* %10, align 4
  %165 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %166 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @FLAG_B_FRAME, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = shl i32 %172, 25
  %174 = load i32, i32* %10, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, 16777216
  store i32 %177, i32* %10, align 4
  %178 = load %struct.video_frame*, %struct.video_frame** %9, align 8
  %179 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  %183 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde* %183, i32 2, i32 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %153
  %189 = load i32, i32* %13, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %14, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %149

193:                                              ; preds = %90, %95, %149
  ret void
}

declare dso_local i32 @trace_vde_ref_l0(i32) #1

declare dso_local i32 @tegra_vde_setup_iram_entry(%struct.tegra_vde*, i32, i32, i32, i32) #1

declare dso_local i32 @trace_vde_ref_l1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
