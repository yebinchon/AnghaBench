; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla_tgt_set_dif_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qla_tgt_set_dif_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { %struct.TYPE_5__*, %struct.se_cmd }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.qla_tgt_cmd*, i32*)*, i32 (i32)* }
%struct.se_cmd = type { i32, i32 }
%struct.crc_context = type { i32*, i32*, i8*, i64 }

@PO_DIS_VALD_APP_ESC = common dso_local global i32 0, align 4
@PO_DIS_VALD_APP_REF_ESC = common dso_local global i32 0, align 4
@PO_DIS_REF_TAG_VALD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_tgt_cmd*, %struct.crc_context*, i32*)* @qla_tgt_set_dif_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_tgt_set_dif_tags(%struct.qla_tgt_cmd* %0, %struct.crc_context* %1, i32* %2) #0 {
  %4 = alloca %struct.qla_tgt_cmd*, align 8
  %5 = alloca %struct.crc_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32, align 4
  store %struct.qla_tgt_cmd* %0, %struct.qla_tgt_cmd** %4, align 8
  store %struct.crc_context* %1, %struct.crc_context** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %12, i32 0, i32 1
  store %struct.se_cmd* %13, %struct.se_cmd** %7, align 8
  %14 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 -1, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  store %struct.qla_hw_data* %25, %struct.qla_hw_data** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %27 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %29 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %33 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %37 = call i64 @IS_PI_UNINIT_CAPABLE(%struct.qla_hw_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %3
  %40 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @PO_DIS_VALD_APP_ESC, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 128
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @PO_DIS_VALD_APP_REF_ESC, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %3
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.qla_tgt_cmd*, i32*)*, i32 (%struct.qla_tgt_cmd*, i32*)** %71, align 8
  %73 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 %72(%struct.qla_tgt_cmd* %73, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %201 [
    i32 131, label %79
    i32 130, label %100
    i32 129, label %140
    i32 128, label %180
  ]

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %83 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %85 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 255, i32* %87, align 4
  %88 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %89 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 255, i32* %91, align 4
  %92 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %93 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 255, i32* %95, align 4
  %96 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %97 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 255, i32* %99, align 4
  br label %201

100:                                              ; preds = %66
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %104 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %106 = call i32 @qla_tgt_ref_mask_check(%struct.se_cmd* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 %114(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %108, %100
  %119 = load i32, i32* @PO_DIS_REF_TAG_VALD, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %201

123:                                              ; preds = %108
  %124 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %125 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 255, i32* %127, align 4
  %128 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %129 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 255, i32* %131, align 4
  %132 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %133 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32 255, i32* %135, align 4
  %136 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %137 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  store i32 255, i32* %139, align 4
  br label %201

140:                                              ; preds = %66
  %141 = load i32, i32* %8, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %144 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %146 = call i32 @qla_tgt_ref_mask_check(%struct.se_cmd* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %140
  %149 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %150 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32 (i32)*, i32 (i32)** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 %154(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %148, %140
  %159 = load i32, i32* @PO_DIS_REF_TAG_VALD, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %201

163:                                              ; preds = %148
  %164 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %165 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 255, i32* %167, align 4
  %168 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %169 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 255, i32* %171, align 4
  %172 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %173 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 255, i32* %175, align 4
  %176 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %177 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  store i32 255, i32* %179, align 4
  br label %201

180:                                              ; preds = %66
  %181 = load i32, i32* @PO_DIS_REF_TAG_VALD, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %186 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  store i32 0, i32* %188, align 4
  %189 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %190 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  store i32 0, i32* %192, align 4
  %193 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %194 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32 0, i32* %196, align 4
  %197 = load %struct.crc_context*, %struct.crc_context** %5, align 8
  %198 = getelementptr inbounds %struct.crc_context, %struct.crc_context* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %66, %180, %163, %158, %123, %118, %79
  ret void
}

declare dso_local i64 @IS_PI_UNINIT_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qla_tgt_ref_mask_check(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
