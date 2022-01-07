; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_report_tgtpgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_report_tgtpgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SDEBUG_MAX_TGTPGS_ARR_SZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@sdebug_vpd_use_hostno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_report_tgtpgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_report_tgtpgs(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %21 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 6
  %29 = call i32 @get_unaligned_be32(i8* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @SDEBUG_MAX_TGTPGS_ARR_SZ, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @DID_REQUEUE, align 4
  %37 = shl i32 %36, 16
  store i32 %37, i32* %3, align 4
  br label %206

38:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = and i32 %40, 127
  %42 = shl i32 %41, 8
  %43 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %44 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 127
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = and i32 %49, 127
  %51 = shl i32 %50, 8
  %52 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %53 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 127
  %56 = add nsw i32 %51, %55
  %57 = add nsw i32 %56, 128
  store i32 %57, i32* %14, align 4
  store i32 4, i32* %9, align 4
  %58 = load i64, i64* @sdebug_vpd_use_hostno, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %38
  %61 = load i32, i32* %8, align 4
  %62 = srem i32 %61, 3
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 %63, i8* %68, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 15, i8* %73, align 1
  br label %85

74:                                               ; preds = %38
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 1, i8* %84, align 1
  br label %85

85:                                               ; preds = %74, %60
  %86 = load i32, i32* %13, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @put_unaligned_be16(i32 %86, i8* %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %9, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 1, i8* %113, align 1
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %15, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = call i32 @put_unaligned_be16(i32 %124, i8* %128)
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %9, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 3, i8* %136, align 1
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8 8, i8* %141, align 1
  %142 = load i32, i32* %14, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = call i32 @put_unaligned_be16(i32 %142, i8* %146)
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %9, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 1, i8* %169, align 1
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i32, i32* %16, align 4
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = call i32 @put_unaligned_be16(i32 %180, i8* %184)
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 2
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %188, 4
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = call i32 @put_unaligned_be32(i32 %190, i8* %192)
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @min(i32 %194, i32 %195)
  store i32 %196, i32* %12, align 4
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @SDEBUG_MAX_TGTPGS_ARR_SZ, align 4
  %201 = call i32 @min(i32 %199, i32 %200)
  %202 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %197, i8* %198, i32 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @kfree(i8* %203)
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %85, %35
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
