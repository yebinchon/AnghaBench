; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_segment = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"copied %u %u size %u %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"total copied %u total size %u\0A\00", align 1
@CAP_PADDING_OFFLOAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"consume %d pad bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.iscsi_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %6, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21, i8* %25)
  %27 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %31
  %35 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %36 = call i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %35)
  %37 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %38 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = call i32 @sg_init_table(%struct.scatterlist* %10, i32 1)
  %43 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %43, i32 0, i32 10
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @sg_page(%struct.TYPE_8__* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %52 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %50, %53
  %55 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %56 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %55, i32 0, i32 10
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %54, %59
  %61 = call i32 @sg_set_page(%struct.scatterlist* %10, i32 %46, i32 %47, i32 %60)
  br label %72

62:                                               ; preds = %34
  %63 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %64 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %67 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sg_init_one(%struct.scatterlist* %10, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %41
  %73 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %74 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ahash_request_set_crypt(i64 %75, %struct.scatterlist* %10, i32* null, i32 %76)
  %78 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %79 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @crypto_ahash_update(i64 %80)
  br label %82

82:                                               ; preds = %72, %31, %4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %85 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %89 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %92 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @iscsi_tcp_segment_map(%struct.iscsi_segment* %96, i32 %97)
  store i32 0, i32* %5, align 4
  br label %221

99:                                               ; preds = %82
  %100 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %101 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %104 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = add i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %108 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %110 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %112 = call i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %111)
  %113 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %117 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %120 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %118, i64 %121)
  %123 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %124 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = zext i32 %125 to i64
  %127 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %128 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %99
  %132 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %133 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %134 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %133, i32 0, i32 10
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = call i32 @sg_next(%struct.TYPE_8__* %135)
  %137 = call i32 @iscsi_tcp_segment_init_sg(%struct.iscsi_segment* %132, i32 %136, i32 0)
  %138 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @iscsi_tcp_segment_map(%struct.iscsi_segment* %138, i32 %139)
  %141 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %142 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @BUG_ON(i32 %145)
  store i32 0, i32* %5, align 4
  br label %221

147:                                              ; preds = %99
  %148 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %149 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %148, i32 0, i32 0
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CAP_PADDING_OFFLOAD, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %189, label %160

160:                                              ; preds = %147
  %161 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %162 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = zext i32 %163 to i64
  %165 = call i32 @iscsi_padding(i64 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %160
  %169 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %170 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %11, align 4
  %175 = zext i32 %174 to i64
  %176 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %177 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %182 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %184 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %187 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  store i32 0, i32* %5, align 4
  br label %221

188:                                              ; preds = %160
  br label %189

189:                                              ; preds = %188, %147
  %190 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %191 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %190, i32 0, i32 9
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %220

194:                                              ; preds = %189
  %195 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %196 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %195, i32 0, i32 9
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %199 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @ahash_request_set_crypt(i64 %197, %struct.scatterlist* null, i32* %200, i32 0)
  %202 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %203 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @crypto_ahash_final(i64 %204)
  %206 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %194
  %210 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %211 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %210, i32 0, i32 8
  %212 = load i32*, i32** %211, align 8
  br label %217

213:                                              ; preds = %194
  %214 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %215 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %214, i32 0, i32 7
  %216 = load i32*, i32** %215, align 8
  br label %217

217:                                              ; preds = %213, %209
  %218 = phi i32* [ %212, %209 ], [ %216, %213 ]
  %219 = call i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment* %206, i32* %218)
  store i32 0, i32* %5, align 4
  br label %221

220:                                              ; preds = %189
  store i32 1, i32* %5, align 4
  br label %221

221:                                              ; preds = %220, %217, %168, %131, %95
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @ISCSI_DBG_TCP(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_8__*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @ahash_request_set_crypt(i64, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_update(i64) #1

declare dso_local i32 @iscsi_tcp_segment_map(%struct.iscsi_segment*, i32) #1

declare dso_local i32 @iscsi_tcp_segment_init_sg(%struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @sg_next(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iscsi_padding(i64) #1

declare dso_local i32 @crypto_ahash_final(i64) #1

declare dso_local i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
