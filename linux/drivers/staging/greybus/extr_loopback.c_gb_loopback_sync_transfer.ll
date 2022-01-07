; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_sync_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_sync_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_loopback = type { i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gb_loopback_transfer_request = type { i32, i32, i32, i32 }
%struct.gb_loopback_transfer_response = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_LOOPBACK_TYPE_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Loopback Data doesn't match\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_loopback*, i8*)* @gb_loopback_sync_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_loopback_sync_transfer(%struct.gb_loopback* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_loopback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gb_loopback_transfer_request*, align 8
  %7 = alloca %struct.gb_loopback_transfer_response*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_loopback* %0, %struct.gb_loopback** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %10 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %9, i32 0, i32 1
  store i8* null, i8** %10, align 8
  %11 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %12 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %11, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr i8, i8* %13, i64 16
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.gb_loopback_transfer_response* @kmalloc(i8* %14, i32 %15)
  %17 = bitcast %struct.gb_loopback_transfer_response* %16 to %struct.gb_loopback_transfer_request*
  store %struct.gb_loopback_transfer_request* %17, %struct.gb_loopback_transfer_request** %6, align 8
  %18 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %19 = icmp ne %struct.gb_loopback_transfer_request* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.gb_loopback_transfer_response* @kmalloc(i8* %25, i32 %26)
  store %struct.gb_loopback_transfer_response* %27, %struct.gb_loopback_transfer_response** %7, align 8
  %28 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %29 = icmp ne %struct.gb_loopback_transfer_response* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %32 = bitcast %struct.gb_loopback_transfer_request* %31 to %struct.gb_loopback_transfer_response*
  %33 = call i32 @kfree(%struct.gb_loopback_transfer_response* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %101

36:                                               ; preds = %23
  %37 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %38 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @memset(i32 %39, i32 90, i8* %40)
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @cpu_to_le32(i8* %42)
  %44 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %45 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %47 = load i32, i32* @GB_LOOPBACK_TYPE_TRANSFER, align 4
  %48 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %49 = bitcast %struct.gb_loopback_transfer_request* %48 to %struct.gb_loopback_transfer_response*
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr i8, i8* %50, i64 16
  %52 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr i8, i8* %53, i64 16
  %55 = call i32 @gb_loopback_operation_sync(%struct.gb_loopback* %46, i32 %47, %struct.gb_loopback_transfer_response* %49, i8* %51, %struct.gb_loopback_transfer_response* %52, i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %94

59:                                               ; preds = %36
  %60 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %61 = getelementptr inbounds %struct.gb_loopback_transfer_request, %struct.gb_loopback_transfer_request* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %64 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @memcmp(i32 %62, i32 %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %71 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EREMOTEIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %69, %59
  %80 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %81 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @__le32_to_cpu(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %86 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %88 = getelementptr inbounds %struct.gb_loopback_transfer_response, %struct.gb_loopback_transfer_response* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @__le32_to_cpu(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %93 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %79, %58
  %95 = load %struct.gb_loopback_transfer_request*, %struct.gb_loopback_transfer_request** %6, align 8
  %96 = bitcast %struct.gb_loopback_transfer_request* %95 to %struct.gb_loopback_transfer_response*
  %97 = call i32 @kfree(%struct.gb_loopback_transfer_response* %96)
  %98 = load %struct.gb_loopback_transfer_response*, %struct.gb_loopback_transfer_response** %7, align 8
  %99 = call i32 @kfree(%struct.gb_loopback_transfer_response* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %30, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.gb_loopback_transfer_response* @kmalloc(i8*, i32) #1

declare dso_local i32 @kfree(%struct.gb_loopback_transfer_response*) #1

declare dso_local i32 @memset(i32, i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i8*) #1

declare dso_local i32 @gb_loopback_operation_sync(%struct.gb_loopback*, i32, %struct.gb_loopback_transfer_response*, i8*, %struct.gb_loopback_transfer_response*, i8*) #1

declare dso_local i64 @memcmp(i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @__le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
