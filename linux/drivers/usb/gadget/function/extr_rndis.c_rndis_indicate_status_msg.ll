; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_indicate_status_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_indicate_status_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i64, i32, i32 (i32)* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@RNDIS_UNINITIALIZED = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_INDICATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_params*, i32)* @rndis_indicate_status_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_indicate_status_msg(%struct.rndis_params* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rndis_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.rndis_params* %0, %struct.rndis_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %9 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RNDIS_UNINITIALIZED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %18 = call %struct.TYPE_4__* @rndis_add_response(%struct.rndis_params* %17, i32 40)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %6, align 8
  %29 = load i32, i32* @RNDIS_MSG_INDICATE, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = call i8* @cpu_to_le32(i32 20)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = call i8* @cpu_to_le32(i32 0)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = call i8* @cpu_to_le32(i32 0)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %47 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %46, i32 0, i32 2
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %50 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %24, %21, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_4__* @rndis_add_response(%struct.rndis_params*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
