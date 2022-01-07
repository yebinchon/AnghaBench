; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MB_WOL_DISABLE = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Unsupported WOL parameter. qdev->wol = 0x%x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set magic packet on %s.\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Enabled magic packet successfully on %s.\0A\00", align 1
@MB_WOL_MAGIC_PKT = common dso_local global i32 0, align 4
@MB_WOL_MODE_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"WOL %s (wol code 0x%x) on %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Successfully set\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_wol(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @MB_WOL_DISABLE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WAKE_ARP, align 4
  %11 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_PHY, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_UCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_MCAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WAKE_BCAST, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %9, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %25 = load i32, i32* @ifdown, align 4
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_3__*, i8*, ...) @netif_err(%struct.ql_adapter* %24, i32 %25, %struct.TYPE_3__* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %106

35:                                               ; preds = %1
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WAKE_MAGIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %35
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = call i32 @ql_mb_wol_set_magic(%struct.ql_adapter* %43, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @ifdown, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_3__*, i8*, ...) @netif_err(%struct.ql_adapter* %48, i32 %49, %struct.TYPE_3__* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %106

60:                                               ; preds = %42
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netif_info(%struct.ql_adapter* %61, i32 %62, %struct.TYPE_3__* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @MB_WOL_MAGIC_PKT, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %35
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load i32, i32* @MB_WOL_MODE_ON, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ql_mb_wol_mode(%struct.ql_adapter* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %89 = load i32, i32* @drv, align 4
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_3__*, i8*, ...) @netif_err(%struct.ql_adapter* %88, i32 %89, %struct.TYPE_3__* %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %81, %76
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %47, %23
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @ql_mb_wol_set_magic(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, %struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ql_mb_wol_mode(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
