; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_register_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_register_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fabrics_ops = type { i64 }

@nvmet_config_sem = common dso_local global i32 0, align 4
@nvmet_transports = common dso_local global %struct.nvmet_fabrics_ops** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_register_transport(%struct.nvmet_fabrics_ops* %0) #0 {
  %2 = alloca %struct.nvmet_fabrics_ops*, align 8
  %3 = alloca i32, align 4
  store %struct.nvmet_fabrics_ops* %0, %struct.nvmet_fabrics_ops** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @down_write(i32* @nvmet_config_sem)
  %5 = load %struct.nvmet_fabrics_ops**, %struct.nvmet_fabrics_ops*** @nvmet_transports, align 8
  %6 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_fabrics_ops, %struct.nvmet_fabrics_ops* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %5, i64 %8
  %10 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %9, align 8
  %11 = icmp ne %struct.nvmet_fabrics_ops* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %2, align 8
  %17 = load %struct.nvmet_fabrics_ops**, %struct.nvmet_fabrics_ops*** @nvmet_transports, align 8
  %18 = load %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %2, align 8
  %19 = getelementptr inbounds %struct.nvmet_fabrics_ops, %struct.nvmet_fabrics_ops* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.nvmet_fabrics_ops*, %struct.nvmet_fabrics_ops** %17, i64 %20
  store %struct.nvmet_fabrics_ops* %16, %struct.nvmet_fabrics_ops** %21, align 8
  br label %22

22:                                               ; preds = %15, %12
  %23 = call i32 @up_write(i32* @nvmet_config_sem)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
