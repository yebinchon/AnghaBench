; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_setup_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_setup_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.urb* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

@WA_XFER_TYPE_CTL = common dso_local global i32 0, align 4
@WA_XFER_TYPE_BI = common dso_local global i32 0, align 4
@WA_XFER_TYPE_ISO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"HW BUG? seg_size %zu smaller than maxpktsize %zu\0A\00", align 1
@WA_SEGS_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"BUG? oops, number of segments %zu bigger than %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*, i32*)* @__wa_xfer_setup_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_setup_sizes(%struct.wa_xfer* %0, i32* %1) #0 {
  %3 = alloca %struct.wa_xfer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.wa_rpipe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wa_xfer* %0, %struct.wa_xfer** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %12, i32 0, i32 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %19 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %18, i32 0, i32 6
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %8, align 8
  %21 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %21, i32 0, i32 5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.wa_rpipe*, %struct.wa_rpipe** %24, align 8
  store %struct.wa_rpipe* %25, %struct.wa_rpipe** %9, align 8
  %26 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %27 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 3
  switch i32 %30, label %40 [
    i32 130, label %31
    i32 129, label %34
    i32 131, label %34
    i32 128, label %37
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @WA_XFER_TYPE_CTL, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  store i32 4, i32* %5, align 4
  br label %44

34:                                               ; preds = %2, %2
  %35 = load i32, i32* @WA_XFER_TYPE_BI, align 4
  %36 = load i32*, i32** %4, align 8
  store i32 %35, i32* %36, align 4
  store i32 4, i32* %5, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @WA_XFER_TYPE_ISO, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  store i32 4, i32* %5, align 4
  br label %44

40:                                               ; preds = %2
  %41 = call i32 (...) @BUG()
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %37, %34, %31
  %45 = load %struct.urb*, %struct.urb** %8, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB_DIR_IN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %54 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.urb*, %struct.urb** %8, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %66 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %7, align 8
  %71 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %72 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = mul nsw i32 %75, 1
  %77 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %78 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = shl i32 %76, %84
  %86 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %87 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %89 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %44
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %97 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %98, i64 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %188

103:                                              ; preds = %44
  %104 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %105 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = udiv i64 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %114 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.wa_rpipe*, %struct.wa_rpipe** %9, align 8
  %116 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 3
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %143

121:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  %122 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %123 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %122, i32 0, i32 3
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %130, %121
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.urb*, %struct.urb** %8, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @__wa_seg_calculate_isoc_frame_count(%struct.wa_xfer* %131, i32 %132, i32* %11)
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %139 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %124

142:                                              ; preds = %124
  br label %167

143:                                              ; preds = %103
  %144 = load %struct.urb*, %struct.urb** %8, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %148 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = call i32 @DIV_ROUND_UP(i32 %146, i64 %150)
  %152 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %153 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %155 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %143
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @WA_XFER_TYPE_CTL, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %165 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %158, %143
  br label %167

167:                                              ; preds = %166, %142
  %168 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %169 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* @WA_SEGS_MAX, align 8
  %173 = icmp ugt i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load %struct.device*, %struct.device** %6, align 8
  %176 = load %struct.urb*, %struct.urb** %8, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %180 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %178, %181
  %183 = load i64, i64* @WA_SEGS_MAX, align 8
  %184 = call i32 @dev_err(%struct.device* %175, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %182, i64 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %188

187:                                              ; preds = %167
  br label %188

188:                                              ; preds = %187, %174, %94
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64) #1

declare dso_local i64 @__wa_seg_calculate_isoc_frame_count(%struct.wa_xfer*, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
