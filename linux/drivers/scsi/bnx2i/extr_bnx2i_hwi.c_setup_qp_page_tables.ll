; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_setup_qp_page_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_setup_qp_page_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_endpoint = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@CNIC_PAGE_SIZE = common dso_local global i32 0, align 4
@ISCSI_SQ_DB_SIZE = common dso_local global i32 0, align 4
@ISCSI_RQ_DB_SIZE = common dso_local global i32 0, align 4
@ISCSI_CQ_DB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_endpoint*)* @setup_qp_page_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qp_page_tables(%struct.bnx2i_endpoint* %0) #0 {
  %2 = alloca %struct.bnx2i_endpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2i_endpoint* %0, %struct.bnx2i_endpoint** %2, align 8
  %7 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %8 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %7, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i64 %20, i32 0, i32 %24)
  %26 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %16
  %39 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* @ISCSI_SQ_DB_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to i64*
  store i64* %47, i64** %4, align 8
  br label %54

48:                                               ; preds = %16
  %49 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64* %53, i64** %4, align 8
  br label %54

54:                                               ; preds = %48, %38
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %3, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = load i64*, i64** %4, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = trunc i64 %67 to i32
  %69 = ashr i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %4, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %4, align 8
  %74 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %5, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %5, align 8
  br label %94

78:                                               ; preds = %59
  %79 = load i64, i64* %5, align 8
  %80 = trunc i64 %79 to i32
  %81 = ashr i32 %80, 32
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %4, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64*, i64** %4, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %4, align 8
  %90 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %78, %62
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %97 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %101 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memset(i64 %99, i32 0, i32 %103)
  %105 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %106 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %3, align 4
  %111 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %112 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %95
  %118 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %119 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load i32, i32* @ISCSI_RQ_DB_SIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = bitcast i32* %125 to i64*
  store i64* %126, i64** %4, align 8
  br label %133

127:                                              ; preds = %95
  %128 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %129 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64* %132, i64** %4, align 8
  br label %133

133:                                              ; preds = %127, %117
  br label %134

134:                                              ; preds = %173, %133
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %3, align 4
  %137 = icmp ne i32 %135, 0
  br i1 %137, label %138, label %174

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load i64, i64* %5, align 8
  %143 = load i64*, i64** %4, align 8
  store i64 %142, i64* %143, align 8
  %144 = load i64*, i64** %4, align 8
  %145 = getelementptr inbounds i64, i64* %144, i32 1
  store i64* %145, i64** %4, align 8
  %146 = load i64, i64* %5, align 8
  %147 = trunc i64 %146 to i32
  %148 = ashr i32 %147, 32
  %149 = sext i32 %148 to i64
  %150 = load i64*, i64** %4, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64*, i64** %4, align 8
  %152 = getelementptr inbounds i64, i64* %151, i32 1
  store i64* %152, i64** %4, align 8
  %153 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %5, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %5, align 8
  br label %173

157:                                              ; preds = %138
  %158 = load i64, i64* %5, align 8
  %159 = trunc i64 %158 to i32
  %160 = ashr i32 %159, 32
  %161 = sext i32 %160 to i64
  %162 = load i64*, i64** %4, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i64*, i64** %4, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %4, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load i64*, i64** %4, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i64*, i64** %4, align 8
  %168 = getelementptr inbounds i64, i64* %167, i32 1
  store i64* %168, i64** %4, align 8
  %169 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %5, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %5, align 8
  br label %173

173:                                              ; preds = %157, %141
  br label %134

174:                                              ; preds = %134
  %175 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %176 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %180 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @memset(i64 %178, i32 0, i32 %182)
  %184 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %185 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %189 = sdiv i32 %187, %188
  store i32 %189, i32* %3, align 4
  %190 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %191 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %5, align 8
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %174
  %197 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %198 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32, i32* @ISCSI_CQ_DB_SIZE, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = bitcast i32* %204 to i64*
  store i64* %205, i64** %4, align 8
  br label %212

206:                                              ; preds = %174
  %207 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %2, align 8
  %208 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i64*
  store i64* %211, i64** %4, align 8
  br label %212

212:                                              ; preds = %206, %196
  br label %213

213:                                              ; preds = %252, %212
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %3, align 4
  %216 = icmp ne i32 %214, 0
  br i1 %216, label %217, label %253

217:                                              ; preds = %213
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %217
  %221 = load i64, i64* %5, align 8
  %222 = load i64*, i64** %4, align 8
  store i64 %221, i64* %222, align 8
  %223 = load i64*, i64** %4, align 8
  %224 = getelementptr inbounds i64, i64* %223, i32 1
  store i64* %224, i64** %4, align 8
  %225 = load i64, i64* %5, align 8
  %226 = trunc i64 %225 to i32
  %227 = ashr i32 %226, 32
  %228 = sext i32 %227 to i64
  %229 = load i64*, i64** %4, align 8
  store i64 %228, i64* %229, align 8
  %230 = load i64*, i64** %4, align 8
  %231 = getelementptr inbounds i64, i64* %230, i32 1
  store i64* %231, i64** %4, align 8
  %232 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %5, align 8
  %235 = add nsw i64 %234, %233
  store i64 %235, i64* %5, align 8
  br label %252

236:                                              ; preds = %217
  %237 = load i64, i64* %5, align 8
  %238 = trunc i64 %237 to i32
  %239 = ashr i32 %238, 32
  %240 = sext i32 %239 to i64
  %241 = load i64*, i64** %4, align 8
  store i64 %240, i64* %241, align 8
  %242 = load i64*, i64** %4, align 8
  %243 = getelementptr inbounds i64, i64* %242, i32 1
  store i64* %243, i64** %4, align 8
  %244 = load i64, i64* %5, align 8
  %245 = load i64*, i64** %4, align 8
  store i64 %244, i64* %245, align 8
  %246 = load i64*, i64** %4, align 8
  %247 = getelementptr inbounds i64, i64* %246, i32 1
  store i64* %247, i64** %4, align 8
  %248 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %5, align 8
  %251 = add nsw i64 %250, %249
  store i64 %251, i64* %5, align 8
  br label %252

252:                                              ; preds = %236, %220
  br label %213

253:                                              ; preds = %213
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
