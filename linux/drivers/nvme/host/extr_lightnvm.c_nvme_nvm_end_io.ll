; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.nvm_rq* }
%struct.nvm_rq = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @nvme_nvm_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_nvm_end_io(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_rq*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  store %struct.nvm_rq* %8, %struct.nvm_rq** %5, align 8
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call %struct.TYPE_4__* @nvme_req(%struct.request* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le64_to_cpu(i32 %13)
  %15 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = call %struct.TYPE_4__* @nvme_req(%struct.request* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %22 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nvm_rq*, %struct.nvm_rq** %5, align 8
  %24 = call i32 @nvm_end_io(%struct.nvm_rq* %23)
  %25 = load %struct.request*, %struct.request** %3, align 8
  %26 = call %struct.TYPE_4__* @nvme_req(%struct.request* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = call i32 @blk_mq_free_request(%struct.request* %30)
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @nvme_req(%struct.request*) #1

declare dso_local i32 @nvm_end_io(%struct.nvm_rq*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @blk_mq_free_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
