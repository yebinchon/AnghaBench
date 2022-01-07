; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_setHyperLutBltCtl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_stifb.c_setHyperLutBltCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stifb_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@HYPER_CMAP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.stifb_info*, i32, i32)* @setHyperLutBltCtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @setHyperLutBltCtl(%struct.stifb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.stifb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stifb_info* %0, %struct.stifb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 -2147483648, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @HYPER_CMAP_TYPE, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.stifb_info*, %struct.stifb_info** %5, align 8
  %16 = getelementptr inbounds %struct.stifb_info, %struct.stifb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 512, i32* %23, align 4
  br label %27

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = bitcast %struct.TYPE_9__* %4 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 4
  ret { i64, i64 } %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
