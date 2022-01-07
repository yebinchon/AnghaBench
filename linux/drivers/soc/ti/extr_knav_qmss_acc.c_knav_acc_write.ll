; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_acc.c_knav_acc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_pdsp_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.knav_reg_acc_command = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"acc command %08x %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_device*, %struct.knav_pdsp_info*, %struct.knav_reg_acc_command*)* @knav_acc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_acc_write(%struct.knav_device* %0, %struct.knav_pdsp_info* %1, %struct.knav_reg_acc_command* %2) #0 {
  %4 = alloca %struct.knav_device*, align 8
  %5 = alloca %struct.knav_pdsp_info*, align 8
  %6 = alloca %struct.knav_reg_acc_command*, align 8
  %7 = alloca i32, align 4
  store %struct.knav_device* %0, %struct.knav_device** %4, align 8
  store %struct.knav_pdsp_info* %1, %struct.knav_pdsp_info** %5, align 8
  store %struct.knav_reg_acc_command* %2, %struct.knav_reg_acc_command** %6, align 8
  %8 = load %struct.knav_device*, %struct.knav_device** %4, align 8
  %9 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %12 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %15 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %18 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %21 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %24 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %28 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %31 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = call i32 @writel_relaxed(i32 %29, i32* %33)
  %35 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %36 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %39 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = call i32 @writel_relaxed(i32 %37, i32* %41)
  %43 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %44 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %47 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @writel_relaxed(i32 %45, i32* %49)
  %51 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %52 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %55 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = call i32 @writel_relaxed(i32 %53, i32* %57)
  %59 = load %struct.knav_reg_acc_command*, %struct.knav_reg_acc_command** %6, align 8
  %60 = getelementptr inbounds %struct.knav_reg_acc_command, %struct.knav_reg_acc_command* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %63 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @writel_relaxed(i32 %61, i32* %65)
  br label %67

67:                                               ; preds = %73, %3
  %68 = load %struct.knav_pdsp_info*, %struct.knav_pdsp_info** %5, align 8
  %69 = getelementptr inbounds %struct.knav_pdsp_info, %struct.knav_pdsp_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @readl_relaxed(i32* %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %67, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 24
  %81 = and i32 %80, 255
  ret i32 %81
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @readl_relaxed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
