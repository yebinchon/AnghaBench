; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_init_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_init_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32, i32 (i32)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_INIT_C = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@RNDIS_MAJOR_VERSION = common dso_local global i32 0, align 4
@RNDIS_MINOR_VERSION = common dso_local global i32 0, align 4
@RNDIS_DF_CONNECTIONLESS = common dso_local global i32 0, align 4
@RNDIS_MEDIUM_802_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_params*, %struct.TYPE_9__*)* @rndis_init_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_init_response(%struct.rndis_params* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rndis_params*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.rndis_params* %0, %struct.rndis_params** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %9 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %17 = call %struct.TYPE_8__* @rndis_add_response(%struct.rndis_params* %16, i32 104)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %92

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %6, align 8
  %28 = load i32, i32* @RNDIS_MSG_INIT_C, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = call i8* @cpu_to_le32(i32 52)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 11
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @RNDIS_MAJOR_VERSION, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @RNDIS_MINOR_VERSION, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 7
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @RNDIS_DF_CONNECTIONLESS, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @RNDIS_MEDIUM_802_3, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = call i8* @cpu_to_le32(i32 1)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %64 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = add i64 %69, 4
  %71 = add i64 %70, 22
  %72 = trunc i64 %71 to i32
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = call i8* @cpu_to_le32(i32 0)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = call i8* @cpu_to_le32(i32 0)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = call i8* @cpu_to_le32(i32 0)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %86 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %85, i32 0, i32 1
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %89 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %87(i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %23, %20, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_8__* @rndis_add_response(%struct.rndis_params*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
