; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_send_ls_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_send_ls_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmefc_ls_req = type { i32 }
%struct.nvmefc_ls_req_op = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmefc_ls_req*, i32)* @nvme_fc_send_ls_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_send_ls_req_done(%struct.nvmefc_ls_req* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmefc_ls_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvmefc_ls_req_op*, align 8
  store %struct.nvmefc_ls_req* %0, %struct.nvmefc_ls_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %3, align 8
  %7 = call %struct.nvmefc_ls_req_op* @ls_req_to_lsop(%struct.nvmefc_ls_req* %6)
  store %struct.nvmefc_ls_req_op* %7, %struct.nvmefc_ls_req_op** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %10 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %12 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %11, i32 0, i32 1
  %13 = call i32 @complete(i32* %12)
  ret void
}

declare dso_local %struct.nvmefc_ls_req_op* @ls_req_to_lsop(%struct.nvmefc_ls_req*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
