; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_CmnInfoPtrArrayHook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_CmnInfoPtrArrayHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.sta_info** }
%struct.sta_info = type { i32 }

@ODM_CMNINFO_STA_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_CmnInfoPtrArrayHook(%struct.odm_dm_struct* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.odm_dm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ODM_CMNINFO_STA_STATUS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.sta_info*
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 0
  %17 = load %struct.sta_info**, %struct.sta_info*** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %17, i64 %18
  store %struct.sta_info* %14, %struct.sta_info** %19, align 8
  br label %20

20:                                               ; preds = %12, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
