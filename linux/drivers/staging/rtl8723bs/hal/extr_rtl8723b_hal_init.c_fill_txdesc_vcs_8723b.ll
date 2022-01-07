; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_fill_txdesc_vcs_8723b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_fill_txdesc_vcs_8723b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pkt_attrib = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@PREAMBLE_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.pkt_attrib*, %struct.TYPE_7__*)* @fill_txdesc_vcs_8723b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_txdesc_vcs_8723b(%struct.adapter* %0, %struct.pkt_attrib* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.pkt_attrib*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %8 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %3
  %12 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %13 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 130, label %20
    i32 129, label %23
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  br label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  br label %25

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %11, %23
  br label %25

25:                                               ; preds = %24, %20, %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store i32 8, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i32 15, i32* %29, align 4
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PREAMBLE_SHORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %25
  %41 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %42 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %48 = call i32 @SCMapping_8723B(%struct.adapter* %46, %struct.pkt_attrib* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %3
  ret void
}

declare dso_local i32 @SCMapping_8723B(%struct.adapter*, %struct.pkt_attrib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
