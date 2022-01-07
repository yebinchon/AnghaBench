; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_fix_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_fix_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"setup: AdapterId=%08x MaxSpeed=%08x DevMode=%08x AdapterMode=%08x Tags=%08x ResetDelay=%08x\0A\00", align 1
@cfg_data = common dso_local global %struct.TYPE_2__* null, align 8
@CFG_ADAPTER_ID = common dso_local global i64 0, align 8
@CFG_MAX_SPEED = common dso_local global i64 0, align 8
@CFG_DEV_MODE = common dso_local global i64 0, align 8
@CFG_ADAPTER_MODE = common dso_local global i64 0, align 8
@CFG_TAGS = common dso_local global i64 0, align 8
@CFG_RESET_DELAY = common dso_local global i64 0, align 8
@CFG_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fix_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_settings() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DBG_1, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %4 = load i64, i64* @CFG_ADAPTER_ID, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %9 = load i64, i64* @CFG_MAX_SPEED, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %14 = load i64, i64* @CFG_DEV_MODE, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %19 = load i64, i64* @CFG_ADAPTER_MODE, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %24 = load i64, i64* @CFG_TAGS, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %29 = load i64, i64* @CFG_RESET_DELAY, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dprintkdbg(i32 %2, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %12, i64 %17, i64 %22, i64 %27, i64 %32)
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %79, %0
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @CFG_NUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %34
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %44, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %58, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %52, %38
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfg_data, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %66, %52
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %34

82:                                               ; preds = %34
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
