; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_phy_s = type { i32, i32, i32, i32, i32, i32 (i32, i32)*, i32, i64 }
%union.anon = type { %struct.bfi_phy_query_rsp_s* }
%struct.bfi_phy_query_rsp_s = type { i32 }
%struct.bfa_phy_attr_s = type { i32, i32 }
%struct.bfa_phy_stats_s = type { i32 }
%struct.bfi_phy_stats_rsp_s = type { i32 }
%struct.bfi_phy_write_rsp_s = type { i32 }
%struct.bfi_phy_read_rsp_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_phy_intr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_phy_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 8
  %8 = alloca %struct.bfa_phy_attr_s*, align 8
  %9 = alloca %struct.bfa_phy_stats_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.bfa_phy_s*
  store %struct.bfa_phy_s* %16, %struct.bfa_phy_s** %5, align 8
  %17 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %18 = bitcast %union.anon* %7 to %struct.bfi_mbmsg_s**
  store %struct.bfi_mbmsg_s* %17, %struct.bfi_mbmsg_s** %18, align 8
  %19 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %20 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bfa_trc(%struct.bfa_phy_s* %19, i32 %23)
  %25 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %31 = call i32 @bfa_trc(%struct.bfa_phy_s* %30, i32 39321)
  br label %319

32:                                               ; preds = %2
  %33 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %317 [
    i32 131, label %37
    i32 129, label %94
    i32 128, label %146
    i32 130, label %194
  ]

