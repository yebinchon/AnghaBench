; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_query_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_query_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32, i32 (i32)*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_7__ = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_QUERY_C = common dso_local global i32 0, align 4
@RNDIS_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_params*, %struct.TYPE_8__*)* @rndis_query_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_query_response(%struct.rndis_params* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rndis_params*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.rndis_params* %0, %struct.rndis_params** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %9 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %17 = call %struct.TYPE_7__* @rndis_add_response(%struct.rndis_params* %16, i32 52)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %6, align 8
  %28 = load i32, i32* @RNDIS_MSG_QUERY_C, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = add nsw i32 %45, 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = bitcast %struct.TYPE_8__* %47 to i32*
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = call i64 @gen_ndis_query_resp(%struct.rndis_params* %37, i32 %41, i32* %50, i32 %54, %struct.TYPE_7__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %23
  %59 = load i32, i32* @RNDIS_STATUS_NOT_SUPPORTED, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = call i8* @cpu_to_le32(i32 48)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = call i8* @cpu_to_le32(i32 0)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = call i8* @cpu_to_le32(i32 0)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %77

72:                                               ; preds = %23
  %73 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %79 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %78, i32 0, i32 1
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %82 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %80(i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %20, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_7__* @rndis_add_response(%struct.rndis_params*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @gen_ndis_query_resp(%struct.rndis_params*, i32, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
