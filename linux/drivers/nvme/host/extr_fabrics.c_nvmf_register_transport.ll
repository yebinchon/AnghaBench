; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_register_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_register_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmf_transport_ops = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nvmf_transports_rwsem = common dso_local global i32 0, align 4
@nvmf_transports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_register_transport(%struct.nvmf_transport_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmf_transport_ops*, align 8
  store %struct.nvmf_transport_ops* %0, %struct.nvmf_transport_ops** %3, align 8
  %4 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %3, align 8
  %5 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = call i32 @down_write(i32* @nvmf_transports_rwsem)
  %13 = load %struct.nvmf_transport_ops*, %struct.nvmf_transport_ops** %3, align 8
  %14 = getelementptr inbounds %struct.nvmf_transport_ops, %struct.nvmf_transport_ops* %13, i32 0, i32 0
  %15 = call i32 @list_add_tail(i32* %14, i32* @nvmf_transports)
  %16 = call i32 @up_write(i32* @nvmf_transports_rwsem)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
