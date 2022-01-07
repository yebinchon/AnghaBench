; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c__sdw_program_slave_port_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c__sdw_program_slave_port_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sdw_slave = type { i32 }
%struct.sdw_transport_params = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"DPN_OffsetCtrl2 register write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DPN_BlockCtrl3 register write failed\0A\00", align 1
@SDW_DPN_FULL = common dso_local global i32 0, align 4
@SDW_DPN_SAMPLECTRL_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"DPN_SampleCtrl2 register write failed\0A\00", align 1
@SDW_DPN_HCTRL_HSTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"DPN_HCtrl register write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_slave*, %struct.sdw_transport_params*, i32)* @_sdw_program_slave_port_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sdw_program_slave_port_params(%struct.sdw_bus* %0, %struct.sdw_slave* %1, %struct.sdw_transport_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_bus*, align 8
  %7 = alloca %struct.sdw_slave*, align 8
  %8 = alloca %struct.sdw_transport_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %6, align 8
  store %struct.sdw_slave* %1, %struct.sdw_slave** %7, align 8
  store %struct.sdw_transport_params* %2, %struct.sdw_transport_params** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %17 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %23 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SDW_DPN_OFFSETCTRL2_B1(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %27 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SDW_DPN_BLOCKCTRL3_B1(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %31 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SDW_DPN_SAMPLECTRL2_B1(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %35 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SDW_DPN_HCTRL_B1(i32 %36)
  store i32 %37, i32* %13, align 4
  br label %55

38:                                               ; preds = %4
  %39 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %40 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SDW_DPN_OFFSETCTRL2_B0(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %44 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SDW_DPN_BLOCKCTRL3_B0(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %48 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SDW_DPN_SAMPLECTRL2_B0(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %52 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SDW_DPN_HCTRL_B0(i32 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %38, %21
  %56 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %59 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sdw_write(%struct.sdw_slave* %56, i32 %57, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %66 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %141

70:                                               ; preds = %55
  %71 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %74 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sdw_write(%struct.sdw_slave* %71, i32 %72, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %81 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %5, align 4
  br label %141

85:                                               ; preds = %70
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @SDW_DPN_FULL, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %5, align 4
  br label %141

91:                                               ; preds = %85
  %92 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %93 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* @SDW_DPN_SAMPLECTRL_HIGH, align 4
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* @SDW_DPN_SAMPLECTRL_HIGH, align 4
  %100 = call i32 @SDW_REG_SHIFT(i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = ashr i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @sdw_write(%struct.sdw_slave* %103, i32 %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %91
  %110 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %111 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %5, align 4
  br label %141

115:                                              ; preds = %91
  %116 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %117 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* @SDW_DPN_HCTRL_HSTART, align 4
  %120 = call i32 @SDW_REG_SHIFT(i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = shl i32 %121, %120
  store i32 %122, i32* %15, align 4
  %123 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %8, align 8
  %124 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %15, align 4
  %128 = load %struct.sdw_slave*, %struct.sdw_slave** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @sdw_write(%struct.sdw_slave* %128, i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %115
  %135 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %136 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %115
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %109, %89, %79, %64
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @SDW_DPN_OFFSETCTRL2_B1(i32) #1

declare dso_local i32 @SDW_DPN_BLOCKCTRL3_B1(i32) #1

declare dso_local i32 @SDW_DPN_SAMPLECTRL2_B1(i32) #1

declare dso_local i32 @SDW_DPN_HCTRL_B1(i32) #1

declare dso_local i32 @SDW_DPN_OFFSETCTRL2_B0(i32) #1

declare dso_local i32 @SDW_DPN_BLOCKCTRL3_B0(i32) #1

declare dso_local i32 @SDW_DPN_SAMPLECTRL2_B0(i32) #1

declare dso_local i32 @SDW_DPN_HCTRL_B0(i32) #1

declare dso_local i32 @sdw_write(%struct.sdw_slave*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @SDW_REG_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
