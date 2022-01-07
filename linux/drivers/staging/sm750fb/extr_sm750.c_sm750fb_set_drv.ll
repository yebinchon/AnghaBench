; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_set_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_sm750fb_set_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lynxfb_par = type { i32, %struct.lynxfb_crtc, %struct.lynxfb_output, %struct.sm750_dev* }
%struct.lynxfb_crtc = type { i32, i32, i32, i32, i32, i32, i8*, i64 }
%struct.lynxfb_output = type { i8*, i32 }
%struct.sm750_dev = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@g_hwcursor = common dso_local global i32 0, align 4
@SM750LE_REVISION_ID = common dso_local global i64 0, align 8
@hw_sm750le_setBLANK = common dso_local global i32 0, align 4
@hw_sm750_setBLANK = common dso_local global i32 0, align 4
@hw_sm750le_deWait = common dso_local global i32 0, align 4
@hw_sm750_deWait = common dso_local global i32 0, align 4
@sm750_pnc = common dso_local global i8* null, align 8
@sm750_primary = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"use simul primary mode\0A\00", align 1
@sm750_secondary = common dso_local global i8* null, align 8
@sm750_panel = common dso_local global i8* null, align 8
@sm750_crt = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lynxfb_par*)* @sm750fb_set_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm750fb_set_drv(%struct.lynxfb_par* %0) #0 {
  %2 = alloca %struct.lynxfb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm750_dev*, align 8
  %5 = alloca %struct.lynxfb_output*, align 8
  %6 = alloca %struct.lynxfb_crtc*, align 8
  store %struct.lynxfb_par* %0, %struct.lynxfb_par** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.lynxfb_par*, %struct.lynxfb_par** %2, align 8
  %8 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %7, i32 0, i32 3
  %9 = load %struct.sm750_dev*, %struct.sm750_dev** %8, align 8
  store %struct.sm750_dev* %9, %struct.sm750_dev** %4, align 8
  %10 = load %struct.lynxfb_par*, %struct.lynxfb_par** %2, align 8
  %11 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %10, i32 0, i32 2
  store %struct.lynxfb_output* %11, %struct.lynxfb_output** %5, align 8
  %12 = load %struct.lynxfb_par*, %struct.lynxfb_par** %2, align 8
  %13 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %12, i32 0, i32 1
  store %struct.lynxfb_crtc* %13, %struct.lynxfb_crtc** %6, align 8
  %14 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %15 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %18 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %20 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %25 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @g_hwcursor, align 4
  %30 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %31 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %32, i32 0, i32 1
  store i32 16, i32* %33, align 4
  %34 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %34, i32 0, i32 2
  store i32 8, i32* %35, align 8
  %36 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %37 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %39 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %41 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SM750LE_REVISION_ID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* @hw_sm750le_setBLANK, align 4
  br label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @hw_sm750_setBLANK, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %52 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %54 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SM750LE_REVISION_ID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @hw_sm750le_deWait, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @hw_sm750_deWait, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %65 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %68 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %183 [
    i32 129, label %70
    i32 128, label %85
    i32 131, label %99
    i32 130, label %141
  ]

70:                                               ; preds = %62
  %71 = load i8*, i8** @sm750_pnc, align 8
  %72 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %73 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @sm750_primary, align 8
  %75 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %76 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %78 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  %79 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %80 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %83 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %186

85:                                               ; preds = %62
  %86 = load i8*, i8** @sm750_pnc, align 8
  %87 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %88 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @sm750_secondary, align 8
  %90 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %93 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %92, i32 0, i32 4
  store i32 0, i32* %93, align 8
  %94 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %95 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %98 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  br label %186

99:                                               ; preds = %62
  %100 = load %struct.lynxfb_par*, %struct.lynxfb_par** %2, align 8
  %101 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load i8*, i8** @sm750_panel, align 8
  %106 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %107 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @sm750_primary, align 8
  %109 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %110 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %112 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %111, i32 0, i32 4
  store i32 0, i32* %112, align 8
  %113 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %114 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %117 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  br label %140

118:                                              ; preds = %99
  %119 = load i8*, i8** @sm750_crt, align 8
  %120 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %121 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @sm750_secondary, align 8
  %123 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %124 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %126 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, 1
  %129 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %130 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %132 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %135 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %133, %136
  %138 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %139 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %118, %104
  br label %186

141:                                              ; preds = %62
  %142 = load %struct.lynxfb_par*, %struct.lynxfb_par** %2, align 8
  %143 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load i8*, i8** @sm750_panel, align 8
  %148 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %149 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** @sm750_secondary, align 8
  %151 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %152 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %154 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %156 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %159 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  br label %182

160:                                              ; preds = %141
  %161 = load i8*, i8** @sm750_crt, align 8
  %162 = load %struct.lynxfb_output*, %struct.lynxfb_output** %5, align 8
  %163 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @sm750_primary, align 8
  %165 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %166 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  %167 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %168 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = ashr i32 %169, 1
  %171 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %172 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.sm750_dev*, %struct.sm750_dev** %4, align 8
  %174 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %177 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %175, %178
  %180 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %6, align 8
  %181 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %160, %146
  br label %186

183:                                              ; preds = %62
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %183, %182, %140, %85, %70
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
