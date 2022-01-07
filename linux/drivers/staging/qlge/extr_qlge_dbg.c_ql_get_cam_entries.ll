; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_cam_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_cam_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@SEM_MAC_ADDR_MASK = common dso_local global i32 0, align 4
@MAC_ADDR_TYPE_CAM_MAC = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed read of mac index register\0A\00", align 1
@MAC_ADDR_TYPE_MULTI_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i8**)* @ql_get_cam_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_cam_entries(%struct.ql_adapter* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8*], align 16
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %10 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %11 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %88

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %22 = load i32, i32* @MAC_ADDR_TYPE_CAM_MAC, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %25 = call i32 @ql_get_mac_addr_reg(%struct.ql_adapter* %21, i32 %22, i32 %23, i8** %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %30 = load i32, i32* @drv, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_err(%struct.ql_adapter* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %83

35:                                               ; preds = %20
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %5, align 8
  store i8* %41, i8** %42, align 8
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 2
  %45 = load i8*, i8** %44, align 16
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %5, align 8
  store i8* %45, i8** %46, align 8
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %79, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = load i32, i32* @MAC_ADDR_TYPE_MULTI_MAC, align 4
  %58 = load i32, i32* %6, align 4
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %60 = call i32 @ql_get_mac_addr_reg(%struct.ql_adapter* %56, i32 %57, i32 %58, i8** %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %65 = load i32, i32* @drv, align 4
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netif_err(%struct.ql_adapter* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %83

70:                                               ; preds = %55
  %71 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %72 = load i8*, i8** %71, align 16
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %5, align 8
  store i8* %72, i8** %73, align 8
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %5, align 8
  store i8* %76, i8** %77, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %52

82:                                               ; preds = %52
  br label %83

83:                                               ; preds = %82, %63, %28
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %85 = load i32, i32* @SEM_MAC_ADDR_MASK, align 4
  %86 = call i32 @ql_sem_unlock(%struct.ql_adapter* %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_get_mac_addr_reg(%struct.ql_adapter*, i32, i32, i8**) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