37:                                               ; preds = %32
  %38 = bitcast %union.anon* %7 to %struct.bfi_phy_query_rsp_s**
  %39 = load %struct.bfi_phy_query_rsp_s*, %struct.bfi_phy_query_rsp_s** %38, align 8
  %40 = getelementptr inbounds %struct.bfi_phy_query_rsp_s, %struct.bfi_phy_query_rsp_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @bfa_trc(%struct.bfa_phy_s* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @BFA_STATUS_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %37
  %50 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.bfa_phy_attr_s*
  store %struct.bfa_phy_attr_s* %54, %struct.bfa_phy_attr_s** %8, align 8
  %55 = load %struct.bfa_phy_attr_s*, %struct.bfa_phy_attr_s** %8, align 8
  %56 = bitcast %struct.bfa_phy_attr_s* %55 to i32*
  %57 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @bfa_phy_ntoh32(i32* %56, i32* %60, i32 8)
  %62 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %63 = load %struct.bfa_phy_attr_s*, %struct.bfa_phy_attr_s** %8, align 8
  %64 = getelementptr inbounds %struct.bfa_phy_attr_s, %struct.bfa_phy_attr_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bfa_trc(%struct.bfa_phy_s* %62, i32 %65)
  %67 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %68 = load %struct.bfa_phy_attr_s*, %struct.bfa_phy_attr_s** %8, align 8
  %69 = getelementptr inbounds %struct.bfa_phy_attr_s, %struct.bfa_phy_attr_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bfa_trc(%struct.bfa_phy_s* %67, i32 %70)
  br label %72

72:                                               ; preds = %49, %37
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %75 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %77 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %76, i32 0, i32 6
  store i32 0, i32* %77, align 8
  %78 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %79 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %78, i32 0, i32 5
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = icmp ne i32 (i32, i32)* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %83, i32 0, i32 5
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 %85(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %82, %72
  br label %319

94:                                               ; preds = %32
  %95 = bitcast %union.anon* %7 to %struct.bfi_phy_stats_rsp_s**
  %96 = load %struct.bfi_phy_stats_rsp_s*, %struct.bfi_phy_stats_rsp_s** %95, align 8
  %97 = getelementptr inbounds %struct.bfi_phy_stats_rsp_s, %struct.bfi_phy_stats_rsp_s* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be32_to_cpu(i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @bfa_trc(%struct.bfa_phy_s* %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @BFA_STATUS_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %94
  %107 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %108 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to %struct.bfa_phy_stats_s*
  store %struct.bfa_phy_stats_s* %111, %struct.bfa_phy_stats_s** %9, align 8
  %112 = load %struct.bfa_phy_stats_s*, %struct.bfa_phy_stats_s** %9, align 8
  %113 = bitcast %struct.bfa_phy_stats_s* %112 to i32*
  %114 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %115 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = call i32 @bfa_phy_ntoh32(i32* %113, i32* %117, i32 4)
  %119 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %120 = load %struct.bfa_phy_stats_s*, %struct.bfa_phy_stats_s** %9, align 8
  %121 = getelementptr inbounds %struct.bfa_phy_stats_s, %struct.bfa_phy_stats_s* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @bfa_trc(%struct.bfa_phy_s* %119, i32 %122)
  br label %124

124:                                              ; preds = %106, %94
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %127 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %129 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %128, i32 0, i32 6
  store i32 0, i32* %129, align 8
  %130 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %131 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %130, i32 0, i32 5
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = icmp ne i32 (i32, i32)* %132, null
  br i1 %133, label %134, label %145

134:                                              ; preds = %124
  %135 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %136 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %135, i32 0, i32 5
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %139 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %142 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 %137(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %124
  br label %319

146:                                              ; preds = %32
  %147 = bitcast %union.anon* %7 to %struct.bfi_phy_write_rsp_s**
  %148 = load %struct.bfi_phy_write_rsp_s*, %struct.bfi_phy_write_rsp_s** %147, align 8
  %149 = getelementptr inbounds %struct.bfi_phy_write_rsp_s, %struct.bfi_phy_write_rsp_s* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be32_to_cpu(i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @bfa_trc(%struct.bfa_phy_s* %152, i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @BFA_STATUS_OK, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %146
  %159 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %160 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %166 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %168 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %167, i32 0, i32 6
  store i32 0, i32* %168, align 8
  %169 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %170 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %169, i32 0, i32 5
  %171 = load i32 (i32, i32)*, i32 (i32, i32)** %170, align 8
  %172 = icmp ne i32 (i32, i32)* %171, null
  br i1 %172, label %173, label %184

173:                                              ; preds = %163
  %174 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %175 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %174, i32 0, i32 5
  %176 = load i32 (i32, i32)*, i32 (i32, i32)** %175, align 8
  %177 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %178 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %181 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %176(i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %173, %163
  br label %193

185:                                              ; preds = %158
  %186 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %187 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %188 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @bfa_trc(%struct.bfa_phy_s* %186, i32 %189)
  %191 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %192 = call i32 @bfa_phy_write_send(%struct.bfa_phy_s* %191)
  br label %193

193:                                              ; preds = %185, %184
  br label %319

194:                                              ; preds = %32
  %195 = bitcast %union.anon* %7 to %struct.bfi_phy_read_rsp_s**
  %196 = load %struct.bfi_phy_read_rsp_s*, %struct.bfi_phy_read_rsp_s** %195, align 8
  %197 = getelementptr inbounds %struct.bfi_phy_read_rsp_s, %struct.bfi_phy_read_rsp_s* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @be32_to_cpu(i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @bfa_trc(%struct.bfa_phy_s* %200, i32 %201)
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @BFA_STATUS_OK, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %194
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %209 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %211 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %210, i32 0, i32 6
  store i32 0, i32* %211, align 8
  %212 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %213 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %212, i32 0, i32 5
  %214 = load i32 (i32, i32)*, i32 (i32, i32)** %213, align 8
  %215 = icmp ne i32 (i32, i32)* %214, null
  br i1 %215, label %216, label %227

216:                                              ; preds = %206
  %217 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %218 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %217, i32 0, i32 5
  %219 = load i32 (i32, i32)*, i32 (i32, i32)** %218, align 8
  %220 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %221 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %224 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 %219(i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %216, %206
  br label %316

228:                                              ; preds = %194
  %229 = bitcast %union.anon* %7 to %struct.bfi_phy_read_rsp_s**
  %230 = load %struct.bfi_phy_read_rsp_s*, %struct.bfi_phy_read_rsp_s** %229, align 8
  %231 = getelementptr inbounds %struct.bfi_phy_read_rsp_s, %struct.bfi_phy_read_rsp_s* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @be32_to_cpu(i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %235 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %238 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i32*
  store i32* %242, i32** %11, align 8
  %243 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %244 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to i32*
  store i32* %246, i32** %12, align 8
  %247 = load i32, i32* %10, align 4
  %248 = ashr i32 %247, 1
  store i32 %248, i32* %14, align 4
  %249 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %250 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %251 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @bfa_trc(%struct.bfa_phy_s* %249, i32 %252)
  %254 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @bfa_trc(%struct.bfa_phy_s* %254, i32 %255)
  store i32 0, i32* %13, align 4
  br label %257

257:                                              ; preds = %272, %228
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %275

261:                                              ; preds = %257
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @be16_to_cpu(i32 %266)
  %268 = load i32*, i32** %11, align 8
  %269 = load i32, i32* %13, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %261
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %257

275:                                              ; preds = %257
  %276 = load i32, i32* %10, align 4
  %277 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %278 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sub nsw i32 %279, %276
  store i32 %280, i32* %278, align 8
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %283 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %287 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %312

290:                                              ; preds = %275
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %293 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  %294 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %295 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %294, i32 0, i32 6
  store i32 0, i32* %295, align 8
  %296 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %297 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %296, i32 0, i32 5
  %298 = load i32 (i32, i32)*, i32 (i32, i32)** %297, align 8
  %299 = icmp ne i32 (i32, i32)* %298, null
  br i1 %299, label %300, label %311

300:                                              ; preds = %290
  %301 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %302 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %301, i32 0, i32 5
  %303 = load i32 (i32, i32)*, i32 (i32, i32)** %302, align 8
  %304 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %305 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %308 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 %303(i32 %306, i32 %309)
  br label %311

311:                                              ; preds = %300, %290
  br label %315

312:                                              ; preds = %275
  %313 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %5, align 8
  %314 = call i32 @bfa_phy_read_send(%struct.bfa_phy_s* %313)
  br label %315

315:                                              ; preds = %312, %311
  br label %316

316:                                              ; preds = %315, %227
  br label %319

317:                                              ; preds = %32
  %318 = call i32 @WARN_ON(i32 1)
  br label %319

319:                                              ; preds = %29, %317, %316, %193, %145, %93
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_phy_s*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @bfa_phy_ntoh32(i32*, i32*, i32) #1

declare dso_local i32 @bfa_phy_write_send(%struct.bfa_phy_s*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @bfa_phy_read_send(%struct.bfa_phy_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
