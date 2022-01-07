; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_gb.c_gb_audio_gb_get_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32 }
%struct.gb_audio_topology = type { i32 }
%struct.gb_audio_get_topology_size_response = type { i32 }

@GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_AUDIO_TYPE_GET_TOPOLOGY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_audio_gb_get_topology(%struct.gb_connection* %0, %struct.gb_audio_topology** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_audio_topology**, align 8
  %6 = alloca %struct.gb_audio_get_topology_size_response, align 4
  %7 = alloca %struct.gb_audio_topology*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %4, align 8
  store %struct.gb_audio_topology** %1, %struct.gb_audio_topology*** %5, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = load i32, i32* @GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE, align 4
  %12 = bitcast %struct.gb_audio_get_topology_size_response* %6 to %struct.gb_audio_topology*
  %13 = call i32 @gb_operation_sync(%struct.gb_connection* %10, i32 %11, i32* null, i32 0, %struct.gb_audio_topology* %12, i32 4)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gb_audio_get_topology_size_response, %struct.gb_audio_get_topology_size_response* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.gb_audio_topology* @kzalloc(i32 %29, i32 %30)
  store %struct.gb_audio_topology* %31, %struct.gb_audio_topology** %7, align 8
  %32 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %7, align 8
  %33 = icmp ne %struct.gb_audio_topology* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %39 = load i32, i32* @GB_AUDIO_TYPE_GET_TOPOLOGY, align 4
  %40 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @gb_operation_sync(%struct.gb_connection* %38, i32 %39, i32* null, i32 0, %struct.gb_audio_topology* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %7, align 8
  %47 = call i32 @kfree(%struct.gb_audio_topology* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %52

49:                                               ; preds = %37
  %50 = load %struct.gb_audio_topology*, %struct.gb_audio_topology** %7, align 8
  %51 = load %struct.gb_audio_topology**, %struct.gb_audio_topology*** %5, align 8
  store %struct.gb_audio_topology* %50, %struct.gb_audio_topology** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %45, %34, %25, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, i32*, i32, %struct.gb_audio_topology*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.gb_audio_topology* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.gb_audio_topology*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
