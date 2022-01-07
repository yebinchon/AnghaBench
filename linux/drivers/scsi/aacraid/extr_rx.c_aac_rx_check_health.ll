; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_check_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.aac_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.POSTSTATUS = type { i8*, i8* }

@MUnit = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SELF_TEST_FAILED = common dso_local global i32 0, align 4
@KERNEL_PANIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@COMMAND_POST_RESULTS = common dso_local global i32 0, align 4
@KERNEL_UP_AND_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_rx_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rx_check_health(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.POSTSTATUS*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rx_readl(%struct.aac_dev* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SELF_TEST_FAILED, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %158

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @KERNEL_PANIC, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %147

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4278190080
  %31 = icmp eq i64 %30, 3154116608
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  store i32 %38, i32* %2, align 4
  br label %158

39:                                               ; preds = %27
  %40 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %41 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @dma_alloc_coherent(i32* %43, i32 512, i32* %8, i32 %44)
  store i8* %45, i8** %5, align 8
  store i32 -2, i32* %9, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %158

53:                                               ; preds = %39
  %54 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %55 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @dma_alloc_coherent(i32* %57, i32 16, i32* %7, i32 %58)
  %60 = bitcast i8* %59 to %struct.POSTSTATUS*
  store %struct.POSTSTATUS* %60, %struct.POSTSTATUS** %6, align 8
  %61 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %62 = icmp eq %struct.POSTSTATUS* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %53
  %67 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %68 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32*, i32, ...) @dma_free_coherent(i32* %70, i32 512, i8* %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %158

75:                                               ; preds = %53
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @memset(i8* %76, i32 0, i32 512)
  %78 = load i32, i32* @COMMAND_POST_RESULTS, align 4
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %81 = getelementptr inbounds %struct.POSTSTATUS, %struct.POSTSTATUS* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %85 = getelementptr inbounds %struct.POSTSTATUS, %struct.POSTSTATUS* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MUnit, i32 0, i32 0), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rx_writel(%struct.aac_dev* %86, i32 %89, i32 %90)
  %92 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %93 = load i32, i32* @COMMAND_POST_RESULTS, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @rx_sync_cmd(%struct.aac_dev* %92, i32 %93, i32 %94, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  %96 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %97 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32*, i32, ...) @dma_free_coherent(i32* %99, i32 16, %struct.POSTSTATUS* %100, i32 %101)
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 48
  br i1 %107, label %108, label %122

108:                                              ; preds = %75
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 120
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 88
  br label %120

120:                                              ; preds = %114, %108
  %121 = phi i1 [ true, %108 ], [ %119, %114 ]
  br label %122

122:                                              ; preds = %120, %75
  %123 = phi i1 [ false, %75 ], [ %121, %120 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @likely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @hex_to_bin(i8 signext %130)
  %132 = shl i32 %131, 4
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @hex_to_bin(i8 signext %135)
  %137 = add nsw i32 %132, %136
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %127, %122
  %139 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %140 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (i32*, i32, ...) @dma_free_coherent(i32* %142, i32 512, i8* %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %158

147:                                              ; preds = %21
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @KERNEL_UP_AND_RUNNING, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i64 @unlikely(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 -3, i32* %2, align 4
  br label %158

157:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %156, %138, %66, %51, %35, %20
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @rx_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rx_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @rx_sync_cmd(%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hex_to_bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
