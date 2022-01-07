; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_EdcaTurboInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_EdcaTurboInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.TYPE_3__, %struct.adapter* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ODM_COMP_EDCA_TURBO = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Original VO PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_VO_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Original VI PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_VI_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Original BE PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_BE_PARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Original BK PARAM: 0x%x\0A\00", align 1
@ODM_EDCA_BK_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_EdcaTurboInit(%struct.odm_dm_struct* %0) #0 {
  %2 = alloca %struct.odm_dm_struct*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %2, align 8
  %4 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %4, i32 0, i32 1
  %6 = load %struct.adapter*, %struct.adapter** %5, align 8
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %17 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %18 = load i32, i32* @ODM_DBG_LOUD, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @ODM_EDCA_VO_PARAM, align 4
  %21 = call i32 @usb_read32(%struct.adapter* %19, i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %16, i32 %17, i32 %18, i8* %23)
  %25 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %26 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %27 = load i32, i32* @ODM_DBG_LOUD, align 4
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i32, i32* @ODM_EDCA_VI_PARAM, align 4
  %30 = call i32 @usb_read32(%struct.adapter* %28, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %25, i32 %26, i32 %27, i8* %32)
  %34 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %35 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %36 = load i32, i32* @ODM_DBG_LOUD, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @ODM_EDCA_BE_PARAM, align 4
  %39 = call i32 @usb_read32(%struct.adapter* %37, i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %34, i32 %35, i32 %36, i8* %41)
  %43 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %2, align 8
  %44 = load i32, i32* @ODM_COMP_EDCA_TURBO, align 4
  %45 = load i32, i32* @ODM_DBG_LOUD, align 4
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i32, i32* @ODM_EDCA_BK_PARAM, align 4
  %48 = call i32 @usb_read32(%struct.adapter* %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @ODM_RT_TRACE(%struct.odm_dm_struct* %43, i32 %44, i32 %45, i8* %50)
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.odm_dm_struct*, i32, i32, i8*) #1

declare dso_local i32 @usb_read32(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
