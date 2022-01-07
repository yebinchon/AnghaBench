; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_reset_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_rndis.c_rndis_reset_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32, i32 (i32)* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RNDIS_MSG_RESET_C = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rndis_params*, i32*)* @rndis_reset_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_reset_response(%struct.rndis_params* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rndis_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.rndis_params* %0, %struct.rndis_params** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %12 = call i32* @rndis_get_next_response(%struct.rndis_params* %11, i32* %9)
  store i32* %12, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @rndis_free_response(%struct.rndis_params* %15, i32* %16)
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %20 = call %struct.TYPE_4__* @rndis_add_response(%struct.rndis_params* %19, i32 32)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* @RNDIS_MSG_RESET_C, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = call i8* @cpu_to_le32(i32 16)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = call i8* @cpu_to_le32(i32 1)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %46 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %45, i32 0, i32 1
  %47 = load i32 (i32)*, i32 (i32)** %46, align 8
  %48 = load %struct.rndis_params*, %struct.rndis_params** %4, align 8
  %49 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %47(i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %26, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32* @rndis_get_next_response(%struct.rndis_params*, i32*) #1

declare dso_local i32 @rndis_free_response(%struct.rndis_params*, i32*) #1

declare dso_local %struct.TYPE_4__* @rndis_add_response(%struct.rndis_params*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
