; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nsio_rw_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_claim.c_nsio_rw_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_common = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nd_namespace_io = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"request out of range\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NVDIMM_IO_ATOMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_namespace_common*, i32, i8*, i64, i32, i64)* @nsio_rw_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsio_rw_bytes(%struct.nd_namespace_common* %0, i32 %1, i8* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_namespace_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.nd_namespace_io*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.nd_namespace_common* %0, %struct.nd_namespace_common** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %20 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %21 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %20, i32 0, i32 0
  %22 = call %struct.nd_namespace_io* @to_nd_namespace_io(%struct.TYPE_6__* %21)
  store %struct.nd_namespace_io* %22, %struct.nd_namespace_io** %14, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 511
  %26 = sext i32 %25 to i64
  %27 = add i64 %23, %26
  %28 = call i32 @ALIGN(i64 %27, i32 512)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 9
  store i32 %30, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %174

38:                                               ; preds = %6
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %44 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %53 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %52, i32 0, i32 0
  %54 = call i32 @dev_WARN_ONCE(%struct.TYPE_6__* %53, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %174

57:                                               ; preds = %38
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @READ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %63 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %62, i32 0, i32 2
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @is_bad_pmem(i32* %63, i32 %64, i32 %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %174

72:                                               ; preds = %61
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %75 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @memcpy_mcsafe(i8* %73, i32 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %174

85:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %174

86:                                               ; preds = %57
  %87 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %88 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %87, i32 0, i32 2
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @is_bad_pmem(i32* %88, i32 %89, i32 %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %153

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = call i64 @IS_ALIGNED(i64 %96, i32 512)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %149

99:                                               ; preds = %94
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @IS_ALIGNED(i64 %100, i32 512)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %149

103:                                              ; preds = %99
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @NVDIMM_IO_ATOMIC, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %149, label %108

108:                                              ; preds = %103
  %109 = call i32 (...) @might_sleep()
  %110 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %111 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %110, i32 0, i32 0
  %112 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %113 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i64, i64* %11, align 8
  %119 = call i64 @nvdimm_clear_poison(%struct.TYPE_6__* %111, i32 %117, i64 %118)
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %123, %108
  %127 = load i64, i64* %19, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i64, i64* %19, align 8
  %131 = sdiv i64 %130, 512
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i64, i64* %19, align 8
  %135 = sdiv i64 %134, 512
  store i64 %135, i64* %19, align 8
  %136 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %137 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %136, i32 0, i32 2
  %138 = load i32, i32* %16, align 4
  %139 = load i64, i64* %19, align 8
  %140 = call i32 @badblocks_clear(i32* %137, i32 %138, i64 %139)
  br label %141

141:                                              ; preds = %133, %129, %126
  %142 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %143 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @arch_invalidate_pmem(i32 %146, i64 %147)
  br label %152

149:                                              ; preds = %103, %99, %94
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %86
  %154 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %155 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i32 @memcpy_flushcache(i32 %158, i8* %159, i64 %160)
  %162 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %163 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @to_nd_region(i32 %165)
  %167 = call i32 @nvdimm_flush(i32 %166, i32* null)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %153
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %170, %153
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %172, %85, %82, %69, %51, %37
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(%struct.TYPE_6__*) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_WARN_ONCE(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @is_bad_pmem(i32*, i32, i32) #1

declare dso_local i64 @memcpy_mcsafe(i8*, i32, i64) #1

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @nvdimm_clear_poison(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @badblocks_clear(i32*, i32, i64) #1

declare dso_local i32 @arch_invalidate_pmem(i32, i64) #1

declare dso_local i32 @memcpy_flushcache(i32, i8*, i64) #1

declare dso_local i32 @nvdimm_flush(i32, i32*) #1

declare dso_local i32 @to_nd_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
