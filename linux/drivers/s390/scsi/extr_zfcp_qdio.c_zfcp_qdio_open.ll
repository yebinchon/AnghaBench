; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, %struct.zfcp_adapter*, i32, i64, %struct.TYPE_3__** }
%struct.zfcp_adapter = type { %struct.TYPE_4__*, i32, %struct.ccw_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ccw_device = type { i32 }
%struct.TYPE_3__ = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i32*, i64, i32, i64 }
%struct.qdio_initialize = type { i32 }
%struct.qdio_ssqd_desc = type { i32 }

@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_SIOSL_ISSUED = common dso_local global i32 0, align 4
@CHSC_AC2_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@CHSC_AC2_MULTI_BUFFER_ENABLED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_MB_ACT = common dso_local global i32 0, align 4
@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i8* null, align 8
@ZFCP_QDIO_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_INPUT = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Setting up the QDIO connection to the FCP adapter failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_open(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca %struct.qdio_buffer_element*, align 8
  %5 = alloca %struct.qdio_initialize, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca %struct.qdio_ssqd_desc, align 4
  %9 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 2
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  store %struct.zfcp_adapter* %12, %struct.zfcp_adapter** %6, align 8
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 2
  %15 = load %struct.ccw_device*, %struct.ccw_device** %14, align 8
  store %struct.ccw_device* %15, %struct.ccw_device** %7, align 8
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 1
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %173

25:                                               ; preds = %1
  %26 = load i32, i32* @ZFCP_STATUS_ADAPTER_SIOSL_ISSUED, align 4
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %28 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %27, i32 0, i32 2
  %29 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %28, align 8
  %30 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %29, i32 0, i32 1
  %31 = call i32 @atomic_andnot(i32 %26, i32* %30)
  %32 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %33 = call i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize* %5, %struct.zfcp_qdio* %32)
  %34 = call i64 @qdio_establish(%struct.qdio_initialize* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %167

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @qdio_get_ssqd_desc(i32 %39, %struct.qdio_ssqd_desc* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %163

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.qdio_ssqd_desc, %struct.qdio_ssqd_desc* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CHSC_AC2_DATA_DIV_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED, align 4
  %51 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %51, i32 0, i32 2
  %53 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %52, align 8
  %54 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %53, i32 0, i32 1
  %55 = call i32 @atomic_or(i32 %50, i32* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = getelementptr inbounds %struct.qdio_ssqd_desc, %struct.qdio_ssqd_desc* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CHSC_AC2_MULTI_BUFFER_ENABLED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, i32* @ZFCP_STATUS_ADAPTER_MB_ACT, align 4
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %64, i32 0, i32 1
  %66 = call i32 @atomic_or(i32 %63, i32* %65)
  %67 = load i8*, i8** @QDIO_MAX_ELEMENTS_PER_BUFFER, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %70 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %81

71:                                               ; preds = %56
  %72 = load i32, i32* @ZFCP_STATUS_ADAPTER_MB_ACT, align 4
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 1
  %75 = call i32 @atomic_andnot(i32 %72, i32* %74)
  %76 = load i8*, i8** @QDIO_MAX_ELEMENTS_PER_BUFFER, align 8
  %77 = getelementptr i8, i8* %76, i64 -1
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %80 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %71, %62
  %82 = load i32, i32* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 4
  %83 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %84 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = sub nsw i32 %86, 2
  %88 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %89 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %91 = call i64 @qdio_activate(%struct.ccw_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %163

94:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %119, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %101 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %100, i32 0, i32 5
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %107, align 8
  %109 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %108, i64 0
  store %struct.qdio_buffer_element* %109, %struct.qdio_buffer_element** %4, align 8
  %110 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %111 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %113 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %114 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %116 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %4, align 8
  %118 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %99
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %95

122:                                              ; preds = %95
  %123 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %124 = load i32, i32* @QDIO_FLAG_SYNC_INPUT, align 4
  %125 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %126 = call i64 @do_QDIO(%struct.ccw_device* %123, i32 %124, i32 0, i32 0, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %163

129:                                              ; preds = %122
  %130 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %131 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %133 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %132, i32 0, i32 3
  %134 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %135 = call i32 @atomic_set(i32* %133, i32 %134)
  %136 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %137 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %138 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %137, i32 0, i32 2
  %139 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %138, align 8
  %140 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %139, i32 0, i32 1
  %141 = call i32 @atomic_or(i32 %136, i32* %140)
  %142 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %143 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = icmp ne %struct.TYPE_4__* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %129
  %147 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %148 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %151 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %155 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 8
  %158 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %146, %129
  store i32 0, i32* %2, align 4
  br label %173

163:                                              ; preds = %128, %93, %42
  %164 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %165 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %166 = call i32 @qdio_shutdown(%struct.ccw_device* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %36
  %168 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %169 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %168, i32 0, i32 0
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %167, %162, %22
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @zfcp_qdio_setup_init_data(%struct.qdio_initialize*, %struct.zfcp_qdio*) #1

declare dso_local i64 @qdio_establish(%struct.qdio_initialize*) #1

declare dso_local i64 @qdio_get_ssqd_desc(i32, %struct.qdio_ssqd_desc*) #1

declare dso_local i32 @atomic_or(i32, i32*) #1

declare dso_local i64 @qdio_activate(%struct.ccw_device*) #1

declare dso_local i64 @do_QDIO(%struct.ccw_device*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qdio_shutdown(%struct.ccw_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
