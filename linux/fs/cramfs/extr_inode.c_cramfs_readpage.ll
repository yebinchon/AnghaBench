; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@read_mutex = common dso_local global i32 0, align 4
@CRAMFS_BLK_FLAG_UNCOMPRESSED = common dso_local global i32 0, align 4
@CRAMFS_BLK_FLAG_DIRECT_PTR = common dso_local global i32 0, align 4
@CRAMFS_BLK_FLAGS = common dso_local global i32 0, align 4
@CRAMFS_BLK_DIRECT_PTR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad data blocksize %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @cramfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i8* @kmap(%struct.page* %31)
  store i8* %32, i8** %9, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %214

38:                                               ; preds = %2
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  store %struct.super_block* %41, %struct.super_block** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @OFFSET(%struct.inode* %42)
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %11, align 4
  %49 = call i32 @mutex_lock(i32* @read_mutex)
  %50 = load %struct.super_block*, %struct.super_block** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @cramfs_read(%struct.super_block* %50, i32 %51, i32 4)
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @CRAMFS_BLK_FLAG_UNCOMPRESSED, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @CRAMFS_BLK_FLAG_DIRECT_PTR, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @CRAMFS_BLK_FLAGS, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %38
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @CRAMFS_BLK_DIRECT_PTR_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %74, i32* %14, align 4
  %75 = load %struct.page*, %struct.page** %5, align 8
  %76 = getelementptr inbounds %struct.page, %struct.page* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @offset_in_page(i32 %84)
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %81, %73
  br label %95

87:                                               ; preds = %67
  %88 = load %struct.super_block*, %struct.super_block** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @cramfs_read(%struct.super_block* %88, i32 %89, i32 2)
  %91 = inttoptr i64 %90 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %87, %86
  br label %155

96:                                               ; preds = %38
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call i32 @OFFSET(%struct.inode* %97)
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 4
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.page*, %struct.page** %5, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.super_block*, %struct.super_block** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, 4
  %110 = call i64 @cramfs_read(%struct.super_block* %107, i32 %109, i32 4)
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %106, %96
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @CRAMFS_BLK_FLAG_DIRECT_PTR, align 4
  %116 = and i32 %114, %115
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* @CRAMFS_BLK_FLAGS, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* @CRAMFS_BLK_DIRECT_PTR_SHIFT, align 4
  %126 = load i32, i32* %13, align 4
  %127 = shl i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* @CRAMFS_BLK_FLAG_UNCOMPRESSED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %119
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %146

136:                                              ; preds = %119
  %137 = load %struct.super_block*, %struct.super_block** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i64 @cramfs_read(%struct.super_block* %137, i32 %138, i32 2)
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 2, %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %136, %132
  br label %147

147:                                              ; preds = %146, %113
  %148 = load i32, i32* @CRAMFS_BLK_FLAGS, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %14, align 4
  br label %155

155:                                              ; preds = %147, %95
  %156 = load i32, i32* %14, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %205

159:                                              ; preds = %155
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = mul nsw i32 2, %161
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %173, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @PAGE_SIZE, align 4
  %170 = icmp sgt i32 %168, %169
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ]
  br label %173

173:                                              ; preds = %171, %159
  %174 = phi i1 [ true, %159 ], [ %172, %171 ]
  %175 = zext i1 %174 to i32
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = call i32 @mutex_unlock(i32* @read_mutex)
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %231

182:                                              ; preds = %173
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.super_block*, %struct.super_block** %10, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i64 @cramfs_read(%struct.super_block* %187, i32 %188, i32 %189)
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @memcpy(i8* %186, i64 %190, i32 %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %8, align 4
  br label %203

194:                                              ; preds = %182
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* @PAGE_SIZE, align 4
  %197 = load %struct.super_block*, %struct.super_block** %10, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i64 @cramfs_read(%struct.super_block* %197, i32 %198, i32 %199)
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @cramfs_uncompress_block(i8* %195, i32 %196, i64 %200, i32 %201)
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %194, %185
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %158
  %206 = call i32 @mutex_unlock(i32* @read_mutex)
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %231

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %2
  %215 = load i8*, i8** %9, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr i8, i8* %215, i64 %217
  %219 = load i32, i32* @PAGE_SIZE, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i32 @memset(i8* %218, i32 0, i32 %221)
  %223 = load %struct.page*, %struct.page** %5, align 8
  %224 = call i32 @flush_dcache_page(%struct.page* %223)
  %225 = load %struct.page*, %struct.page** %5, align 8
  %226 = call i32 @kunmap(%struct.page* %225)
  %227 = load %struct.page*, %struct.page** %5, align 8
  %228 = call i32 @SetPageUptodate(%struct.page* %227)
  %229 = load %struct.page*, %struct.page** %5, align 8
  %230 = call i32 @unlock_page(%struct.page* %229)
  store i32 0, i32* %3, align 4
  br label %240

231:                                              ; preds = %212, %178
  %232 = load %struct.page*, %struct.page** %5, align 8
  %233 = call i32 @kunmap(%struct.page* %232)
  %234 = load %struct.page*, %struct.page** %5, align 8
  %235 = call i32 @ClearPageUptodate(%struct.page* %234)
  %236 = load %struct.page*, %struct.page** %5, align 8
  %237 = call i32 @SetPageError(%struct.page* %236)
  %238 = load %struct.page*, %struct.page** %5, align 8
  %239 = call i32 @unlock_page(%struct.page* %238)
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %231, %214
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @OFFSET(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cramfs_read(%struct.super_block*, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @cramfs_uncompress_block(i8*, i32, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
