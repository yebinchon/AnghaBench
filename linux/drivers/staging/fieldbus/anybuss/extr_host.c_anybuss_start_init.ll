; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_start_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_start_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { %struct.anybuss_host* }
%struct.anybuss_host = type { i32 }
%struct.anybuss_memcfg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.msg_anybus_init = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OP_MODE_FBFC = common dso_local global i32 0, align 4
@OP_MODE_FBS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OP_MODE_CD = common dso_local global i32 0, align 4
@CMD_START_INIT = common dso_local global i32 0, align 4
@CMD_ANYBUS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anybuss_start_init(%struct.anybuss_client* %0, %struct.anybuss_memcfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anybuss_client*, align 8
  %5 = alloca %struct.anybuss_memcfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anybuss_host*, align 8
  %9 = alloca %struct.msg_anybus_init, align 4
  store %struct.anybuss_client* %0, %struct.anybuss_client** %4, align 8
  store %struct.anybuss_memcfg* %1, %struct.anybuss_memcfg** %5, align 8
  %10 = load %struct.anybuss_client*, %struct.anybuss_client** %4, align 8
  %11 = getelementptr inbounds %struct.anybuss_client, %struct.anybuss_client* %10, i32 0, i32 0
  %12 = load %struct.anybuss_host*, %struct.anybuss_host** %11, align 8
  store %struct.anybuss_host* %12, %struct.anybuss_host** %8, align 8
  %13 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 1
  %15 = call i32 @cpu_to_be16(i32 0)
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 2
  %17 = call i32 @cpu_to_be16(i32 15)
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 3
  %19 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %20 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_be16(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 4
  %24 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %25 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_be16(i32 %26)
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 5
  %29 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %30 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_be16(i32 %31)
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 6
  %34 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %35 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 7
  %39 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %40 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_be16(i32 %41)
  store i32 %42, i32* %38, align 4
  %43 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 8
  %44 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %45 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_be16(i32 %46)
  store i32 %47, i32* %43, align 4
  %48 = load %struct.anybuss_memcfg*, %struct.anybuss_memcfg** %5, align 8
  %49 = getelementptr inbounds %struct.anybuss_memcfg, %struct.anybuss_memcfg* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %56 [
    i32 130, label %51
    i32 129, label %52
    i32 128, label %54
  ]

51:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %59

52:                                               ; preds = %2
  %53 = load i32, i32* @OP_MODE_FBFC, align 4
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %2
  %55 = load i32, i32* @OP_MODE_FBS, align 4
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %54, %52, %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @OP_MODE_CD, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @cpu_to_be16(i32 %62)
  %64 = getelementptr inbounds %struct.msg_anybus_init, %struct.msg_anybus_init* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.anybuss_host*, %struct.anybuss_host** %8, align 8
  %66 = load i32, i32* @CMD_START_INIT, align 4
  %67 = call i32 @_anybus_mbox_cmd(%struct.anybuss_host* %65, i32 %66, i32 0, %struct.msg_anybus_init* null, i32 0, i32* null, i32 0, i32* null, i32 0)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %59
  %73 = load %struct.anybuss_host*, %struct.anybuss_host** %8, align 8
  %74 = load i32, i32* @CMD_ANYBUS_INIT, align 4
  %75 = call i32 @_anybus_mbox_cmd(%struct.anybuss_host* %73, i32 %74, i32 0, %struct.msg_anybus_init* %9, i32 36, i32* null, i32 0, i32* null, i32 0)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %70, %56
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @_anybus_mbox_cmd(%struct.anybuss_host*, i32, i32, %struct.msg_anybus_init*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
