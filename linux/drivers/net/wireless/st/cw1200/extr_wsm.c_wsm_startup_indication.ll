; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_startup_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_startup_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i8*, i64*, i8*, i8*, i8*, i8* }
%struct.wsm_buf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [138 x i8] c"CW1200 WSM init done.\0A   Input buffers: %d x %d bytes\0A   Hardware: %d.%d\0A   %s firmware [%s], ver: %d, build: %d,   api: %d, cap: 0x%.4X\0A\00", align 1
@cw1200_fw_types = common dso_local global i32* null, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*)* @wsm_startup_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_startup_indication(%struct.cw1200_common* %0, %struct.wsm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %5, align 8
  %6 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %7 = call i8* @WSM_GET16(%struct.wsm_buf* %6)
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 10
  store i8* %7, i8** %10, align 8
  %11 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %12 = call i8* @WSM_GET16(%struct.wsm_buf* %11)
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  store i8* %12, i8** %15, align 8
  %16 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %17 = call i8* @WSM_GET16(%struct.wsm_buf* %16)
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  store i8* %17, i8** %20, align 8
  %21 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %22 = call i8* @WSM_GET16(%struct.wsm_buf* %21)
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  store i8* %22, i8** %25, align 8
  %26 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %27 = call i8* @WSM_GET16(%struct.wsm_buf* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %33 = call i8* @WSM_GET16(%struct.wsm_buf* %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %39 = call i8* @WSM_GET16(%struct.wsm_buf* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %45 = call i8* @WSM_GET16(%struct.wsm_buf* %44)
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %47 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i8* %45, i8** %48, align 8
  %49 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %50 = call i8* @WSM_GET16(%struct.wsm_buf* %49)
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %52 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i8* %50, i8** %53, align 8
  %54 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %55 = call i8* @WSM_GET16(%struct.wsm_buf* %54)
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  store i8* %55, i8** %58, align 8
  %59 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %60 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %61 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @WSM_GET(%struct.wsm_buf* %59, i64* %63, i32 8)
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %71 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %2
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %180

79:                                               ; preds = %2
  %80 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %81 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 4
  %85 = zext i1 %84 to i32
  %86 = call i64 @WARN_ON(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %180

91:                                               ; preds = %79
  %92 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %93 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %97 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 9
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %101 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %105 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = load i32*, i32** @cw1200_fw_types, align 8
  %109 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %110 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %117 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = load i64*, i64** %118, align 8
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %125 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %129 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %133 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pr_info(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i8* %95, i8* %99, i8* %103, i8* %107, i32 %115, i64* %119, i8* %123, i8* %127, i8* %131, i32 %135)
  %137 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %138 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %91
  %144 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %145 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %143, %91
  %154 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %155 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 2
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %153
  %161 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %162 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %169 = getelementptr inbounds i32*, i32** %167, i64 %168
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %160, %153
  %171 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %172 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %174 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %173, i32 0, i32 1
  %175 = call i32 @wake_up(i32* %174)
  store i32 0, i32* %3, align 4
  br label %180

176:                                              ; No predecessors!
  %177 = call i64 @WARN_ON(i32 1)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %170, %88, %76
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i8* @WSM_GET16(%struct.wsm_buf*) #1

declare dso_local i32 @WSM_GET(%struct.wsm_buf*, i64*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i8*, i8*, i32, i64*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
