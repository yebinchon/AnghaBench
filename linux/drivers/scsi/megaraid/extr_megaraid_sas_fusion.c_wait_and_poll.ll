; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_wait_and_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_wait_and_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.megasas_instance*)* }
%struct.megasas_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.megasas_header }
%struct.megasas_header = type { i32 }

@MFI_STATE_MASK = common dso_local global i32 0, align 4
@MFI_STATE_FAULT = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i32 0, align 4
@DCMD_TIMEOUT = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i32 0, align 4
@DCMD_SUCCESS = common dso_local global i32 0, align 4
@DCMD_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_and_poll(%struct.megasas_instance* %0, %struct.megasas_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.megasas_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store %struct.megasas_cmd* %1, %struct.megasas_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.megasas_header* %15, %struct.megasas_header** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 1000
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %51, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.megasas_header*, %struct.megasas_header** %9, align 8
  %24 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %54

29:                                               ; preds = %27
  %30 = call i32 (...) @rmb()
  %31 = call i32 @msleep(i32 20)
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 %32, 5000
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %37 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %39, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %42 = call i32 %40(%struct.megasas_instance* %41)
  %43 = load i32, i32* @MFI_STATE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MFI_STATE_FAULT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %54

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 20
  store i32 %53, i32* %8, align 4
  br label %18

54:                                               ; preds = %48, %27
  %55 = load %struct.megasas_header*, %struct.megasas_header** %9, align 8
  %56 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MFI_STAT_INVALID_STATUS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DCMD_TIMEOUT, align 4
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.megasas_header*, %struct.megasas_header** %9, align 8
  %64 = getelementptr inbounds %struct.megasas_header, %struct.megasas_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MFI_STAT_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @DCMD_SUCCESS, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @DCMD_FAILED, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %68, %60
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
