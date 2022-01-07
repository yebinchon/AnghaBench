; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hdq_post_handles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_hdq_post_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.hd_async_handle = type { i64, i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.hd_async_context = type { i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i64, %struct.phys_addr* }
%struct.phys_addr = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.phys_addr* }
%struct.TYPE_11__ = type { %struct.hd_async_handle*, %struct.hd_async_handle* }

@DB_DEF_PDU_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_DEF_PDU_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_DEF_PDU_EVENT_SHIFT = common dso_local global i32 0, align 4
@DB_DEF_PDU_CQPROC_MASK = common dso_local global i64 0, align 8
@DB_DEF_PDU_CQPROC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i64, i64, i64)* @beiscsi_hdq_post_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_hdq_post_handles(%struct.beiscsi_hba* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hd_async_handle*, align 8
  %10 = alloca %struct.hd_async_context*, align 8
  %11 = alloca %struct.hwi_controller*, align 8
  %12 = alloca %struct.phys_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %19 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %18, i32 0, i32 1
  %20 = load %struct.hwi_controller*, %struct.hwi_controller** %19, align 8
  store %struct.hwi_controller* %20, %struct.hwi_controller** %11, align 8
  %21 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.hd_async_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller* %21, i64 %22)
  store %struct.hd_async_context* %23, %struct.hd_async_context** %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %28 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load %struct.phys_addr*, %struct.phys_addr** %29, align 8
  store %struct.phys_addr* %30, %struct.phys_addr** %12, align 8
  %31 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %32 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %36 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %43 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  br label %72

49:                                               ; preds = %4
  %50 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %51 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.phys_addr*, %struct.phys_addr** %52, align 8
  store %struct.phys_addr* %53, %struct.phys_addr** %12, align 8
  %54 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %55 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  %58 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %59 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %66 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %49, %26
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %146, %72
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %149

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %82 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.hd_async_handle*, %struct.hd_async_handle** %86, align 8
  store %struct.hd_async_handle* %87, %struct.hd_async_handle** %9, align 8
  br label %96

88:                                               ; preds = %77
  %89 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %90 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.hd_async_handle*, %struct.hd_async_handle** %94, align 8
  store %struct.hd_async_handle* %95, %struct.hd_async_handle** %9, align 8
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.hd_async_handle*, %struct.hd_async_handle** %9, align 8
  %98 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @WARN_ON(i32 %102)
  %104 = load %struct.hd_async_handle*, %struct.hd_async_handle** %9, align 8
  %105 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = icmp ne i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @WARN_ON(i32 %109)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %113 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %96
  %117 = load %struct.hd_async_handle*, %struct.hd_async_handle** %9, align 8
  %118 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.phys_addr*, %struct.phys_addr** %12, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %123, i64 %124
  %126 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.hd_async_handle*, %struct.hd_async_handle** %9, align 8
  %128 = getelementptr inbounds %struct.hd_async_handle, %struct.hd_async_handle* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.phys_addr*, %struct.phys_addr** %12, align 8
  %134 = load i64, i64* %17, align 8
  %135 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %133, i64 %134
  %136 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %116, %96
  %138 = load i64, i64* %17, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %17, align 8
  %140 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %141 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  store i64 0, i64* %17, align 8
  br label %145

145:                                              ; preds = %144, %137
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %16, align 8
  br label %73

149:                                              ; preds = %73
  %150 = load i64, i64* %6, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i64, i64* %17, align 8
  %154 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %155 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  store i64 %153, i64* %156, align 8
  br label %162

157:                                              ; preds = %149
  %158 = load i64, i64* %17, align 8
  %159 = load %struct.hd_async_context*, %struct.hd_async_context** %10, align 8
  %160 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @DB_DEF_PDU_RING_ID_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* %14, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* @DB_DEF_PDU_REARM_SHIFT, align 4
  %169 = shl i32 1, %168
  %170 = load i32, i32* %14, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* @DB_DEF_PDU_EVENT_SHIFT, align 4
  %173 = shl i32 0, %172
  %174 = load i32, i32* %14, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %14, align 4
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* @DB_DEF_PDU_CQPROC_MASK, align 8
  %178 = and i64 %176, %177
  %179 = load i64, i64* @DB_DEF_PDU_CQPROC_SHIFT, align 8
  %180 = shl i64 %178, %179
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = or i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %187 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @iowrite32(i32 %185, i32 %190)
  ret void
}

declare dso_local %struct.hd_async_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
