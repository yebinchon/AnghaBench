; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.c_wmt_ge_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.c_wmt_ge_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*)* }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@regbase = common dso_local global i64 0, align 8
@GE_DEPTH_OFF = common dso_local global i64 0, align 8
@GE_SRCBASE_OFF = common dso_local global i64 0, align 8
@GE_SRCDISPW_OFF = common dso_local global i64 0, align 8
@GE_SRCDISPH_OFF = common dso_local global i64 0, align 8
@GE_SRCAREAX_OFF = common dso_local global i64 0, align 8
@GE_SRCAREAY_OFF = common dso_local global i64 0, align 8
@GE_SRCAREAW_OFF = common dso_local global i64 0, align 8
@GE_SRCAREAH_OFF = common dso_local global i64 0, align 8
@GE_DESTBASE_OFF = common dso_local global i64 0, align 8
@GE_DESTDISPW_OFF = common dso_local global i64 0, align 8
@GE_DESTDISPH_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAX_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAY_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAW_OFF = common dso_local global i64 0, align 8
@GE_DESTAREAH_OFF = common dso_local global i64 0, align 8
@GE_ROPCODE_OFF = common dso_local global i64 0, align 8
@GE_COMMAND_OFF = common dso_local global i64 0, align 8
@GE_FIRE_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wmt_ge_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %171

11:                                               ; preds = %2
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %15, align 8
  %17 = icmp ne i32 (%struct.fb_info*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %22, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = call i32 %23(%struct.fb_info* %24)
  br label %26

26:                                               ; preds = %18, %11
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 16
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 8
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  br label %41

41:                                               ; preds = %33, %32
  %42 = phi i32 [ 3, %32 ], [ %40, %33 ]
  %43 = load i64, i64* @regbase, align 8
  %44 = load i64, i64* @GE_DEPTH_OFF, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %42, i64 %45)
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @regbase, align 8
  %52 = load i64, i64* @GE_SRCBASE_OFF, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %50, i64 %53)
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i64, i64* @regbase, align 8
  %61 = load i64, i64* @GE_SRCDISPW_OFF, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %59, i64 %62)
  %64 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load i64, i64* @regbase, align 8
  %70 = load i64, i64* @GE_SRCDISPH_OFF, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %68, i64 %71)
  %73 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %74 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @regbase, align 8
  %77 = load i64, i64* @GE_SRCAREAX_OFF, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %75, i64 %78)
  %80 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %81 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* @regbase, align 8
  %84 = load i64, i64* @GE_SRCAREAY_OFF, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %82, i64 %85)
  %87 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %88 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i64, i64* @regbase, align 8
  %92 = load i64, i64* @GE_SRCAREAW_OFF, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %90, i64 %93)
  %95 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %96 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i64, i64* @regbase, align 8
  %100 = load i64, i64* @GE_SRCAREAH_OFF, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %98, i64 %101)
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @regbase, align 8
  %108 = load i64, i64* @GE_DESTBASE_OFF, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %106, i64 %109)
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i64, i64* @regbase, align 8
  %117 = load i64, i64* @GE_DESTDISPW_OFF, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %115, i64 %118)
  %120 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = load i64, i64* @regbase, align 8
  %126 = load i64, i64* @GE_DESTDISPH_OFF, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %124, i64 %127)
  %129 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %130 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @regbase, align 8
  %133 = load i64, i64* @GE_DESTAREAX_OFF, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 %131, i64 %134)
  %136 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %137 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @regbase, align 8
  %140 = load i64, i64* @GE_DESTAREAY_OFF, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %138, i64 %141)
  %143 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %144 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i64, i64* @regbase, align 8
  %148 = load i64, i64* @GE_DESTAREAW_OFF, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i32 %146, i64 %149)
  %151 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %152 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i64, i64* @regbase, align 8
  %156 = load i64, i64* @GE_DESTAREAH_OFF, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %154, i64 %157)
  %159 = load i64, i64* @regbase, align 8
  %160 = load i64, i64* @GE_ROPCODE_OFF, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel(i32 204, i64 %161)
  %163 = load i64, i64* @regbase, align 8
  %164 = load i64, i64* @GE_COMMAND_OFF, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 1, i64 %165)
  %167 = load i64, i64* @regbase, align 8
  %168 = load i64, i64* @GE_FIRE_OFF, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 1, i64 %169)
  br label %171

171:                                              ; preds = %41, %10
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
