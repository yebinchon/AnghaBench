; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___raid_recover_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___raid_recover_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64* }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@BTRFS_RBIO_READ_REBUILD = common dso_local global i64 0, align 8
@BTRFS_RBIO_REBUILD_MISSING = common dso_local global i64 0, align 8
@RBIO_RMW_LOCKED_BIT = common dso_local global i32 0, align 4
@BTRFS_RBIO_PARITY_SCRUB = common dso_local global i64 0, align 8
@BTRFS_BLOCK_GROUP_RAID6 = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@RAID6_Q_STRIPE = common dso_local global i64 0, align 8
@RAID5_P_STRIPE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@BTRFS_RBIO_WRITE = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i64 0, align 8
@RBIO_CACHE_READY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*)* @__raid_recover_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__raid_recover_end_io(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %13 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %14 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call i8** @kcalloc(i32 %15, i32 8, i32 %16)
  store i8** %17, i8*** %5, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %21, i64* %9, align 8
  br label %359

22:                                               ; preds = %1
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %22
  %35 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %22
  %41 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %42 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %41, i32 0, i32 9
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load i32, i32* @RBIO_RMW_LOCKED_BIT, align 4
  %45 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %46 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %45, i32 0, i32 6
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %49 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %48, i32 0, i32 9
  %50 = call i32 @spin_unlock_irq(i32* %49)
  br label %51

51:                                               ; preds = %40, %34
  %52 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %53 = call i32 @index_rbio_pages(%struct.btrfs_raid_bio* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %351, %51
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %57 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %354

60:                                               ; preds = %54
  %61 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %62 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BTRFS_RBIO_PARITY_SCRUB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %69 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @test_bit(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %351

74:                                               ; preds = %66, %60
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %118, %74
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %78 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %75
  %82 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %83 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %89 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87, %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97, %93
  %102 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call %struct.page* @page_in_rbio(%struct.btrfs_raid_bio* %102, i32 %103, i32 %104, i32 0)
  store %struct.page* %105, %struct.page** %8, align 8
  br label %111

106:                                              ; preds = %97, %87
  %107 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %107, i32 %108, i32 %109)
  store %struct.page* %110, %struct.page** %8, align 8
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.page*, %struct.page** %8, align 8
  %113 = call i8* @kmap(%struct.page* %112)
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %75

121:                                              ; preds = %75
  %122 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %123 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %122, i32 0, i32 7
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID6, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %207

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %136 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %140, i64* %9, align 8
  br label %356

141:                                              ; preds = %133
  br label %212

142:                                              ; preds = %130
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %152 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %151, i32 0, i32 7
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @RAID6_Q_STRIPE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %150
  %163 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %164 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %163, i32 0, i32 7
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @RAID5_P_STRIPE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i64, i64* @BLK_STS_IOERR, align 8
  store i64 %175, i64* %9, align 8
  br label %356

176:                                              ; preds = %162
  br label %212

177:                                              ; preds = %150
  %178 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %179 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %178, i32 0, i32 7
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @RAID5_P_STRIPE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %177
  %190 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %191 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @PAGE_SIZE, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i8**, i8*** %5, align 8
  %196 = call i32 @raid6_datap_recov(i32 %192, i32 %193, i32 %194, i8** %195)
  br label %206

197:                                              ; preds = %177
  %198 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %199 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PAGE_SIZE, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i8**, i8*** %5, align 8
  %205 = call i32 @raid6_2data_recov(i32 %200, i32 %201, i32 %202, i32 %203, i8** %204)
  br label %206

206:                                              ; preds = %197, %189
  br label %269

207:                                              ; preds = %121
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, -1
  %210 = zext i1 %209 to i32
  %211 = call i32 @BUG_ON(i32 %210)
  br label %212

212:                                              ; preds = %207, %176, %141
  %213 = load i8**, i8*** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i8**, i8*** %5, align 8
  %219 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %220 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %218, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @copy_page(i8* %217, i8* %224)
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %12, align 8
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %250, %212
  %233 = load i32, i32* %4, align 4
  %234 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %235 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = icmp slt i32 %233, %237
  br i1 %238, label %239, label %253

239:                                              ; preds = %232
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %240, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = load i8**, i8*** %5, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  store i8* %245, i8** %249, align 8
  br label %250

250:                                              ; preds = %239
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %232

253:                                              ; preds = %232
  %254 = load i8*, i8** %12, align 8
  %255 = load i8**, i8*** %5, align 8
  %256 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %257 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %255, i64 %260
  store i8* %254, i8** %261, align 8
  %262 = load i8**, i8*** %5, align 8
  %263 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %264 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %265, 1
  %267 = load i32, i32* @PAGE_SIZE, align 4
  %268 = call i32 @run_xor(i8** %262, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %253, %206
  %270 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %271 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @BTRFS_RBIO_WRITE, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %307

275:                                              ; preds = %269
  store i32 0, i32* %10, align 4
  br label %276

276:                                              ; preds = %303, %275
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %279 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %306

282:                                              ; preds = %276
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, -1
  br i1 %284, label %285, label %292

285:                                              ; preds = %282
  %286 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %286, i32 %287, i32 %288)
  store %struct.page* %289, %struct.page** %8, align 8
  %290 = load %struct.page*, %struct.page** %8, align 8
  %291 = call i32 @SetPageUptodate(%struct.page* %290)
  br label %292

292:                                              ; preds = %285, %282
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, -1
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %296, i32 %297, i32 %298)
  store %struct.page* %299, %struct.page** %8, align 8
  %300 = load %struct.page*, %struct.page** %8, align 8
  %301 = call i32 @SetPageUptodate(%struct.page* %300)
  br label %302

302:                                              ; preds = %295, %292
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  br label %276

306:                                              ; preds = %276
  br label %307

307:                                              ; preds = %306, %269
  store i32 0, i32* %4, align 4
  br label %308

308:                                              ; preds = %347, %307
  %309 = load i32, i32* %4, align 4
  %310 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %311 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %350

314:                                              ; preds = %308
  %315 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %316 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %322 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %339

326:                                              ; preds = %320, %314
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* %6, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %334, label %330

330:                                              ; preds = %326
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* %7, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %330, %326
  %335 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %336 = load i32, i32* %4, align 4
  %337 = load i32, i32* %3, align 4
  %338 = call %struct.page* @page_in_rbio(%struct.btrfs_raid_bio* %335, i32 %336, i32 %337, i32 0)
  store %struct.page* %338, %struct.page** %8, align 8
  br label %344

339:                                              ; preds = %330, %320
  %340 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* %3, align 4
  %343 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %340, i32 %341, i32 %342)
  store %struct.page* %343, %struct.page** %8, align 8
  br label %344

