; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fabrics_ops = type { {}*, i32 }
%struct.nvmet_port = type { i64, i32, %struct.nvmet_fabrics_ops*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@nvmet_config_sem = common dso_local global i32 0, align 4
@nvmet_transports = common dso_local global %struct.nvmet_fabrics_ops** null, align 8
@.str = private unnamed_addr constant [19 x i8] c"nvmet-transport-%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"transport type %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_enable_port(%struct.nvmet_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_port*, align 8
  %4 = alloca %struct.nvmet_fabrics_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_port* %0, %struct.nvmet_port** %3, align 8
  %6 = call i32 @lockdep_assert_held(i32* @nvmet_config_sem)
  %7 = load %struct.nvmet_fabrics_ops**, %struct.nvmet_fabrics_ops*** @nvmet_transports, align 8
  %8 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %7, i64 %11
  %13 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %12, align 8
  store %struct.nvmet_fabrics_ops* %13, %struct.nvmet_fabrics_ops** %4, align 8
  %14 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %15 = icmp ne %struct.nvmet_fabrics_ops* %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %1
  %17 = call i32 @up_write(i32* @nvmet_config_sem)
  %18 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @request_module(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 @down_write(i32* @nvmet_config_sem)
  %24 = load %struct.nvmet_fabrics_ops**, %struct.nvmet_fabrics_ops*** @nvmet_transports, align 8
  %25 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %26 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %24, i64 %28
  %30 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %29, align 8
  store %struct.nvmet_fabrics_ops* %30, %struct.nvmet_fabrics_ops** %4, align 8
  %31 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %32 = icmp ne %struct.nvmet_fabrics_ops* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %16
  %34 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %35 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %80

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %44 = getelementptr inbounds %struct.nvmet_fabrics_ops, %struct.nvmet_fabrics_ops* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @try_module_get(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %42
  %52 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %53 = getelementptr inbounds %struct.nvmet_fabrics_ops, %struct.nvmet_fabrics_ops* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.nvmet_port*)**
  %55 = load i32 (%struct.nvmet_port*)*, i32 (%struct.nvmet_port*)** %54, align 8
  %56 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %57 = call i32 %55(%struct.nvmet_port* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %62 = getelementptr inbounds %struct.nvmet_fabrics_ops, %struct.nvmet_fabrics_ops* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @module_put(i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %51
  %67 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %68 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %73 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %76 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %4, align 8
  %78 = load %struct.nvmet_port*, %struct.nvmet_port** %3, align 8
  %79 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %78, i32 0, i32 2
  store %struct.nvmet_fabrics_ops* %77, %struct.nvmet_fabrics_ops** %79, align 8
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %60, %48, %33
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @request_module(i8*, i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
