; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_determine_counts_for_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_determine_counts_for_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { %struct.TYPE_6__, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.iscsi_build_list = type { i64, i64 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@PDULIST_IMMEDIATE = common dso_local global i64 0, align 8
@PDULIST_IMMEDIATE_AND_UNSOLICITED = common dso_local global i64 0, align 8
@PDULIST_UNSOLICITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cmd*, %struct.iscsi_build_list*, i64*, i64*)* @iscsit_determine_counts_for_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_determine_counts_for_list(%struct.iscsi_cmd* %0, %struct.iscsi_build_list* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_build_list*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_build_list* %1, %struct.iscsi_build_list** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %15, i32 0, i32 1
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %16, align 8
  store %struct.iscsi_conn* %17, %struct.iscsi_conn** %14, align 8
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMA_TO_DEVICE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 1
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %26, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 1
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %34, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PDULIST_IMMEDIATE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PDULIST_UNSOLICITED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59, %53
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @min(i64 %69, i64 %76)
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %65, %59
  br label %79

79:                                               ; preds = %229, %214, %193, %177, %151, %122, %109, %78
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %236

86:                                               ; preds = %79
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  %93 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %11, align 8
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.iscsi_build_list*, %struct.iscsi_build_list** %6, align 8
  %105 = getelementptr inbounds %struct.iscsi_build_list, %struct.iscsi_build_list* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %103, %92
  br label %79

110:                                              ; preds = %86
  %111 = load i64, i64* %12, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %184

113:                                              ; preds = %110
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %13, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %118 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %116, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %124 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load i64, i64* %12, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %12, align 8
  %131 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %132 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load i64, i64* %11, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %11, align 8
  br label %79

139:                                              ; preds = %113
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %13, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %144 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %142, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %139
  %152 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %153 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %11, align 8
  %160 = sub nsw i64 %158, %159
  %161 = load i64, i64* %12, align 8
  %162 = sub nsw i64 %161, %160
  store i64 %162, i64* %12, align 8
  %163 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %164 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = sub nsw i64 %169, %170
  %172 = load i64, i64* %11, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %174 = load i64*, i64** %7, align 8
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8
  br label %79

177:                                              ; preds = %139
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* %11, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %11, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %12, align 8
  %183 = sub nsw i64 %182, %181
  store i64 %183, i64* %12, align 8
  br label %79

184:                                              ; preds = %110
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* %13, align 8
  %187 = add nsw i64 %185, %186
  %188 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %189 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %187, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %184
  %194 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %195 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %11, align 8
  %199 = sub nsw i64 %197, %198
  %200 = load i64, i64* %11, align 8
  %201 = add nsw i64 %200, %199
  store i64 %201, i64* %11, align 8
  br label %79

202:                                              ; preds = %184
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* %13, align 8
  %205 = add nsw i64 %203, %204
  %206 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %207 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp sge i64 %205, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %202
  %215 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %216 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %215, i32 0, i32 0
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %10, align 8
  %223 = sub nsw i64 %221, %222
  %224 = load i64, i64* %11, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %226 = load i64*, i64** %7, align 8
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8
  br label %79

229:                                              ; preds = %202
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add nsw i64 %231, %230
  store i64 %232, i64* %10, align 8
  %233 = load i64, i64* %13, align 8
  %234 = load i64, i64* %11, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %11, align 8
  br label %79

236:                                              ; preds = %79
  ret void
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
