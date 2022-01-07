; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_prep_deprep_slave_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_prep_deprep_slave_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.sdw_slave_runtime = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.completion* }
%struct.completion = type { i32 }
%struct.sdw_port_runtime = type { i64, i32 }
%struct.sdw_dpn_prop = type { i64, i32, i32 }
%struct.sdw_prepare_ch = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Slave Port:%d properties not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SDW_OPS_PORT_PRE_PREP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Slave prep_ctrl reg write failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Chn prep failed for port:%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SDW_OPS_PORT_POST_PREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_slave_runtime*, %struct.sdw_port_runtime*, i32)* @sdw_prep_deprep_slave_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_prep_deprep_slave_ports(%struct.sdw_bus* %0, %struct.sdw_slave_runtime* %1, %struct.sdw_port_runtime* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_bus*, align 8
  %7 = alloca %struct.sdw_slave_runtime*, align 8
  %8 = alloca %struct.sdw_port_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.completion*, align 8
  %11 = alloca %struct.sdw_dpn_prop*, align 8
  %12 = alloca %struct.sdw_prepare_ch, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %6, align 8
  store %struct.sdw_slave_runtime* %1, %struct.sdw_slave_runtime** %7, align 8
  store %struct.sdw_port_runtime* %2, %struct.sdw_port_runtime** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %19 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %23 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %27 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %30 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.sdw_dpn_prop* @sdw_get_slave_dpn_prop(%struct.TYPE_7__* %28, i32 %31, i64 %33)
  store %struct.sdw_dpn_prop* %34, %struct.sdw_dpn_prop** %11, align 8
  %35 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %36 = icmp ne %struct.sdw_dpn_prop* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %4
  %38 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %39 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %194

46:                                               ; preds = %4
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %50 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %55 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %46
  %59 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %60 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %46
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %72 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %75 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %79 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sdw_configure_dpn_intr(%struct.TYPE_7__* %73, i64 %76, i32 %77, i64 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %5, align 4
  br label %194

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %67, %64
  %88 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %89 = load i32, i32* @SDW_OPS_PORT_PRE_PREP, align 4
  %90 = call i32 @sdw_do_port_prep(%struct.sdw_slave_runtime* %88, %struct.sdw_prepare_ch* byval(%struct.sdw_prepare_ch) align 8 %12, i32 %89)
  %91 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %92 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %171, label %95

95:                                               ; preds = %87
  %96 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %97 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @SDW_DPN_PREPARECTRL(i64 %98)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %104 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %108 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sdw_update(%struct.TYPE_7__* %105, i32 %106, i32 255, i32 %109)
  store i32 %110, i32* %15, align 4
  br label %117

111:                                              ; preds = %95
  %112 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %113 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %17, align 4
  %116 = call i32 @sdw_update(%struct.TYPE_7__* %114, i32 %115, i32 255, i32 0)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %111, %102
  %118 = load i32, i32* %15, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %122 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %194

127:                                              ; preds = %117
  %128 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %129 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.completion*, %struct.completion** %131, align 8
  %133 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.completion, %struct.completion* %132, i64 %134
  store %struct.completion* %135, %struct.completion** %10, align 8
  %136 = load %struct.completion*, %struct.completion** %10, align 8
  %137 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %138 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @msecs_to_jiffies(i32 %139)
  %141 = call i32 @wait_for_completion_timeout(%struct.completion* %136, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %143 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %146 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @SDW_DPN_PREPARESTATUS(i64 %147)
  %149 = call i32 @sdw_read(%struct.TYPE_7__* %144, i32 %148)
  store i32 %149, i32* %16, align 4
  %150 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %151 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %127
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %157, %127
  %161 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %162 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %161, i32 0, i32 0
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.sdw_prepare_ch, %struct.sdw_prepare_ch* %12, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 (i32*, i8*, ...) @dev_err(i32* %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %166)
  %168 = load i32, i32* @ETIMEDOUT, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %194

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %87
  %172 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %173 = load i32, i32* @SDW_OPS_PORT_POST_PREP, align 4
  %174 = call i32 @sdw_do_port_prep(%struct.sdw_slave_runtime* %172, %struct.sdw_prepare_ch* byval(%struct.sdw_prepare_ch) align 8 %12, i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %7, align 8
  %182 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %181, i32 0, i32 0
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %8, align 8
  %185 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.sdw_dpn_prop*, %struct.sdw_dpn_prop** %11, align 8
  %189 = getelementptr inbounds %struct.sdw_dpn_prop, %struct.sdw_dpn_prop* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @sdw_configure_dpn_intr(%struct.TYPE_7__* %183, i64 %186, i32 %187, i64 %190)
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %180, %177, %171
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %160, %120, %84, %37
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local %struct.sdw_dpn_prop* @sdw_get_slave_dpn_prop(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sdw_configure_dpn_intr(%struct.TYPE_7__*, i64, i32, i64) #1

declare dso_local i32 @sdw_do_port_prep(%struct.sdw_slave_runtime*, %struct.sdw_prepare_ch* byval(%struct.sdw_prepare_ch) align 8, i32) #1

declare dso_local i32 @SDW_DPN_PREPARECTRL(i64) #1

declare dso_local i32 @sdw_update(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sdw_read(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SDW_DPN_PREPARESTATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
