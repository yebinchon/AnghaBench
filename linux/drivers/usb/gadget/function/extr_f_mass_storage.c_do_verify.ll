; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, %struct.fsg_buffhd*, %struct.fsg_lun* }
%struct.fsg_buffhd = type { i32 }
%struct.fsg_lun = type { i64, i64, i32, i32, i8*, i32, i32, i64 }

@SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@FSG_BUFLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"file read %u @ %llu -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error in file verify: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"partial file verify: %d/%u\0A\00", align 1
@SS_UNRECOVERED_READ_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_verify(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_lun*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fsg_buffhd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %13 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %14 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %13, i32 0, i32 2
  %15 = load %struct.fsg_lun*, %struct.fsg_lun** %14, align 8
  store %struct.fsg_lun* %15, %struct.fsg_lun** %4, align 8
  %16 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %17 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %16, i32 0, i32 1
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %17, align 8
  store %struct.fsg_buffhd* %18, %struct.fsg_buffhd** %7, align 8
  %19 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %20 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i64 @get_unaligned_be32(i32* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %26 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %31 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %32 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %196

35:                                               ; preds = %1
  %36 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %37 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -17
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i8*, i8** @SS_INVALID_FIELD_IN_CDB, align 8
  %45 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %46 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %196

49:                                               ; preds = %35
  %50 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %51 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = call i64 @get_unaligned_be16(i32* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %196

63:                                               ; preds = %49
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %66 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 %64, %67
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %5, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %72 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %70, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %77 = call i32 @fsg_lun_fsync_sub(%struct.fsg_lun* %76)
  %78 = load i32, i32* @current, align 4
  %79 = call i64 @signal_pending(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load i32, i32* @EINTR, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %196

84:                                               ; preds = %63
  %85 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %86 = call i32 @invalidate_sub(%struct.fsg_lun* %85)
  %87 = load i32, i32* @current, align 4
  %88 = call i64 @signal_pending(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINTR, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %196

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %187, %93
  %95 = load i64, i64* %10, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %195

97:                                               ; preds = %94
  %98 = load i64, i64* %10, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* @FSG_BUFLEN, align 8
  %101 = call i32 @min(i32 %99, i64 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %104 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = call i32 @min(i32 %102, i64 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %97
  %113 = load i8*, i8** @SS_LOGICAL_BLOCK_ADDRESS_OUT_OF_RANGE, align 8
  %114 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %115 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %118 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = lshr i32 %116, %120
  %122 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %123 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %125 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  br label %195

126:                                              ; preds = %97
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %9, align 4
  %128 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %129 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  %132 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @kernel_read(i32 %130, i32 %133, i32 %134, i32* %9)
  store i32 %135, i32* %12, align 4
  %136 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @VLDBG(%struct.fsg_lun* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %137, i64 %139, i32 %140)
  %142 = load i32, i32* @current, align 4
  %143 = call i64 @signal_pending(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %126
  %146 = load i32, i32* @EINTR, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %196

148:                                              ; preds = %126
  %149 = load i32, i32* %12, align 4
  %150 = icmp ult i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  store i32 0, i32* %12, align 4
  br label %170

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (%struct.fsg_lun*, i8*, i32, ...) @LDBG(%struct.fsg_lun* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %162)
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %166 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @round_down(i32 %164, i32 %167)
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %159, %155
  br label %170

170:                                              ; preds = %169, %151
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load i8*, i8** @SS_UNRECOVERED_READ_ERROR, align 8
  %175 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %176 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %179 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = lshr i32 %177, %181
  %183 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %184 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.fsg_lun*, %struct.fsg_lun** %4, align 8
  %186 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  br label %195

187:                                              ; preds = %170
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %8, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %12, align 4
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %10, align 8
  %194 = sub nsw i64 %193, %192
  store i64 %194, i64* %10, align 8
  br label %94

195:                                              ; preds = %173, %112, %94
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %145, %90, %81, %60, %43, %29
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fsg_lun_fsync_sub(%struct.fsg_lun*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @invalidate_sub(%struct.fsg_lun*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @kernel_read(i32, i32, i32, i32*) #1

declare dso_local i32 @VLDBG(%struct.fsg_lun*, i8*, i32, i64, i32) #1

declare dso_local i32 @LDBG(%struct.fsg_lun*, i8*, i32, ...) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
