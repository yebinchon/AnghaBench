; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_blkdev_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_blkdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.page = type { i32 }

@BLKS_PER_BUF = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@READ_BUFFERS = common dso_local global i32 0, align 4
@buffer_dev = common dso_local global %struct.super_block** null, align 8
@buffer_blocknr = common dso_local global i32* null, align 8
@BUFFER_SIZE = common dso_local global i32 0, align 4
@read_buffers = common dso_local global i8** null, align 8
@next_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i32, i32)* @cramfs_blkdev_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cramfs_blkdev_read(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.address_space*, %struct.address_space** %26, align 8
  store %struct.address_space* %27, %struct.address_space** %8, align 8
  %28 = load i32, i32* @BLKS_PER_BUF, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca %struct.page*, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %229

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %97, %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @READ_BUFFERS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %100

47:                                               ; preds = %43
  %48 = load %struct.super_block**, %struct.super_block*** @buffer_dev, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.super_block*, %struct.super_block** %48, i64 %50
  %52 = load %struct.super_block*, %struct.super_block** %51, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = icmp ne %struct.super_block* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %97

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** @buffer_blocknr, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %57, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %97

65:                                               ; preds = %56
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** @buffer_blocknr, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %66, %71
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %17, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @BUFFER_SIZE, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* @BUFFER_SIZE, align 4
  %86 = icmp ugt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81, %65
  br label %97

88:                                               ; preds = %81
  %89 = load i8**, i8*** @read_buffers, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr i8, i8* %93, i64 %95
  store i8* %96, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %229

97:                                               ; preds = %87, %64, %55
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %43

100:                                              ; preds = %43
  %101 = load %struct.address_space*, %struct.address_space** %8, align 8
  %102 = getelementptr inbounds %struct.address_space, %struct.address_space* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = lshr i32 %105, %106
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %136, %100
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @BLKS_PER_BUF, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  store %struct.page* null, %struct.page** %18, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %14, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load %struct.address_space*, %struct.address_space** %8, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %122, %123
  %125 = call %struct.page* @read_mapping_page(%struct.address_space* %121, i32 %124, i32* null)
  store %struct.page* %125, %struct.page** %18, align 8
  %126 = load %struct.page*, %struct.page** %18, align 8
  %127 = call i64 @IS_ERR(%struct.page* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store %struct.page* null, %struct.page** %18, align 8
  br label %130

130:                                              ; preds = %129, %120
  br label %131

131:                                              ; preds = %130, %113
  %132 = load %struct.page*, %struct.page** %18, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %134
  store %struct.page* %132, %struct.page** %135, align 8
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %109

139:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %165, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @BLKS_PER_BUF, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %146
  %148 = load %struct.page*, %struct.page** %147, align 8
  store %struct.page* %148, %struct.page** %19, align 8
  %149 = load %struct.page*, %struct.page** %19, align 8
  %150 = icmp ne %struct.page* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load %struct.page*, %struct.page** %19, align 8
  %153 = call i32 @wait_on_page_locked(%struct.page* %152)
  %154 = load %struct.page*, %struct.page** %19, align 8
  %155 = call i32 @PageUptodate(%struct.page* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.page*, %struct.page** %19, align 8
  %159 = call i32 @put_page(%struct.page* %158)
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %161
  store %struct.page* null, %struct.page** %162, align 8
  br label %163

163:                                              ; preds = %157, %151
  br label %164

164:                                              ; preds = %163, %144
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %140

168:                                              ; preds = %140
  %169 = load i32, i32* @next_buffer, align 4
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @NEXT_BUFFER(i32 %170)
  store i32 %171, i32* @next_buffer, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32*, i32** @buffer_blocknr, align 8
  %174 = load i32, i32* %13, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load %struct.super_block*, %struct.super_block** %5, align 8
  %178 = load %struct.super_block**, %struct.super_block*** @buffer_dev, align 8
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.super_block*, %struct.super_block** %178, i64 %180
  store %struct.super_block* %177, %struct.super_block** %181, align 8
  %182 = load i8**, i8*** @read_buffers, align 8
  %183 = load i32, i32* %13, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %15, align 8
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %217, %168
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @BLKS_PER_BUF, align 4
  %190 = icmp ult i32 %188, %189
  br i1 %190, label %191, label %220

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 %193
  %195 = load %struct.page*, %struct.page** %194, align 8
  store %struct.page* %195, %struct.page** %20, align 8
  %196 = load %struct.page*, %struct.page** %20, align 8
  %197 = icmp ne %struct.page* %196, null
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load i8*, i8** %15, align 8
  %200 = load %struct.page*, %struct.page** %20, align 8
  %201 = call i32 @kmap(%struct.page* %200)
  %202 = load i32, i32* @PAGE_SIZE, align 4
  %203 = call i32 @memcpy(i8* %199, i32 %201, i32 %202)
  %204 = load %struct.page*, %struct.page** %20, align 8
  %205 = call i32 @kunmap(%struct.page* %204)
  %206 = load %struct.page*, %struct.page** %20, align 8
  %207 = call i32 @put_page(%struct.page* %206)
  br label %212

208:                                              ; preds = %191
  %209 = load i8*, i8** %15, align 8
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = call i32 @memset(i8* %209, i32 0, i32 %210)
  br label %212

212:                                              ; preds = %208, %198
  %213 = load i32, i32* @PAGE_SIZE, align 4
  %214 = load i8*, i8** %15, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %15, align 8
  br label %217

217:                                              ; preds = %212
  %218 = load i32, i32* %11, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %187

220:                                              ; preds = %187
  %221 = load i8**, i8*** @read_buffers, align 8
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr i8, i8* %225, i64 %227
  store i8* %228, i8** %4, align 8
  store i32 1, i32* %16, align 4
  br label %229

229:                                              ; preds = %220, %88, %34
  %230 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %230)
  %231 = load i8*, i8** %4, align 8
  ret i8* %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.page*) #2

declare dso_local i32 @wait_on_page_locked(%struct.page*) #2

declare dso_local i32 @PageUptodate(%struct.page*) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @NEXT_BUFFER(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @kmap(%struct.page*) #2

declare dso_local i32 @kunmap(%struct.page*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
