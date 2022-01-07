; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_discovery.c_nvmet_set_disc_traddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_discovery.c_nvmet_set_disc_traddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_req = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)* }
%struct.nvmet_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NVMF_TRADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_req*, %struct.nvmet_port*, i8*)* @nvmet_set_disc_traddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_set_disc_traddr(%struct.nvmet_req* %0, %struct.nvmet_port* %1, i8* %2) #0 {
  %4 = alloca %struct.nvmet_req*, align 8
  %5 = alloca %struct.nvmet_port*, align 8
  %6 = alloca i8*, align 8
  store %struct.nvmet_req* %0, %struct.nvmet_req** %4, align 8
  store %struct.nvmet_port* %1, %struct.nvmet_port** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %8 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)*, i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)** %10, align 8
  %12 = icmp ne i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %15 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)*, i32 (%struct.nvmet_req*, %struct.nvmet_port*, i8*)** %17, align 8
  %19 = load %struct.nvmet_req*, %struct.nvmet_req** %4, align 8
  %20 = load %struct.nvmet_port*, %struct.nvmet_port** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 %18(%struct.nvmet_req* %19, %struct.nvmet_port* %20, i8* %21)
  br label %31

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.nvmet_port*, %struct.nvmet_port** %5, align 8
  %26 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NVMF_TRADDR_SIZE, align 4
  %30 = call i32 @memcpy(i8* %24, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
