; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_g450.c_cve2_init_TVdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_g450.c_cve2_init_TVdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_desc = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.mavenregs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cve2_init_TVdata.paloutd = internal constant %struct.output_desc { i32 52148148, i32 1407407, i32 4666667, i32 5777778, i64 19042247534182, i32 2518518, i32 625 }, align 8
@cve2_init_TVdata.ntscoutd = internal constant %struct.output_desc { i32 52888889, i32 1333333, i32 4666667, i32 4666667, i64 15374030659475, i32 2418418, i32 525 }, align 8
@cve2_init_TVdata.palregs = internal constant %struct.mavenregs { %struct.TYPE_2__ { i32 42, i32 9, i32 138, i32 203, i32 0, i32 0, i32 249, i32 0, i32 126, i32 68, i32 156, i32 46, i32 33, i32 0, i32 60, i32 3, i32 60, i32 3, i32 26, i32 42, i32 28, i32 61, i32 20, i32 156, i32 1, i32 0, i32 254, i32 126, i32 96, i32 5, i32 173, i32 3, i32 165, i32 7, i32 165, i32 0, i32 0, i32 0, i32 8, i32 4, i32 0, i32 26, i32 85, i32 1, i32 38, i32 7, i32 126, i32 2, i32 84, i32 176, i32 0, i32 20, i32 73, i32 0, i32 0, i32 163, i32 200, i32 34, i32 2, i32 34, i32 63, i32 3, i32 0, i32 0 } }, align 4
@cve2_init_TVdata.ntscregs = internal constant %struct.mavenregs { %struct.TYPE_2__ { i32 33, i32 240, i32 124, i32 31, i32 0, i32 0, i32 249, i32 0, i32 126, i32 67, i32 126, i32 61, i32 0, i32 0, i32 65, i32 0, i32 60, i32 0, i32 23, i32 33, i32 27, i32 27, i32 36, i32 131, i32 1, i32 0, i32 15, i32 15, i32 96, i32 5, i32 192, i32 2, i32 156, i32 4, i32 156, i32 1, i32 2, i32 0, i32 10, i32 5, i32 0, i32 16, i32 255, i32 3, i32 36, i32 15, i32 120, i32 0, i32 0, i32 178, i32 4, i32 20, i32 2, i32 0, i32 0, i32 163, i32 200, i32 21, i32 5, i32 59, i32 60, i32 0, i32 0, i32 0 } }, align 4
@MATROXFB_OUTPUT_MODE_PAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mavenregs*, %struct.output_desc**)* @cve2_init_TVdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cve2_init_TVdata(i32 %0, %struct.mavenregs* %1, %struct.output_desc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mavenregs*, align 8
  %6 = alloca %struct.output_desc**, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mavenregs* %1, %struct.mavenregs** %5, align 8
  store %struct.output_desc** %2, %struct.output_desc*** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MATROXFB_OUTPUT_MODE_PAL, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.mavenregs*, %struct.mavenregs** %5, align 8
  %12 = bitcast %struct.mavenregs* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.mavenregs* @cve2_init_TVdata.palregs to i8*), i64 256, i1 false)
  %13 = load %struct.output_desc**, %struct.output_desc*** %6, align 8
  store %struct.output_desc* @cve2_init_TVdata.paloutd, %struct.output_desc** %13, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.mavenregs*, %struct.mavenregs** %5, align 8
  %16 = bitcast %struct.mavenregs* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.mavenregs* @cve2_init_TVdata.ntscregs to i8*), i64 256, i1 false)
  %17 = load %struct.output_desc**, %struct.output_desc*** %6, align 8
  store %struct.output_desc* @cve2_init_TVdata.ntscoutd, %struct.output_desc** %17, align 8
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
