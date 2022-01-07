; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_acquire_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_linit.c_aac_acquire_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.aac_dev = type { i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MUnit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KERNEL_UP_AND_RUNNING = common dso_local global i64 0, align 8
@AAC_ENABLE_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_acquire_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_acquire_resources(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %8 = call i64 @src_readl(%struct.aac_dev* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @KERNEL_UP_AND_RUNNING, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 4294967295
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i1 [ true, %5 ], [ %14, %12 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call i32 @msleep(i32 20)
  br label %5

19:                                               ; preds = %15
  %20 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %21 = call i32 @aac_adapter_disable_int(%struct.aac_dev* %20)
  %22 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %23 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %22)
  %24 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %25 = call i64 @aac_is_src(%struct.aac_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %29 = call i32 @aac_define_int_mode(%struct.aac_dev* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %32 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %37 = load i32, i32* @AAC_ENABLE_MSIX, align 4
  %38 = call i32 @aac_src_access_devreg(%struct.aac_dev* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %41 = call i64 @aac_acquire_irq(%struct.aac_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %66

44:                                               ; preds = %39
  %45 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %46 = call i32 @aac_adapter_enable_int(%struct.aac_dev* %45)
  %47 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %48 = call i32 @aac_fib_vector_assign(%struct.aac_dev* %47)
  %49 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %50 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %44
  %54 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %55 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %59 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %64 = call i32 @aac_adapter_start(%struct.aac_dev* %63)
  br label %65

65:                                               ; preds = %53, %44
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @src_readl(%struct.aac_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @aac_adapter_disable_int(%struct.aac_dev*) #1

declare dso_local i32 @aac_adapter_enable_int(%struct.aac_dev*) #1

declare dso_local i64 @aac_is_src(%struct.aac_dev*) #1

declare dso_local i32 @aac_define_int_mode(%struct.aac_dev*) #1

declare dso_local i32 @aac_src_access_devreg(%struct.aac_dev*, i32) #1

declare dso_local i64 @aac_acquire_irq(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_vector_assign(%struct.aac_dev*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @aac_adapter_start(%struct.aac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
