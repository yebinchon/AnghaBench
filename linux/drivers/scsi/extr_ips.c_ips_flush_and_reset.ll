; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_flush_and_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_flush_and_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*)* }
%struct.TYPE_21__ = type { %struct.TYPE_18__, i8**, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ips_cmd_timeout = common dso_local global i32 0, align 4
@IPS_CMD_FLUSH = common dso_local global i8* null, align 8
@IPS_MAX_CMDS = common dso_local global i32 0, align 4
@IPS_NORM_STATE = common dso_local global i32 0, align 4
@IPS_SUCCESS = common dso_local global i32 0, align 4
@IPS_ONE_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @ips_flush_and_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_flush_and_reset(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_21__* @dma_alloc_coherent(i32* %11, i32 64, i32* %7, i32 %12)
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = icmp ne %struct.TYPE_21__* %14, null
  br i1 %15, label %16, label %90

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = call i32 @memset(%struct.TYPE_21__* %17, i32 0, i32 64)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = call i32 @ips_init_scb(%struct.TYPE_22__* %19, %struct.TYPE_21__* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ips_cmd_timeout, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** @IPS_CMD_FLUSH, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 6
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* @IPS_MAX_CMDS, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @IPS_NORM_STATE, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 4
  store i32 %43, i32* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %66 = call i32 @ips_send_cmd(%struct.TYPE_22__* %64, %struct.TYPE_21__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IPS_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %16
  %71 = load i32, i32* @IPS_ONE_SEC, align 4
  %72 = mul nsw i32 60, %71
  store i32 %72, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %82, %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %84 = call i32 @ips_poll_for_flush_complete(%struct.TYPE_22__* %83)
  store i32 %84, i32* %6, align 4
  %85 = call i32 @udelay(i32 1000)
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %5, align 4
  br label %73

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %16
  br label %90

90:                                               ; preds = %89, %1
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %93, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %96 = call i32 %94(%struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @dma_free_coherent(i32* %100, i32 64, %struct.TYPE_21__* %101, i32 %102)
  ret void
}

declare dso_local %struct.TYPE_21__* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ips_init_scb(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ips_send_cmd(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ips_poll_for_flush_complete(%struct.TYPE_22__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
