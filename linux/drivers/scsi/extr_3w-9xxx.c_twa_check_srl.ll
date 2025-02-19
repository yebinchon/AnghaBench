; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_check_srl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_check_srl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i16, i16, i16, i16, i16, i16, i16, i16, i8*, i8*, i8*, i8*, i32 }

@TW_INIT_MESSAGE_CREDITS = common dso_local global i32 0, align 4
@TW_EXTENDED_INIT_CONNECT = common dso_local global i32 0, align 4
@TW_CURRENT_DRIVER_SRL = common dso_local global i16 0, align 2
@TW_9000_ARCH_ID = common dso_local global i32 0, align 4
@TW_CURRENT_DRIVER_BRANCH = common dso_local global i8* null, align 8
@TW_CURRENT_DRIVER_BUILD = common dso_local global i8* null, align 8
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Initconnection failed while checking SRL\00", align 1
@TW_CTLR_FW_COMPATIBLE = common dso_local global i32 0, align 4
@TW_BASE_FW_SRL = common dso_local global i16 0, align 2
@TW_BASE_FW_BRANCH = common dso_local global i8* null, align 8
@TW_BASE_FW_BUILD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Initconnection (base mode) failed while checking SRL\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Firmware and driver incompatibility: please upgrade firmware\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Firmware and driver incompatibility: please upgrade driver\00", align 1
@TW_DRIVER_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @twa_check_srl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_check_srl(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  store i16 0, i16* %6, align 2
  store i16 0, i16* %7, align 2
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load i32, i32* @TW_INIT_MESSAGE_CREDITS, align 4
  %13 = load i32, i32* @TW_EXTENDED_INIT_CONNECT, align 4
  %14 = load i16, i16* @TW_CURRENT_DRIVER_SRL, align 2
  %15 = load i32, i32* @TW_9000_ARCH_ID, align 4
  %16 = load i8*, i8** @TW_CURRENT_DRIVER_BRANCH, align 8
  %17 = load i8*, i8** @TW_CURRENT_DRIVER_BUILD, align 8
  %18 = call i64 @twa_initconnection(%struct.TYPE_6__* %11, i32 %12, i32 %13, i16 zeroext %14, i32 %15, i8* %16, i8* %17, i16* %6, i16* %7, i16* %8, i16* %9, i32* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TW_DRIVER, align 4
  %25 = call i32 @TW_PRINTK(i32 %23, i32 %24, i32 7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %141

26:                                               ; preds = %2
  %27 = load i16, i16* %6, align 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i16 %27, i16* %30, align 8
  %31 = load i16, i16* %8, align 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i16 %31, i16* %34, align 2
  %35 = load i16, i16* %9, align 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i16 %35, i16* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @TW_CTLR_FW_COMPATIBLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %98, label %43

43:                                               ; preds = %26
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = load i32, i32* @TW_INIT_MESSAGE_CREDITS, align 4
  %46 = load i32, i32* @TW_EXTENDED_INIT_CONNECT, align 4
  %47 = load i16, i16* @TW_BASE_FW_SRL, align 2
  %48 = load i32, i32* @TW_9000_ARCH_ID, align 4
  %49 = load i8*, i8** @TW_BASE_FW_BRANCH, align 8
  %50 = load i8*, i8** @TW_BASE_FW_BUILD, align 8
  %51 = call i64 @twa_initconnection(%struct.TYPE_6__* %44, i32 %45, i32 %46, i16 zeroext %47, i32 %48, i8* %49, i8* %50, i16* %6, i16* %7, i16* %8, i16* %9, i32* %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TW_DRIVER, align 4
  %58 = call i32 @TW_PRINTK(i32 %56, i32 %57, i32 10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %141

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @TW_CTLR_FW_COMPATIBLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %59
  %65 = load i16, i16* @TW_CURRENT_DRIVER_SRL, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* %6, align 2
  %68 = zext i16 %67 to i32
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TW_DRIVER, align 4
  %75 = call i32 @TW_PRINTK(i32 %73, i32 %74, i32 50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %82

76:                                               ; preds = %64
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TW_DRIVER, align 4
  %81 = call i32 @TW_PRINTK(i32 %79, i32 %80, i32 51, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %76, %70
  br label %141

83:                                               ; preds = %59
  %84 = load i16, i16* @TW_BASE_FW_SRL, align 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i16 %84, i16* %87, align 8
  %88 = load i8*, i8** @TW_BASE_FW_BRANCH, align 8
  %89 = ptrtoint i8* %88 to i16
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i16 %89, i16* %92, align 2
  %93 = load i8*, i8** @TW_BASE_FW_BUILD, align 8
  %94 = ptrtoint i8* %93 to i16
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i16 %94, i16* %97, align 4
  br label %98

98:                                               ; preds = %83, %26
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TW_DRIVER_VERSION, align 4
  %104 = call i32 @strlcpy(i32 %102, i32 %103, i32 4)
  %105 = load i16, i16* @TW_CURRENT_DRIVER_SRL, align 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  store i16 %105, i16* %108, align 2
  %109 = load i8*, i8** @TW_CURRENT_DRIVER_BRANCH, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 11
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @TW_CURRENT_DRIVER_BUILD, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 10
  store i8* %113, i8** %116, align 8
  %117 = load i16, i16* @TW_BASE_FW_SRL, align 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i16 %117, i16* %120, align 8
  %121 = load i8*, i8** @TW_BASE_FW_BRANCH, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 9
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @TW_BASE_FW_BUILD, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  store i8* %125, i8** %128, align 8
  %129 = load i16, i16* %6, align 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  store i16 %129, i16* %132, align 2
  %133 = load i16, i16* %8, align 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 6
  store i16 %133, i16* %136, align 4
  %137 = load i16, i16* %9, align 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 7
  store i16 %137, i16* %140, align 2
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %98, %82, %53, %20
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @twa_initconnection(%struct.TYPE_6__*, i32, i32, i16 zeroext, i32, i8*, i8*, i16*, i16*, i16*, i16*, i32*) #1

declare dso_local i32 @TW_PRINTK(i32, i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