344:                                              ; preds = %339, %334
  %345 = load %struct.page*, %struct.page** %8, align 8
  %346 = call i32 @kunmap(%struct.page* %345)
  br label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %4, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %4, align 4
  br label %308

350:                                              ; preds = %308
  br label %351

351:                                              ; preds = %350, %73
  %352 = load i32, i32* %3, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %3, align 4
  br label %54

354:                                              ; preds = %54
  %355 = load i64, i64* @BLK_STS_OK, align 8
  store i64 %355, i64* %9, align 8
  br label %356

356:                                              ; preds = %354, %174, %139
  %357 = load i8**, i8*** %5, align 8
  %358 = call i32 @kfree(i8** %357)
  br label %359

359:                                              ; preds = %356, %20
  %360 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %361 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %371, label %365

365:                                              ; preds = %359
  %366 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %367 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %392

371:                                              ; preds = %365, %359
  %372 = load i64, i64* %9, align 8
  %373 = load i64, i64* @BLK_STS_OK, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %383

375:                                              ; preds = %371
  %376 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %377 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  %381 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %382 = call i32 @cache_rbio_pages(%struct.btrfs_raid_bio* %381)
  br label %388

383:                                              ; preds = %375, %371
  %384 = load i32, i32* @RBIO_CACHE_READY_BIT, align 4
  %385 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %386 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %385, i32 0, i32 6
  %387 = call i32 @clear_bit(i32 %384, i32* %386)
  br label %388

388:                                              ; preds = %383, %380
  %389 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %390 = load i64, i64* %9, align 8
  %391 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %389, i64 %390)
  br label %427

392:                                              ; preds = %365
  %393 = load i64, i64* %9, align 8
  %394 = load i64, i64* @BLK_STS_OK, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %422

396:                                              ; preds = %392
  %397 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %398 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %397, i32 0, i32 1
  store i32 -1, i32* %398, align 4
  %399 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %400 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %399, i32 0, i32 2
  store i32 -1, i32* %400, align 8
  %401 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %402 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @BTRFS_RBIO_WRITE, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %396
  %407 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %408 = call i32 @finish_rmw(%struct.btrfs_raid_bio* %407)
  br label %421

409:                                              ; preds = %396
  %410 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %411 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @BTRFS_RBIO_PARITY_SCRUB, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %418

415:                                              ; preds = %409
  %416 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %417 = call i32 @finish_parity_scrub(%struct.btrfs_raid_bio* %416, i32 0)
  br label %420

418:                                              ; preds = %409
  %419 = call i32 (...) @BUG()
  br label %420

420:                                              ; preds = %418, %415
  br label %421

421:                                              ; preds = %420, %406
  br label %426

422:                                              ; preds = %392
  %423 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %424 = load i64, i64* %9, align 8
  %425 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %423, i64 %424)
  br label %426

426:                                              ; preds = %422, %421
  br label %427

427:                                              ; preds = %426, %388
  ret void
}

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @index_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.page* @page_in_rbio(%struct.btrfs_raid_bio*, i32, i32, i32) #1

declare dso_local %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio*, i32, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @raid6_datap_recov(i32, i32, i32, i8**) #1

declare dso_local i32 @raid6_2data_recov(i32, i32, i32, i32, i8**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @run_xor(i8**, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @cache_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i64) #1

declare dso_local i32 @finish_rmw(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @finish_parity_scrub(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
