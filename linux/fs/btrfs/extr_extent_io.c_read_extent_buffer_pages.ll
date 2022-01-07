; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_read_extent_buffer_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_read_extent_buffer_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { %struct.page**, i32, i64, i32, %struct.TYPE_3__* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@EXTENT_BUFFER_UPTODATE = common dso_local global i32 0, align 4
@WAIT_NONE = common dso_local global i32 0, align 4
@EXTENT_BUFFER_READ_ERR = common dso_local global i32 0, align 4
@btree_get_extent = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@WAIT_COMPLETE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_extent_buffer_pages(%struct.extent_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.extent_io_tree*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i64 0, i64* %15, align 8
  store %struct.bio* null, %struct.bio** %16, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_4__* @BTRFS_I(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.extent_io_tree* %25, %struct.extent_io_tree** %18, align 8
  %26 = load i32, i32* @EXTENT_BUFFER_UPTODATE, align 4
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

32:                                               ; preds = %3
  %33 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %34 = call i32 @num_extent_pages(%struct.extent_buffer* %33)
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %62, %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %41 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %40, i32 0, i32 0
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %44
  %46 = load %struct.page*, %struct.page** %45, align 8
  store %struct.page* %46, %struct.page** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WAIT_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.page*, %struct.page** %9, align 8
  %52 = call i32 @trylock_page(%struct.page* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %204

55:                                               ; preds = %50
  br label %59

56:                                               ; preds = %39
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = call i32 @lock_page(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %55
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %35

65:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %71, i32 0, i32 0
  %73 = load %struct.page**, %struct.page*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 %75
  %77 = load %struct.page*, %struct.page** %76, align 8
  store %struct.page* %77, %struct.page** %9, align 8
  %78 = load %struct.page*, %struct.page** %9, align 8
  %79 = call i32 @PageUptodate(%struct.page* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* @EXTENT_BUFFER_UPTODATE, align 4
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %94 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %93, i32 0, i32 3
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  br label %204

96:                                               ; preds = %88
  %97 = load i32, i32* @EXTENT_BUFFER_READ_ERR, align 4
  %98 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %98, i32 0, i32 3
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %102 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %104 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %103, i32 0, i32 1
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @atomic_set(i32* %104, i64 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %152, %96
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %107
  %112 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %113 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %112, i32 0, i32 0
  %114 = load %struct.page**, %struct.page*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.page*, %struct.page** %114, i64 %116
  %118 = load %struct.page*, %struct.page** %117, align 8
  store %struct.page* %118, %struct.page** %9, align 8
  %119 = load %struct.page*, %struct.page** %9, align 8
  %120 = call i32 @PageUptodate(%struct.page* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %148, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %127 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %126, i32 0, i32 1
  %128 = call i32 @atomic_dec(i32* %127)
  %129 = load %struct.page*, %struct.page** %9, align 8
  %130 = call i32 @unlock_page(%struct.page* %129)
  br label %152

131:                                              ; preds = %122
  %132 = load %struct.page*, %struct.page** %9, align 8
  %133 = call i32 @ClearPageError(%struct.page* %132)
  %134 = load %struct.extent_io_tree*, %struct.extent_io_tree** %18, align 8
  %135 = load %struct.page*, %struct.page** %9, align 8
  %136 = load i32, i32* @btree_get_extent, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @REQ_META, align 4
  %139 = call i32 @__extent_read_full_page(%struct.extent_io_tree* %134, %struct.page* %135, i32 %136, %struct.bio** %16, i32 %137, i64* %17, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %11, align 4
  %144 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %145 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %144, i32 0, i32 1
  %146 = call i32 @atomic_dec(i32* %145)
  br label %147

147:                                              ; preds = %142, %131
  br label %151

148:                                              ; preds = %111
  %149 = load %struct.page*, %struct.page** %9, align 8
  %150 = call i32 @unlock_page(%struct.page* %149)
  br label %151

151:                                              ; preds = %148, %147
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %107

155:                                              ; preds = %107
  %156 = load %struct.bio*, %struct.bio** %16, align 8
  %157 = icmp ne %struct.bio* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.bio*, %struct.bio** %16, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i64, i64* %17, align 8
  %162 = call i32 @submit_one_bio(%struct.bio* %159, i32 %160, i64 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %4, align 4
  br label %222

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %155
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @WAIT_COMPLETE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %4, align 4
  br label %222

177:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %199, %177
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %184 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %183, i32 0, i32 0
  %185 = load %struct.page**, %struct.page*** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.page*, %struct.page** %185, i64 %187
  %189 = load %struct.page*, %struct.page** %188, align 8
  store %struct.page* %189, %struct.page** %9, align 8
  %190 = load %struct.page*, %struct.page** %9, align 8
  %191 = call i32 @wait_on_page_locked(%struct.page* %190)
  %192 = load %struct.page*, %struct.page** %9, align 8
  %193 = call i32 @PageUptodate(%struct.page* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %182
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %11, align 4
  br label %198

198:                                              ; preds = %195, %182
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %178

202:                                              ; preds = %178
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %4, align 4
  br label %222

204:                                              ; preds = %91, %54
  br label %205

205:                                              ; preds = %208, %204
  %206 = load i32, i32* %12, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %12, align 4
  %211 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %212 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %211, i32 0, i32 0
  %213 = load %struct.page**, %struct.page*** %212, align 8
  %214 = load i32, i32* %12, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.page*, %struct.page** %213, i64 %215
  %217 = load %struct.page*, %struct.page** %216, align 8
  store %struct.page* %217, %struct.page** %9, align 8
  %218 = load %struct.page*, %struct.page** %9, align 8
  %219 = call i32 @unlock_page(%struct.page* %218)
  br label %205

220:                                              ; preds = %205
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %220, %202, %175, %165, %31
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @num_extent_pages(%struct.extent_buffer*) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @__extent_read_full_page(%struct.extent_io_tree*, %struct.page*, i32, %struct.bio**, i32, i64*, i32) #1

declare dso_local i32 @submit_one_bio(%struct.bio*, i32, i64) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
