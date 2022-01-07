; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_dbg_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_debug.h_cdns3_dbg_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i64, i8*, i64, i32, i32, i32, %struct.cdns3_trb*, i32 }
%struct.cdns3_trb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"\0A\09\09Ring contents for %s:\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\0A\09\09Ring deq index: %d, trb: %p (virt), 0x%llx (dma)\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\09\09Ring enq index: %d, trb: %p (virt), 0x%llx (dma)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\09\09free trbs: %d, CCS=%d, PCS=%d\0A\00", align 1
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"\09\09To big transfer ring %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\09\09@%pad %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cdns3_endpoint*, %struct.cdns3_trb*, i8*)* @cdns3_dbg_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cdns3_dbg_ring(%struct.cdns3_endpoint* %0, %struct.cdns3_trb* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cdns3_endpoint*, align 8
  %6 = alloca %struct.cdns3_trb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cdns3_trb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %5, align 8
  store %struct.cdns3_trb* %1, %struct.cdns3_trb** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %17 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GET_TRBS_PER_SEGMENT(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 7
  %22 = load %struct.cdns3_trb*, %struct.cdns3_trb** %21, align 8
  %23 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %24 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %22, i64 %25
  store %struct.cdns3_trb* %26, %struct.cdns3_trb** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %32 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %44 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %47 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %48 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %49 = call i64 @cdns3_trb_virt_to_dma(%struct.cdns3_endpoint* %47, %struct.cdns3_trb* %48)
  %50 = call i64 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %45, %struct.cdns3_trb* %46, i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %56 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %55, i32 0, i32 7
  %57 = load %struct.cdns3_trb*, %struct.cdns3_trb** %56, align 8
  %58 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %59 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %57, i64 %60
  store %struct.cdns3_trb* %61, %struct.cdns3_trb** %9, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %67 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %70 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %71 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %72 = call i64 @cdns3_trb_virt_to_dma(%struct.cdns3_endpoint* %70, %struct.cdns3_trb* %71)
  %73 = call i64 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %68, %struct.cdns3_trb* %69, i64 %72)
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %83 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %86 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %5, align 8
  %89 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = call i64 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %3
  %100 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %3
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %10, align 4
  %111 = call i64 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** %7, align 8
  store i8* %112, i8** %4, align 8
  br label %153

113:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %148, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load %struct.cdns3_trb*, %struct.cdns3_trb** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %119, i64 %121
  store %struct.cdns3_trb* %122, %struct.cdns3_trb** %9, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %128 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %132 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load %struct.cdns3_trb*, %struct.cdns3_trb** %9, align 8
  %136 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = call i64 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32 %130, i32 %134, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 12
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %118
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %114

151:                                              ; preds = %114
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %4, align 8
  br label %153

153:                                              ; preds = %151, %105
  %154 = load i8*, i8** %4, align 8
  ret i8* %154
}

declare dso_local i32 @GET_TRBS_PER_SEGMENT(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @cdns3_trb_virt_to_dma(%struct.cdns3_endpoint*, %struct.cdns3_trb*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
