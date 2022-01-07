; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.keystone_rproc* }
%struct.keystone_rproc = type { i32, i32, i32, i32 }

@handle_event = common dso_local global i32 0, align 4
@keystone_rproc_vring_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to enable vring interrupt, ret = %d\0A\00", align 1
@keystone_rproc_exception_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to enable exception interrupt, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @keystone_rproc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_rproc_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.keystone_rproc*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load %struct.keystone_rproc*, %struct.keystone_rproc** %7, align 8
  store %struct.keystone_rproc* %8, %struct.keystone_rproc** %4, align 8
  %9 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %10 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %9, i32 0, i32 0
  %11 = load i32, i32* @handle_event, align 4
  %12 = call i32 @INIT_WORK(i32* %10, i32 %11)
  %13 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %14 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @keystone_rproc_vring_interrupt, align 4
  %17 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %18 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_name(i32 %19)
  %21 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %22 = call i32 @request_irq(i32 %15, i32 %16, i32 0, i32 %20, %struct.keystone_rproc* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %27 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %75

31:                                               ; preds = %1
  %32 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %33 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @keystone_rproc_exception_interrupt, align 4
  %36 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %37 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_name(i32 %38)
  %40 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %41 = call i32 @request_irq(i32 %34, i32 %35, i32 0, i32 %39, %struct.keystone_rproc* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %46 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %66

50:                                               ; preds = %31
  %51 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %52 = load %struct.rproc*, %struct.rproc** %3, align 8
  %53 = getelementptr inbounds %struct.rproc, %struct.rproc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @keystone_rproc_dsp_boot(%struct.keystone_rproc* %51, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %77

60:                                               ; preds = %58
  %61 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %62 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %65 = call i32 @free_irq(i32 %63, %struct.keystone_rproc* %64)
  br label %66

66:                                               ; preds = %60, %44
  %67 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %68 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %71 = call i32 @free_irq(i32 %69, %struct.keystone_rproc* %70)
  %72 = load %struct.keystone_rproc*, %struct.keystone_rproc** %4, align 8
  %73 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %72, i32 0, i32 0
  %74 = call i32 @flush_work(i32* %73)
  br label %75

75:                                               ; preds = %66, %25
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %59
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.keystone_rproc*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @keystone_rproc_dsp_boot(%struct.keystone_rproc*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.keystone_rproc*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
