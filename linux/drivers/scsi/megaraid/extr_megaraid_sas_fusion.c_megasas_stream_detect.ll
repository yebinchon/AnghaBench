; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_stream_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_stream_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.fusion_context* }
%struct.fusion_context = type { %struct.LD_STREAM_DETECT** }
%struct.LD_STREAM_DETECT = type { i64, %struct.STREAM_DETECT* }
%struct.STREAM_DETECT = type { i64, i64 }
%struct.megasas_cmd_fusion = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.IO_REQUEST_INFO = type { i64, i64, i64, i64 }

@MAX_STREAMS_TRACKED = common dso_local global i32 0, align 4
@BITS_PER_INDEX_STREAM = common dso_local global i32 0, align 4
@STREAM_MASK = common dso_local global i64 0, align 8
@ZERO_LAST_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, %struct.megasas_cmd_fusion*, %struct.IO_REQUEST_INFO*)* @megasas_stream_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_stream_detect(%struct.megasas_instance* %0, %struct.megasas_cmd_fusion* %1, %struct.IO_REQUEST_INFO* %2) #0 {
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.megasas_cmd_fusion*, align 8
  %6 = alloca %struct.IO_REQUEST_INFO*, align 8
  %7 = alloca %struct.fusion_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.LD_STREAM_DETECT*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.STREAM_DETECT*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.megasas_cmd_fusion* %1, %struct.megasas_cmd_fusion** %5, align 8
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %6, align 8
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 0
  %21 = load %struct.fusion_context*, %struct.fusion_context** %20, align 8
  store %struct.fusion_context* %21, %struct.fusion_context** %7, align 8
  %22 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %23 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.fusion_context*, %struct.fusion_context** %7, align 8
  %26 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %25, i32 0, i32 0
  %27 = load %struct.LD_STREAM_DETECT**, %struct.LD_STREAM_DETECT*** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.LD_STREAM_DETECT*, %struct.LD_STREAM_DETECT** %27, i64 %28
  %30 = load %struct.LD_STREAM_DETECT*, %struct.LD_STREAM_DETECT** %29, align 8
  store %struct.LD_STREAM_DETECT* %30, %struct.LD_STREAM_DETECT** %9, align 8
  %31 = load %struct.LD_STREAM_DETECT*, %struct.LD_STREAM_DETECT** %9, align 8
  %32 = getelementptr inbounds %struct.LD_STREAM_DETECT, %struct.LD_STREAM_DETECT* %31, i32 0, i32 0
  store i64* %32, i64** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %148, %3
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @MAX_STREAMS_TRACKED, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %151

37:                                               ; preds = %33
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %42 = mul nsw i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = lshr i64 %39, %43
  %45 = load i64, i64* @STREAM_MASK, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %11, align 8
  %47 = load %struct.LD_STREAM_DETECT*, %struct.LD_STREAM_DETECT** %9, align 8
  %48 = getelementptr inbounds %struct.LD_STREAM_DETECT, %struct.LD_STREAM_DETECT* %47, i32 0, i32 1
  %49 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %49, i64 %50
  store %struct.STREAM_DETECT* %51, %struct.STREAM_DETECT** %18, align 8
  %52 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %53 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %147

56:                                               ; preds = %37
  %57 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %58 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %61 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %147

64:                                               ; preds = %56
  %65 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %66 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %69 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 32
  %72 = icmp sle i64 %67, %71
  br i1 %72, label %73, label %147

73:                                               ; preds = %64
  %74 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %75 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %78 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %147

81:                                               ; preds = %73
  %82 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %83 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %86 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %91 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94, %89
  br label %148

98:                                               ; preds = %94, %81
  %99 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %5, align 8
  %100 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SET_STREAM_DETECTED(i32 %104)
  %106 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %107 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %110 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %114 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %117 = mul nsw i32 %115, %116
  %118 = shl i32 1, %117
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %15, align 8
  %121 = load i64*, i64** %10, align 8
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = and i64 %122, %123
  %125 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %126 = zext i32 %125 to i64
  %127 = shl i64 %124, %126
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* @STREAM_MASK, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %131 = mul nsw i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = shl i64 %128, %132
  store i64 %133, i64* %14, align 8
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %14, align 8
  %138 = or i64 %136, %137
  %139 = xor i64 %138, -1
  %140 = and i64 %135, %139
  store i64 %140, i64* %13, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %12, align 8
  %143 = or i64 %141, %142
  %144 = load i64, i64* %11, align 8
  %145 = or i64 %143, %144
  %146 = load i64*, i64** %10, align 8
  store i64 %145, i64* %146, align 8
  br label %189

147:                                              ; preds = %73, %64, %56, %37
  br label %148

148:                                              ; preds = %147, %97
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %33

151:                                              ; preds = %33
  %152 = load i64*, i64** %10, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @MAX_STREAMS_TRACKED, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @BITS_PER_INDEX_STREAM, align 4
  %157 = mul nsw i32 %155, %156
  %158 = zext i32 %157 to i64
  %159 = lshr i64 %153, %158
  %160 = load i64, i64* @STREAM_MASK, align 8
  %161 = and i64 %159, %160
  store i64 %161, i64* %11, align 8
  %162 = load %struct.LD_STREAM_DETECT*, %struct.LD_STREAM_DETECT** %9, align 8
  %163 = getelementptr inbounds %struct.LD_STREAM_DETECT, %struct.LD_STREAM_DETECT* %162, i32 0, i32 1
  %164 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %163, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %164, i64 %165
  store %struct.STREAM_DETECT* %166, %struct.STREAM_DETECT** %18, align 8
  %167 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %168 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %171 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %173 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %6, align 8
  %176 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %174, %177
  %179 = load %struct.STREAM_DETECT*, %struct.STREAM_DETECT** %18, align 8
  %180 = getelementptr inbounds %struct.STREAM_DETECT, %struct.STREAM_DETECT* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load i64*, i64** %10, align 8
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ZERO_LAST_STREAM, align 8
  %184 = and i64 %182, %183
  %185 = shl i64 %184, 4
  %186 = load i64, i64* %11, align 8
  %187 = or i64 %185, %186
  %188 = load i64*, i64** %10, align 8
  store i64 %187, i64* %188, align 8
  br label %189

189:                                              ; preds = %151, %98
  ret void
}

declare dso_local i32 @SET_STREAM_DETECTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
