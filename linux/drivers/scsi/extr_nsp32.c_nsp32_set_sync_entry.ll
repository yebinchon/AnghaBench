; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_set_sync_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_set_sync_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8, i8, i8 }
%struct.TYPE_7__ = type { i8, i8, i8, i32 }

@SAMPLING_ENABLE = common dso_local global i8 0, align 1
@NSP32_DEBUG_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"set sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i8)* @nsp32_set_sync_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_set_sync_entry(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %9, align 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %10, align 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %9, align 1
  %37 = load i8, i8* %8, align 1
  %38 = call i32 @TO_SYNCREG(i8 zeroext %36, i8 zeroext %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i8, i8* %10, align 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8 %41, i8* %43, align 4
  %44 = load i8, i8* %8, align 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8 %44, i8* %46, align 1
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @SAMPLING_ENABLE, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = trunc i32 %51 to i8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i8 %52, i8* %54, align 2
  %55 = load i32, i32* @NSP32_DEBUG_SYNC, align 4
  %56 = call i32 @nsp32_dbg(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TO_SYNCREG(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @nsp32_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
