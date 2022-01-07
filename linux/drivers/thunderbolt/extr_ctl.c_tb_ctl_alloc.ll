; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_ctl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { %struct.TYPE_6__**, i32, i32, i32, i32, i32, i8*, i32, %struct.tb_nhi* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tb_nhi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thunderbolt_ctl\00", align 1
@TB_FRAME_SIZE = common dso_local global i32 0, align 4
@RING_FLAG_NO_SUSPEND = common dso_local global i32 0, align 4
@TB_CTL_RX_PKG_COUNT = common dso_local global i32 0, align 4
@tb_ctl_rx_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"control channel created\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_ctl* @tb_ctl_alloc(%struct.tb_nhi* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tb_ctl*, align 8
  %5 = alloca %struct.tb_nhi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_ctl*, align 8
  store %struct.tb_nhi* %0, %struct.tb_nhi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tb_ctl* @kzalloc(i32 56, i32 %10)
  store %struct.tb_ctl* %11, %struct.tb_ctl** %9, align 8
  %12 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %13 = icmp ne %struct.tb_ctl* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.tb_ctl* null, %struct.tb_ctl** %4, align 8
  br label %110

15:                                               ; preds = %3
  %16 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %17 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %18 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %17, i32 0, i32 8
  store %struct.tb_nhi* %16, %struct.tb_nhi** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %21 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %24 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %26 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %25, i32 0, i32 5
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %29 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %28, i32 0, i32 4
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %32 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* @TB_FRAME_SIZE, align 4
  %36 = call i32 @dma_pool_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %34, i32 %35, i32 4, i32 0)
  %37 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %38 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %40 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %15
  br label %107

44:                                               ; preds = %15
  %45 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %46 = load i32, i32* @RING_FLAG_NO_SUSPEND, align 4
  %47 = call i32 @tb_ring_alloc_tx(%struct.tb_nhi* %45, i32 0, i32 10, i32 %46)
  %48 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %49 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %51 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %107

55:                                               ; preds = %44
  %56 = load %struct.tb_nhi*, %struct.tb_nhi** %5, align 8
  %57 = load i32, i32* @RING_FLAG_NO_SUSPEND, align 4
  %58 = call i32 @tb_ring_alloc_rx(%struct.tb_nhi* %56, i32 0, i32 10, i32 %57, i32 65535, i32 65535, i32* null, i32* null)
  %59 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %60 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %62 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %107

66:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TB_CTL_RX_PKG_COUNT, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %73 = call %struct.TYPE_6__* @tb_ctl_pkg_alloc(%struct.tb_ctl* %72)
  %74 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %75 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %81 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %71
  br label %107

89:                                               ; preds = %71
  %90 = load i32, i32* @tb_ctl_rx_callback, align 4
  %91 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %92 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %93, i64 %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %90, i32* %99, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %105 = call i32 @tb_ctl_dbg(%struct.tb_ctl* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  store %struct.tb_ctl* %106, %struct.tb_ctl** %4, align 8
  br label %110

107:                                              ; preds = %88, %65, %54, %43
  %108 = load %struct.tb_ctl*, %struct.tb_ctl** %9, align 8
  %109 = call i32 @tb_ctl_free(%struct.tb_ctl* %108)
  store %struct.tb_ctl* null, %struct.tb_ctl** %4, align 8
  br label %110

110:                                              ; preds = %107, %103, %14
  %111 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  ret %struct.tb_ctl* %111
}

declare dso_local %struct.tb_ctl* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_ring_alloc_tx(%struct.tb_nhi*, i32, i32, i32) #1

declare dso_local i32 @tb_ring_alloc_rx(%struct.tb_nhi*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @tb_ctl_pkg_alloc(%struct.tb_ctl*) #1

declare dso_local i32 @tb_ctl_dbg(%struct.tb_ctl*, i8*) #1

declare dso_local i32 @tb_ctl_free(%struct.tb_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
