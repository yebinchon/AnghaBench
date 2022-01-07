; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c___test_eb_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_extent-io-tests.c___test_eb_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"bitmap was not zeroed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"setting all bits failed\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"clearing all bits failed\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"setting straddling pages failed\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"clearing straddling pages failed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"random bit pattern failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.extent_buffer*, i64)* @__test_eb_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__test_eb_bitmaps(i64* %0, %struct.extent_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @memset(i64* %12, i32 0, i64 %13)
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @memzero_extent_buffer(%struct.extent_buffer* %15, i32 0, i64 %16)
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %18, i64* %19, i32 0, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = call i32 @test_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %203

27:                                               ; preds = %3
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @BITS_PER_BYTE, align 8
  %31 = mul i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bitmap_set(i64* %28, i64 0, i32 %32)
  %34 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @BITS_PER_BYTE, align 8
  %37 = mul i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @extent_buffer_bitmap_set(%struct.extent_buffer* %34, i64 0, i64 0, i32 %38)
  %40 = load i64*, i64** %5, align 8
  %41 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @check_eb_bitmap(i64* %40, %struct.extent_buffer* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = call i32 @test_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %203

49:                                               ; preds = %27
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @BITS_PER_BYTE, align 8
  %53 = mul i64 %51, %52
  %54 = call i32 @bitmap_clear(i64* %50, i64 0, i64 %53)
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @BITS_PER_BYTE, align 8
  %58 = mul i64 %56, %57
  %59 = call i32 @extent_buffer_bitmap_clear(%struct.extent_buffer* %55, i64 0, i32 0, i64 %58)
  %60 = load i64*, i64** %5, align 8
  %61 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @check_eb_bitmap(i64* %60, %struct.extent_buffer* %61, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = call i32 @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %203

69:                                               ; preds = %49
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %136

73:                                               ; preds = %69
  %74 = load i64*, i64** %5, align 8
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = sub i64 %75, 4
  %77 = load i64, i64* @BITS_PER_BYTE, align 8
  %78 = mul i64 %76, %77
  %79 = load i64, i64* @BITS_PER_BYTE, align 8
  %80 = mul i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @bitmap_set(i64* %74, i64 %78, i32 %81)
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = sub i64 %84, 4
  %86 = load i64, i64* @BITS_PER_BYTE, align 8
  %87 = mul i64 8, %86
  %88 = trunc i64 %87 to i32
  %89 = call i32 @extent_buffer_bitmap_set(%struct.extent_buffer* %83, i64 %85, i64 0, i32 %88)
  %90 = load i64*, i64** %5, align 8
  %91 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @check_eb_bitmap(i64* %90, %struct.extent_buffer* %91, i64 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %73
  %97 = call i32 @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %203

99:                                               ; preds = %73
  %100 = load i64*, i64** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @BITS_PER_BYTE, align 8
  %103 = mul i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @bitmap_set(i64* %100, i64 0, i32 %104)
  %106 = load i64*, i64** %5, align 8
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = sub i64 %107, 4
  %109 = load i64, i64* @BITS_PER_BYTE, align 8
  %110 = mul i64 %108, %109
  %111 = load i64, i64* @BITS_PER_BYTE, align 8
  %112 = mul i64 8, %111
  %113 = call i32 @bitmap_clear(i64* %106, i64 %110, i64 %112)
  %114 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @BITS_PER_BYTE, align 8
  %117 = mul i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @extent_buffer_bitmap_set(%struct.extent_buffer* %114, i64 0, i64 0, i32 %118)
  %120 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = sub i64 %121, 4
  %123 = load i64, i64* @BITS_PER_BYTE, align 8
  %124 = mul i64 8, %123
  %125 = call i32 @extent_buffer_bitmap_clear(%struct.extent_buffer* %120, i64 %122, i32 0, i64 %124)
  %126 = load i64*, i64** %5, align 8
  %127 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @check_eb_bitmap(i64* %126, %struct.extent_buffer* %127, i64 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %99
  %133 = call i32 @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %203

135:                                              ; preds = %99
  br label %136

136:                                              ; preds = %135, %69
  store i32 0, i32* %10, align 4
  %137 = load i64*, i64** %5, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @BITS_PER_BYTE, align 8
  %140 = mul i64 %138, %139
  %141 = call i32 @bitmap_clear(i64* %137, i64 0, i64 %140)
  %142 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @BITS_PER_BYTE, align 8
  %145 = mul i64 %143, %144
  %146 = call i32 @extent_buffer_bitmap_clear(%struct.extent_buffer* %142, i64 0, i32 0, i64 %145)
  store i64 0, i64* %8, align 8
  br label %147

147:                                              ; preds = %189, %136
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* @BITS_PER_BYTE, align 8
  %151 = mul i64 %149, %150
  %152 = udiv i64 %151, 32
  %153 = icmp ult i64 %148, %152
  br i1 %153, label %154, label %192

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 1664525, %156
  %158 = add i64 %157, 1013904223
  %159 = and i64 %158, 4294967295
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %161

161:                                              ; preds = %185, %154
  %162 = load i64, i64* %9, align 8
  %163 = icmp ult i64 %162, 32
  br i1 %163, label %164, label %188

164:                                              ; preds = %161
  %165 = load i32, i32* %10, align 4
  %166 = load i64, i64* %9, align 8
  %167 = trunc i64 %166 to i32
  %168 = shl i32 1, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %164
  %172 = load i64*, i64** %5, align 8
  %173 = load i64, i64* %8, align 8
  %174 = mul i64 %173, 32
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %174, %175
  %177 = call i32 @bitmap_set(i64* %172, i64 %176, i32 1)
  %178 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %179 = load i64, i64* %8, align 8
  %180 = mul i64 %179, 32
  %181 = load i64, i64* %9, align 8
  %182 = add i64 %180, %181
  %183 = call i32 @extent_buffer_bitmap_set(%struct.extent_buffer* %178, i64 0, i64 %182, i32 1)
  br label %184

184:                                              ; preds = %171, %164
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %9, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %9, align 8
  br label %161

188:                                              ; preds = %161
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %8, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %8, align 8
  br label %147

192:                                              ; preds = %147
  %193 = load i64*, i64** %5, align 8
  %194 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @check_eb_bitmap(i64* %193, %struct.extent_buffer* %194, i64 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = call i32 @test_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %4, align 4
  br label %203

202:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %199, %132, %96, %66, %46, %23
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @memzero_extent_buffer(%struct.extent_buffer*, i32, i64) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i64*, i32, i64) #1

declare dso_local i32 @test_err(i8*) #1

declare dso_local i32 @bitmap_set(i64*, i64, i32) #1

declare dso_local i32 @extent_buffer_bitmap_set(%struct.extent_buffer*, i64, i64, i32) #1

declare dso_local i32 @check_eb_bitmap(i64*, %struct.extent_buffer*, i64) #1

declare dso_local i32 @bitmap_clear(i64*, i64, i64) #1

declare dso_local i32 @extent_buffer_bitmap_clear(%struct.extent_buffer*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
