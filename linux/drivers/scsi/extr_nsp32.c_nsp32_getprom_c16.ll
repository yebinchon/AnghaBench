; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_getprom_c16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_getprom_c16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i8* }
%struct.TYPE_7__ = type { i32 }

@NSP32_HOST_SCSIID = common dso_local global i32 0, align 4
@trans_mode = common dso_local global i64 0, align 8
@ULTRA20M_MODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @nsp32_getprom_c16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_getprom_c16(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i8* @nsp32_prom_read(%struct.TYPE_8__* %8, i32 17)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NSP32_HOST_SCSIID, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @nsp32_prom_read(%struct.TYPE_8__* %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %32 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
    i32 3, label %31
  ]

28:                                               ; preds = %16
  store i32 12, i32* %7, align 4
  br label %33

29:                                               ; preds = %16
  store i32 25, i32* %7, align 4
  br label %33

30:                                               ; preds = %16
  store i32 50, i32* %7, align 4
  br label %33

31:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %33

32:                                               ; preds = %16
  store i32 12, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @nsp32_search_period_entry(%struct.TYPE_8__* %34, %struct.TYPE_7__* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* @trans_mode, align 8
  %42 = load i64, i64* @ULTRA20M_MODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %33
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load i32, i32* @TRUE, align 4
  ret i32 %53
}

declare dso_local i8* @nsp32_prom_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nsp32_search_period_entry(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
