; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_range_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.knav_queue_inst = type { i32, i32 }

@RANGE_HAS_IRQ = common dso_local global i32 0, align 4
@knav_queue_int_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to set IRQ affinity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_range_info*, %struct.knav_queue_inst*)* @knav_queue_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_queue_setup_irq(%struct.knav_range_info* %0, %struct.knav_queue_inst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knav_range_info*, align 8
  %5 = alloca %struct.knav_queue_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.knav_range_info* %0, %struct.knav_range_info** %4, align 8
  store %struct.knav_queue_inst* %1, %struct.knav_queue_inst** %5, align 8
  %9 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %10 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %13 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub i32 %11, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %17 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RANGE_HAS_IRQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %2
  %23 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %24 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @knav_queue_int_handler, align 4
  %33 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %34 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %5, align 8
  %37 = call i32 @request_irq(i32 %31, i32 %32, i32 0, i32 %35, %struct.knav_queue_inst* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @disable_irq(i32 %43)
  %45 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %46 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %57 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @irq_set_affinity_hint(i32 %55, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load %struct.knav_range_info*, %struct.knav_range_info** %4, align 8
  %69 = getelementptr inbounds %struct.knav_range_info, %struct.knav_range_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %79

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %2
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %67, %40
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.knav_queue_inst*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
