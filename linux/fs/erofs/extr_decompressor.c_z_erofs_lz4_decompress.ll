; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_lz4_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_decompressor.c_z_erofs_lz4_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_decompress_req = type { i32, i64*, i32, i64*, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EROFS_FEATURE_INCOMPAT_LZ4_0PADDING = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to decompress, in[%u, %u] out[%u]\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[ in]: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"[out]: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_decompress_req*, i32*)* @z_erofs_lz4_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_lz4_decompress(%struct.z_erofs_decompress_req* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_decompress_req*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.z_erofs_decompress_req* %0, %struct.z_erofs_decompress_req** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %15 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %193

22:                                               ; preds = %2
  %23 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %24 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @kmap_atomic(i64 %26)
  store i32* %27, i32** %8, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %28 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %29 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_2__* @EROFS_SB(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EROFS_FEATURE_INCOMPAT_LZ4_0PADDING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %58

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %58

57:                                               ; preds = %49
  br label %38

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %61 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp uge i32 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @kunmap_atomic(i32* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %193

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %22
  store i32 0, i32* %9, align 4
  %71 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %72 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %77 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %138

80:                                               ; preds = %70
  %81 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %82 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %85 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %83, %86
  %88 = load i32, i32* @PAGE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %92 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %95 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %93, %96
  %98 = call i32 @PAGE_ALIGN(i32 %97)
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %102 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %132, label %105

105:                                              ; preds = %80
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %110 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %111, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %118 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %132, label %123

123:                                              ; preds = %108
  %124 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %125 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sub i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @LZ4_DECOMPRESS_INPLACE_MARGIN(i32 %129)
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %123, %108, %105, %80
  %133 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32* @generic_copy_inplace_data(%struct.z_erofs_decompress_req* %133, i32* %134, i32 %135)
  store i32* %136, i32** %8, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %132, %123
  br label %138

138:                                              ; preds = %137, %70
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %146 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %149 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @LZ4_decompress_safe_partial(i32* %142, i32* %143, i32 %144, i32 %147, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %138
  %155 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %156 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %161 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @erofs_err(i32 %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %158, i32 %159, i32 %162)
  %164 = call i32 @WARN_ON(i32 1)
  %165 = load i32, i32* @KERN_DEBUG, align 4
  %166 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @print_hex_dump(i32 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 16, i32 1, i32* %170, i32 %171, i32 1)
  %173 = load i32, i32* @KERN_DEBUG, align 4
  %174 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.z_erofs_decompress_req*, %struct.z_erofs_decompress_req** %4, align 8
  %177 = getelementptr inbounds %struct.z_erofs_decompress_req, %struct.z_erofs_decompress_req* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @print_hex_dump(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %174, i32 16, i32 1, i32* %175, i32 %178, i32 1)
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %154, %138
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 @erofs_put_pcpubuf(i32* %186)
  br label %191

188:                                              ; preds = %182
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @kunmap_atomic(i32* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %64, %19
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32* @kmap_atomic(i64) #1

declare dso_local %struct.TYPE_2__* @EROFS_SB(i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @LZ4_DECOMPRESS_INPLACE_MARGIN(i32) #1

declare dso_local i32* @generic_copy_inplace_data(%struct.z_erofs_decompress_req*, i32*, i32) #1

declare dso_local i32 @LZ4_decompress_safe_partial(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @erofs_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @erofs_put_pcpubuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
