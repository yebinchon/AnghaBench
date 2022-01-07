; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_clear_writebuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_lib_clear_writebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64 }
%struct.ene_ub6250_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MS_REG_ST1_DEFAULT = common dso_local global i32 0, align 4
@MS_REG_OVR_DEFAULT = common dso_local global i32 0, align 4
@MS_REG_MNG_DEFAULT = common dso_local global i32 0, align 4
@MS_LB_NOT_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @ms_lib_clear_writebuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ms_lib_clear_writebuf(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ene_ub6250_info*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %5 = load %struct.us_data*, %struct.us_data** %2, align 8
  %6 = getelementptr inbounds %struct.us_data, %struct.us_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %8, %struct.ene_ub6250_info** %4, align 8
  %9 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %10 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i64 -1, i64* %11, align 8
  %12 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %13 = call i32 @ms_lib_clear_pagemap(%struct.ene_ub6250_info* %12)
  %14 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %15 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %21 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %25 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %29 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = call i32 @memset(i64 %23, i32 255, i32 %32)
  br label %34

34:                                               ; preds = %19, %1
  %35 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %36 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %89

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %85, %40
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %44 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load i32, i32* @MS_REG_ST1_DEFAULT, align 4
  %50 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %51 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %49, i32* %57, align 4
  %58 = load i32, i32* @MS_REG_OVR_DEFAULT, align 4
  %59 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %60 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store i32 %58, i32* %66, align 4
  %67 = load i32, i32* @MS_REG_MNG_DEFAULT, align 4
  %68 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %69 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %67, i32* %75, align 4
  %76 = load i32, i32* @MS_LB_NOT_USED, align 4
  %77 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %4, align 8
  %78 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %48
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %41

88:                                               ; preds = %41
  br label %89

89:                                               ; preds = %88, %34
  ret void
}

declare dso_local i32 @ms_lib_clear_pagemap(%struct.ene_ub6250_info*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
