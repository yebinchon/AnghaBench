; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_alloc_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_alloc_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.buffer_head*, i8**, i8* }
%struct.buffer_head = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32*, i32, i32*, %struct.TYPE_4__*)* @ext2_alloc_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_alloc_branch(%struct.inode* %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %33 = call i32 @ext2_alloc_blocks(%struct.inode* %27, i32 %28, i32 %29, i32 %31, i32* %32, i32* %17)
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %7, align 4
  br label %217

38:                                               ; preds = %6
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %170, %38
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %173

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %52, i32 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %18, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %17, align 4
  br label %177

68:                                               ; preds = %49
  %69 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.buffer_head* %69, %struct.buffer_head** %74, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %76 = call i32 @lock_buffer(%struct.buffer_head* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @memset(i64 %79, i32 0, i32 %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8**
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %85, i64 %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8** %92, i8*** %97, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i8* %102, i8** %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i8**, i8*** %118, align 8
  store i8* %113, i8** %119, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %68
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %21, align 4
  store i32 1, i32* %15, align 4
  br label %128

128:                                              ; preds = %145, %123
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = load i32, i32* %21, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %21, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %135, i8** %144, align 8
  br label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %128

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148, %68
  %150 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %151 = call i32 @set_buffer_uptodate(%struct.buffer_head* %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %153 = call i32 @unlock_buffer(%struct.buffer_head* %152)
  %154 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %154, %struct.inode* %155)
  %157 = load %struct.inode*, %struct.inode** %8, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @S_ISDIR(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %149
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = call i64 @IS_DIRSYNC(%struct.inode* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %168 = call i32 @sync_dirty_buffer(%struct.buffer_head* %167)
  br label %169

169:                                              ; preds = %166, %162, %149
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %45

173:                                              ; preds = %45
  %174 = load i32, i32* %19, align 4
  %175 = load i32*, i32** %10, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %7, align 4
  br label %217

177:                                              ; preds = %65
  store i32 1, i32* %15, align 4
  br label %178

178:                                              ; preds = %190, %177
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %16, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.buffer_head*, %struct.buffer_head** %187, align 8
  %189 = call i32 @bforget(%struct.buffer_head* %188)
  br label %190

190:                                              ; preds = %182
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %178

193:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %205, %193
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %194
  %199 = load %struct.inode*, %struct.inode** %8, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ext2_free_blocks(%struct.inode* %199, i32 %203, i32 1)
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %194

208:                                              ; preds = %194
  %209 = load %struct.inode*, %struct.inode** %8, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @ext2_free_blocks(%struct.inode* %209, i32 %213, i32 %214)
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %208, %173, %36
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i32 @ext2_alloc_blocks(%struct.inode*, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @ext2_free_blocks(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
