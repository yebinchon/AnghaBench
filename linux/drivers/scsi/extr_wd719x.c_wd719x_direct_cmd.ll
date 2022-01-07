; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_direct_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_direct_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { i32 }

@WD719X_AMR_INT_STATUS = common dso_local global i32 0, align 4
@WD719X_INT_NONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@WD719X_CMD_BUSRESET = common dso_local global i32 0, align 4
@WD719X_CMD_ABORT = common dso_local global i32 0, align 4
@WD719X_CMD_ABORT_TAG = common dso_local global i32 0, align 4
@WD719X_CMD_RESET = common dso_local global i32 0, align 4
@WD719X_DISABLE_INT = common dso_local global i32 0, align 4
@WD719X_AMR_CMD_PARAM = common dso_local global i32 0, align 4
@WD719X_AMR_CMD_PARAM_2 = common dso_local global i32 0, align 4
@WD719X_AMR_CMD_PARAM_3 = common dso_local global i32 0, align 4
@WD719X_AMR_SCB_IN = common dso_local global i32 0, align 4
@WD719X_AMR_COMMAND = common dso_local global i32 0, align 4
@WD719X_CMD_READ_FIRMVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wd719x*, i32, i32, i32, i32, i64, i32)* @wd719x_direct_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_direct_cmd(%struct.wd719x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wd719x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wd719x* %0, %struct.wd719x** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %18 = load i32, i32* @WD719X_AMR_INT_STATUS, align 4
  %19 = load i32, i32* @WD719X_INT_NONE, align 4
  %20 = call i32 @wd719x_writeb(%struct.wd719x* %17, i32 %18, i32 %19)
  %21 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %22 = call i64 @wd719x_wait_ready(%struct.wd719x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %93

27:                                               ; preds = %7
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @WD719X_CMD_BUSRESET, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @WD719X_CMD_ABORT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @WD719X_CMD_ABORT_TAG, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @WD719X_CMD_RESET, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @WD719X_DISABLE_INT, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %39, %35, %31, %27
  %48 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %49 = load i32, i32* @WD719X_AMR_CMD_PARAM, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @wd719x_writeb(%struct.wd719x* %48, i32 %49, i32 %50)
  %52 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %53 = load i32, i32* @WD719X_AMR_CMD_PARAM_2, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @wd719x_writeb(%struct.wd719x* %52, i32 %53, i32 %54)
  %56 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %57 = load i32, i32* @WD719X_AMR_CMD_PARAM_3, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @wd719x_writeb(%struct.wd719x* %56, i32 %57, i32 %58)
  %60 = load i64, i64* %14, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %64 = load i32, i32* @WD719X_AMR_SCB_IN, align 4
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @wd719x_writel(%struct.wd719x* %63, i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %47
  %68 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %69 = load i32, i32* @WD719X_AMR_INT_STATUS, align 4
  %70 = load i32, i32* @WD719X_INT_NONE, align 4
  %71 = call i32 @wd719x_writeb(%struct.wd719x* %68, i32 %69, i32 %70)
  %72 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %73 = load i32, i32* @WD719X_AMR_COMMAND, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @wd719x_writeb(%struct.wd719x* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @wd719x_wait_done(%struct.wd719x* %79, i32 %80)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %78, %67
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @WD719X_CMD_READ_FIRMVER, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.wd719x*, %struct.wd719x** %9, align 8
  %88 = load i32, i32* @WD719X_AMR_INT_STATUS, align 4
  %89 = load i32, i32* @WD719X_INT_NONE, align 4
  %90 = call i32 @wd719x_writeb(%struct.wd719x* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %24
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @wd719x_writeb(%struct.wd719x*, i32, i32) #1

declare dso_local i64 @wd719x_wait_ready(%struct.wd719x*) #1

declare dso_local i32 @wd719x_writel(%struct.wd719x*, i32, i64) #1

declare dso_local i32 @wd719x_wait_done(%struct.wd719x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
