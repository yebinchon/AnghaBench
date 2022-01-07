; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_push_pxx_to_hypervisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-processor.c_push_pxx_to_hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.acpi_processor_performance*, i32 }
%struct.acpi_processor_performance = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.xen_platform_op = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.xen_processor_performance, i32 }
%struct.xen_processor_performance = type { i32, i32, i32, i32, i32 }
%struct.xen_processor_px = type { i32 }

@XEN_PM_PX = common dso_local global i32 0, align 4
@XENPF_INTERFACE_VERSION = common dso_local global i32 0, align 4
@XENPF_set_processor_pminfo = common dso_local global i32 0, align 4
@XEN_PX_PPC = common dso_local global i32 0, align 4
@XEN_PX_PCT = common dso_local global i32 0, align 4
@XEN_PX_PSS = common dso_local global i32 0, align 4
@XEN_PX_PSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ACPI CPU%u missing some P-state data (%x), skipping\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@no_hypercall = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ACPI CPU%u - P-states uploaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"     %cP%d: %d MHz, %d mW, %d uS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"(_PXX): Hypervisor error (%d) for ACPI CPU%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @push_pxx_to_hypervisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_pxx_to_hypervisor(%struct.acpi_processor* %0) #0 {
  %2 = alloca %struct.acpi_processor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_platform_op, align 4
  %5 = alloca %struct.xen_processor_performance*, align 8
  %6 = alloca %struct.xen_processor_px*, align 8
  %7 = alloca %struct.acpi_processor_performance*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %16 = bitcast %struct.xen_processor_performance* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %18 = load i32, i32* @XEN_PM_PX, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 1
  %20 = load i32, i32* @XENPF_INTERFACE_VERSION, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 2
  %22 = load i32, i32* @XENPF_set_processor_pminfo, align 4
  store i32 %22, i32* %21, align 4
  store %struct.xen_processor_px* null, %struct.xen_processor_px** %6, align 8
  %23 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.xen_processor_performance* %25, %struct.xen_processor_performance** %5, align 8
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %30 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @XEN_PX_PPC, align 4
  %32 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %33 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %36, i32 0, i32 1
  %38 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %37, align 8
  %39 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %38, i32 0, i32 4
  %40 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %41 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %40, i32 0, i32 3
  %42 = call i32 @xen_copy_pct_data(i32* %39, i32* %41)
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 1
  %45 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %44, align 8
  %46 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %45, i32 0, i32 3
  %47 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %48 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %47, i32 0, i32 2
  %49 = call i32 @xen_copy_pct_data(i32* %46, i32* %48)
  %50 = load i32, i32* @XEN_PX_PCT, align 4
  %51 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %52 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %56 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %57 = call %struct.xen_processor_px* @xen_copy_pss_data(%struct.acpi_processor* %55, %struct.xen_processor_performance* %56)
  store %struct.xen_processor_px* %57, %struct.xen_processor_px** %6, align 8
  %58 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %59 = call i32 @IS_ERR_OR_NULL(%struct.xen_processor_px* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %1
  %62 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %63 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %66 = call i32 @set_xen_guest_handle(i32 %64, %struct.xen_processor_px* %65)
  %67 = load i32, i32* @XEN_PX_PSS, align 4
  %68 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %69 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %1
  %73 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %74 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %75 = call i32 @xen_copy_psd_data(%struct.acpi_processor* %73, %struct.xen_processor_performance* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @XEN_PX_PSD, align 4
  %79 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %80 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %85 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @XEN_PX_PSD, align 4
  %88 = load i32, i32* @XEN_PX_PSS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @XEN_PX_PCT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @XEN_PX_PPC, align 4
  %93 = or i32 %91, %92
  %94 = icmp ne i32 %86, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %97 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xen_processor_performance*, %struct.xen_processor_performance** %5, align 8
  %100 = getelementptr inbounds %struct.xen_processor_performance, %struct.xen_processor_performance* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %188

105:                                              ; preds = %83
  %106 = load i32, i32* @no_hypercall, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %4)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %170, label %113

113:                                              ; preds = %110
  %114 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %115 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %114, i32 0, i32 1
  %116 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %115, align 8
  store %struct.acpi_processor_performance* %116, %struct.acpi_processor_performance** %7, align 8
  %117 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %118 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = trunc i32 %119 to i8
  %121 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 signext %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %166, %113
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %125 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %169

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %131 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %129, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 42, i32 32
  %136 = trunc i32 %135 to i8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %139 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %148 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %7, align 8
  %157 = getelementptr inbounds %struct.acpi_processor_performance, %struct.acpi_processor_performance* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 signext %136, i32 %137, i32 %146, i32 %155, i32 %164)
  br label %166

166:                                              ; preds = %128
  %167 = load i32, i32* %8, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %122

169:                                              ; preds = %122
  br label %187

170:                                              ; preds = %110
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp ne i32 %171, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @ENOSYS, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %183 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %175, %170
  br label %187

187:                                              ; preds = %186, %169
  br label %188

188:                                              ; preds = %187, %95
  %189 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %190 = call i32 @IS_ERR_OR_NULL(%struct.xen_processor_px* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load %struct.xen_processor_px*, %struct.xen_processor_px** %6, align 8
  %194 = call i32 @kfree(%struct.xen_processor_px* %193)
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xen_copy_pct_data(i32*, i32*) #2

declare dso_local %struct.xen_processor_px* @xen_copy_pss_data(%struct.acpi_processor*, %struct.xen_processor_performance*) #2

declare dso_local i32 @IS_ERR_OR_NULL(%struct.xen_processor_px*) #2

declare dso_local i32 @set_xen_guest_handle(i32, %struct.xen_processor_px*) #2

declare dso_local i32 @xen_copy_psd_data(%struct.acpi_processor*, %struct.xen_processor_performance*) #2

declare dso_local i32 @pr_warn(i8*, i32, i32) #2

declare dso_local i32 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #2

declare dso_local i32 @pr_debug(i8*, i8 signext, ...) #2

declare dso_local i32 @kfree(%struct.xen_processor_px*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
