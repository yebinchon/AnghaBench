; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i32, i32, %struct.wa_seg**, i32, %struct.TYPE_5__*, %struct.wahc* }
%struct.wa_seg = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wahc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"xfer %p ID 0x%08X#%u: available %u empty %u submitted\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"xfer %p ID 0x%08X#%u: available %u empty %u delayed\0A\00", align 1
@WA_SEG_DELAYED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*)* @__wa_xfer_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_submit(%struct.wa_xfer* %0) #0 {
  %2 = alloca %struct.wa_xfer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wahc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wa_seg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wa_rpipe*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wa_xfer* %0, %struct.wa_xfer** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %17, i32 0, i32 5
  %19 = load %struct.wahc*, %struct.wahc** %18, align 8
  store %struct.wahc* %19, %struct.wahc** %7, align 8
  %20 = load %struct.wahc*, %struct.wahc** %7, align 8
  %21 = getelementptr inbounds %struct.wahc, %struct.wahc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %8, align 8
  %24 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %25 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.wa_rpipe*, %struct.wa_rpipe** %27, align 8
  store %struct.wa_rpipe* %28, %struct.wa_rpipe** %12, align 8
  %29 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %30 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @le16_to_cpu(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.wahc*, %struct.wahc** %7, align 8
  %35 = getelementptr inbounds %struct.wahc, %struct.wahc* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %39 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %38, i32 0, i32 3
  %40 = load %struct.wahc*, %struct.wahc** %7, align 8
  %41 = getelementptr inbounds %struct.wahc, %struct.wahc* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.wahc*, %struct.wahc** %7, align 8
  %44 = getelementptr inbounds %struct.wahc, %struct.wahc* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %48 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %47, i32 0, i32 3
  %49 = call i64 @atomic_read(i32* %48)
  %50 = load i64, i64* %13, align 8
  %51 = icmp ugt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  store i32 0, i32* %3, align 4
  %54 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %55 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %54, i32 0, i32 1
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %143, %1
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %61 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %146

64:                                               ; preds = %58
  store i32 1, i32* %16, align 4
  %65 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %66 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %65, i32 0, i32 3
  %67 = call i64 @atomic_read(i32* %66)
  store i64 %67, i64* %14, align 8
  %68 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %69 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %68, i32 0, i32 4
  %70 = call i64 @list_empty(i32* %69)
  store i64 %70, i64* %15, align 8
  %71 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %72 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %71, i32 0, i32 2
  %73 = load %struct.wa_seg**, %struct.wa_seg*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %73, i64 %75
  %77 = load %struct.wa_seg*, %struct.wa_seg** %76, align 8
  store %struct.wa_seg* %77, %struct.wa_seg** %10, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %64
  %81 = load i64, i64* %15, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %85 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__wa_dto_try_get(i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %83
  store i32 0, i32* %16, align 4
  %91 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %92 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %93 = load %struct.wa_seg*, %struct.wa_seg** %10, align 8
  %94 = call i32 @__wa_seg_submit(%struct.wa_rpipe* %91, %struct.wa_xfer* %92, %struct.wa_seg* %93, i32* %5)
  store i32 %94, i32* %3, align 4
  %95 = load %struct.device*, %struct.device** %8, align 8
  %96 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %97 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %98 = call i32 @wa_xfer_id(%struct.wa_xfer* %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %96, i32 %98, i32 %99, i64 %100, i64 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %90
  %106 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %107 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @__wa_dto_put(i32 %108)
  br label %110

110:                                              ; preds = %105, %90
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %115 = call i32 @__wa_xfer_abort(%struct.wa_xfer* %114)
  br label %147

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %80, %64
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %124 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %125 = call i32 @wa_xfer_id(%struct.wa_xfer* %124)
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @dev_dbg(%struct.device* %122, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.wa_xfer* %123, i32 %125, i32 %126, i64 %127, i64 %128)
  %130 = load i32, i32* @WA_SEG_DELAYED, align 4
  %131 = load %struct.wa_seg*, %struct.wa_seg** %10, align 8
  %132 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.wa_seg*, %struct.wa_seg** %10, align 8
  %134 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %133, i32 0, i32 0
  %135 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %136 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %135, i32 0, i32 4
  %137 = call i32 @list_add_tail(i32* %134, i32* %136)
  br label %138

138:                                              ; preds = %121, %118
  %139 = load %struct.wa_xfer*, %struct.wa_xfer** %2, align 8
  %140 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %58

146:                                              ; preds = %58
  br label %147

147:                                              ; preds = %146, %113
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %147
  %151 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %152 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %151, i32 0, i32 4
  %153 = call i64 @list_empty(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %150
  %156 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %157 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %156, i32 0, i32 3
  %158 = call i64 @atomic_read(i32* %157)
  %159 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %160 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @le16_to_cpu(i32 %162)
  %164 = icmp eq i64 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %165, %155, %150, %147
  %167 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %168 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %167, i32 0, i32 1
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %175 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %178 = call i32 @wa_add_delayed_rpipe(i32 %176, %struct.wa_rpipe* %177)
  br label %188

179:                                              ; preds = %166
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %179
  %183 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %184 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @wa_check_for_delayed_rpipes(i32 %185)
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %173
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__wa_dto_try_get(i32) #1

declare dso_local i32 @__wa_seg_submit(%struct.wa_rpipe*, %struct.wa_xfer*, %struct.wa_seg*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.wa_xfer*, i32, i32, i64, i64) #1

declare dso_local i32 @wa_xfer_id(%struct.wa_xfer*) #1

declare dso_local i32 @__wa_dto_put(i32) #1

declare dso_local i32 @__wa_xfer_abort(%struct.wa_xfer*) #1

declare dso_local i32 @wa_add_delayed_rpipe(i32, %struct.wa_rpipe*) #1

declare dso_local i32 @wa_check_for_delayed_rpipes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
