; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_register_dai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_register_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_intel = type { %struct.sdw_cdns }
%struct.sdw_cdns = type { i32, %struct.sdw_cdns_streams, %struct.sdw_cdns_streams }
%struct.sdw_cdns_streams = type { i32, i32, i64, i64, i32, i64, i32 }
%struct.snd_soc_dai_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTEL_PDI_IN = common dso_local global i32 0, align 4
@INTEL_PDI_OUT = common dso_local global i32 0, align 4
@INTEL_PDI_BD = common dso_local global i32 0, align 4
@dai_component = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_intel*)* @intel_register_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_register_dai(%struct.sdw_intel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_intel*, align 8
  %4 = alloca %struct.sdw_cdns*, align 8
  %5 = alloca %struct.sdw_cdns_streams*, align 8
  %6 = alloca %struct.snd_soc_dai_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdw_intel* %0, %struct.sdw_intel** %3, align 8
  %10 = load %struct.sdw_intel*, %struct.sdw_intel** %3, align 8
  %11 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %10, i32 0, i32 0
  store %struct.sdw_cdns* %11, %struct.sdw_cdns** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %13 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %17 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %22 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.snd_soc_dai_driver* @devm_kcalloc(i32 %23, i32 %24, i32 4, i32 %25)
  store %struct.snd_soc_dai_driver* %26, %struct.snd_soc_dai_driver** %6, align 8
  %27 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %28 = icmp ne %struct.snd_soc_dai_driver* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %185

32:                                               ; preds = %1
  %33 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %34 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %33, i32 0, i32 2
  store %struct.sdw_cdns_streams* %34, %struct.sdw_cdns_streams** %5, align 8
  %35 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %36 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %37 = load i32, i32* @INTEL_PDI_IN, align 4
  %38 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %39 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %44 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @intel_create_dai(%struct.sdw_cdns* %35, %struct.snd_soc_dai_driver* %36, i32 %37, i64 %41, i32 %42, i32 %45, i32 1)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %2, align 4
  br label %185

51:                                               ; preds = %32
  %52 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %53 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %61 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %62 = load i32, i32* @INTEL_PDI_OUT, align 4
  %63 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %64 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %69 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @intel_create_dai(%struct.sdw_cdns* %60, %struct.snd_soc_dai_driver* %61, i32 %62, i64 %66, i32 %67, i32 %70, i32 1)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %51
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %185

76:                                               ; preds = %51
  %77 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %78 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %86 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %87 = load i32, i32* @INTEL_PDI_BD, align 4
  %88 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %89 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %94 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @intel_create_dai(%struct.sdw_cdns* %85, %struct.snd_soc_dai_driver* %86, i32 %87, i64 %91, i32 %92, i32 %95, i32 1)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %76
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %185

101:                                              ; preds = %76
  %102 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %103 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %102, i32 0, i32 1
  store %struct.sdw_cdns_streams* %103, %struct.sdw_cdns_streams** %5, align 8
  %104 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %105 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %113 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %114 = load i32, i32* @INTEL_PDI_IN, align 4
  %115 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %116 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %121 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @intel_create_dai(%struct.sdw_cdns* %112, %struct.snd_soc_dai_driver* %113, i32 %114, i64 %118, i32 %119, i32 %122, i32 0)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %101
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %185

128:                                              ; preds = %101
  %129 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %130 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %9, align 4
  %137 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %138 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %139 = load i32, i32* @INTEL_PDI_OUT, align 4
  %140 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %141 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %146 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @intel_create_dai(%struct.sdw_cdns* %137, %struct.snd_soc_dai_driver* %138, i32 %139, i64 %143, i32 %144, i32 %147, i32 0)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %128
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %2, align 4
  br label %185

153:                                              ; preds = %128
  %154 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %155 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %9, align 4
  %162 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %163 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %164 = load i32, i32* @INTEL_PDI_BD, align 4
  %165 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %166 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.sdw_cdns_streams*, %struct.sdw_cdns_streams** %5, align 8
  %171 = getelementptr inbounds %struct.sdw_cdns_streams, %struct.sdw_cdns_streams* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @intel_create_dai(%struct.sdw_cdns* %162, %struct.snd_soc_dai_driver* %163, i32 %164, i64 %168, i32 %169, i32 %172, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %153
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %185

178:                                              ; preds = %153
  %179 = load %struct.sdw_cdns*, %struct.sdw_cdns** %4, align 8
  %180 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @snd_soc_register_component(i32 %181, i32* @dai_component, %struct.snd_soc_dai_driver* %182, i32 %183)
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %178, %176, %151, %126, %99, %74, %49, %29
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.snd_soc_dai_driver* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @intel_create_dai(%struct.sdw_cdns*, %struct.snd_soc_dai_driver*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @snd_soc_register_component(i32, i32*, %struct.snd_soc_dai_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
