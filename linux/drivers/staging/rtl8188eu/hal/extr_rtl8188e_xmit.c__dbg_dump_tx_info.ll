; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_xmit.c__dbg_dump_tx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_xmit.c__dbg_dump_tx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.tx_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HAL_DEF_DBG_DUMP_TXPKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dump tx_desc for data frame\0A\00", align 1
@DATA_FRAMETAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"dump tx_desc for mgnt frame\0A\00", align 1
@MGNT_FRAMETAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"=====================================\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"txdw0(0x%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"txdw1(0x%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"txdw2(0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"txdw3(0x%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"txdw4(0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"txdw5(0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"txdw6(0x%08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"txdw7(0x%08x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dbg_dump_tx_info(%struct.adapter* %0, i32 %1, %struct.tx_desc* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tx_desc* %2, %struct.tx_desc** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = load i32, i32* @HAL_DEF_DBG_DUMP_TXPKT, align 4
  %11 = call i32 @rtw_hal_get_def_var(%struct.adapter* %9, i32 %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 15
  %18 = load i32, i32* @DATA_FRAMETAG, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %14
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 15
  %29 = load i32, i32* @MGNT_FRAMETAG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %25
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %40 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %44 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %48 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %52 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %56 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %60 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  %63 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %64 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %68 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @DBG_88E(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
