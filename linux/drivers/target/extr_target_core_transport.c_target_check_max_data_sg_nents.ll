; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_check_max_data_sg_nents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_check_max_data_sg_nents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.se_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TCM_NO_SENSE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SCF_OVERFLOW_BIT = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.se_device*, i32)* @target_check_max_data_sg_nents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_check_max_data_sg_nents(%struct.se_cmd* %0, %struct.se_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %5, align 8
  store %struct.se_device* %1, %struct.se_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %18, i32* %4, align 4
  br label %102

19:                                               ; preds = %3
  %20 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %19
  %33 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SCF_OVERFLOW_BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub i32 %40, %41
  %43 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %77

45:                                               ; preds = %32
  %46 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %58, %59
  %61 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %76

63:                                               ; preds = %45
  %64 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %65 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 %71, %72
  %74 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %63, %52
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.se_device*, %struct.se_device** %6, align 8
  %88 = getelementptr inbounds %struct.se_device, %struct.se_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = udiv i32 %86, %90
  store i32 %91, i32* %10, align 4
  %92 = load %struct.se_device*, %struct.se_device** %6, align 8
  %93 = getelementptr inbounds %struct.se_device, %struct.se_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = mul i32 %94, %95
  %97 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %85, %77
  br label %100

100:                                              ; preds = %99, %19
  %101 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %17
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
