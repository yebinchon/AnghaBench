; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_inbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_setup_inbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i64, i32, i32, i32, i32, %struct.perf_ctx* }
%struct.perf_ctx = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Couldn't get inbuf restrictions\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Too big inbuf size %pa > %pa\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to alloc inbuf of %pa\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unaligned inbuf allocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set inbuf translation\0A\00", align 1
@PERF_CMD_SXLAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*)* @perf_setup_inbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_setup_inbuf(%struct.perf_peer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_peer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_peer* %0, %struct.perf_peer** %3, align 8
  %9 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %10 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %9, i32 0, i32 5
  %11 = load %struct.perf_ctx*, %struct.perf_ctx** %10, align 8
  store %struct.perf_ctx* %11, %struct.perf_ctx** %7, align 8
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %16 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ntb_mw_get_align(%struct.TYPE_3__* %14, i32 %17, i32 %20, i64* %4, i64* %5, i64* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %130

31:                                               ; preds = %1
  %32 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %33 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %43 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64* %43, i64* %6)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %130

47:                                               ; preds = %31
  %48 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %49 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @round_up(i64 %50, i64 %51)
  %53 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %54 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %56 = call i32 @perf_free_inbuf(%struct.perf_peer* %55)
  %57 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %58 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %62 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %65 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %64, i32 0, i32 1
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @dma_alloc_coherent(i32* %60, i64 %63, i32* %65, i32 %66)
  %68 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %69 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %71 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %47
  %75 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %80 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %130

84:                                               ; preds = %47
  %85 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %86 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @IS_ALIGNED(i32 %87, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %126

97:                                               ; preds = %84
  %98 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %99 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %102 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %105 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %108 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %111 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ntb_mw_set_trans(%struct.TYPE_3__* %100, i32 %103, i32 %106, i32 %109, i64 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %97
  %117 = load %struct.perf_ctx*, %struct.perf_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %126

122:                                              ; preds = %97
  %123 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %124 = load i32, i32* @PERF_CMD_SXLAT, align 4
  %125 = call i32 @perf_cmd_exec(%struct.perf_peer* %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %130

126:                                              ; preds = %116, %91
  %127 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %128 = call i32 @perf_free_inbuf(%struct.perf_peer* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %122, %74, %37, %24
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @ntb_mw_get_align(%struct.TYPE_3__*, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @perf_free_inbuf(%struct.perf_peer*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

declare dso_local i32 @ntb_mw_set_trans(%struct.TYPE_3__*, i32, i32, i32, i64) #1

declare dso_local i32 @perf_cmd_exec(%struct.perf_peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
