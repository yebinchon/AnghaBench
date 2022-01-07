; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_rx_srv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_rx_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.vnt_rx_desc**, %struct.TYPE_5__* }
%struct.vnt_rx_desc = type { %struct.TYPE_6__, %struct.TYPE_4__*, %struct.vnt_rx_desc* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OWNED_BY_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"can not allocate rx buf\0A\00", align 1
@OWNED_BY_NIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i32)* @device_rx_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_rx_srv(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_rx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 0
  %9 = load %struct.vnt_rx_desc**, %struct.vnt_rx_desc*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %9, i64 %11
  %13 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %12, align 8
  store %struct.vnt_rx_desc* %13, %struct.vnt_rx_desc** %5, align 8
  br label %14

14:                                               ; preds = %56, %2
  %15 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %16 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OWNED_BY_HOST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = icmp sgt i32 %22, 15
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %60

26:                                               ; preds = %21
  %27 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %28 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %60

34:                                               ; preds = %26
  %35 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %36 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %37 = call i64 @vnt_receive_frame(%struct.vnt_private* %35, %struct.vnt_rx_desc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %41 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %42 = call i32 @device_alloc_rx_buf(%struct.vnt_private* %40, %struct.vnt_rx_desc* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %60

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i64, i64* @OWNED_BY_NIC, align 8
  %53 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %54 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %58 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %57, i32 0, i32 2
  %59 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %58, align 8
  store %struct.vnt_rx_desc* %59, %struct.vnt_rx_desc** %5, align 8
  br label %14

60:                                               ; preds = %44, %33, %25, %14
  %61 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %62 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %63 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %62, i32 0, i32 0
  %64 = load %struct.vnt_rx_desc**, %struct.vnt_rx_desc*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %64, i64 %66
  store %struct.vnt_rx_desc* %61, %struct.vnt_rx_desc** %67, align 8
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @vnt_receive_frame(%struct.vnt_private*, %struct.vnt_rx_desc*) #1

declare dso_local i32 @device_alloc_rx_buf(%struct.vnt_private*, %struct.vnt_rx_desc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
