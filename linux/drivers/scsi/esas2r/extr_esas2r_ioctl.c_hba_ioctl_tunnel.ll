; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_hba_ioctl_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_hba_ioctl_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.atto_ioctl = type { i32 }
%struct.esas2r_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.esas2r_sg_context = type { i32 }

@VDA_IOCTL_HBA = common dso_local global i32 0, align 4
@ATTO_STS_OUT_OF_RSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.atto_ioctl*, %struct.esas2r_request*, %struct.esas2r_sg_context*)* @hba_ioctl_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hba_ioctl_tunnel(%struct.esas2r_adapter* %0, %struct.atto_ioctl* %1, %struct.esas2r_request* %2, %struct.esas2r_sg_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.atto_ioctl*, align 8
  %8 = alloca %struct.esas2r_request*, align 8
  %9 = alloca %struct.esas2r_sg_context*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.atto_ioctl* %1, %struct.atto_ioctl** %7, align 8
  store %struct.esas2r_request* %2, %struct.esas2r_request** %8, align 8
  store %struct.esas2r_sg_context* %3, %struct.esas2r_sg_context** %9, align 8
  %10 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %13 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %14 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @esas2r_sgc_init(%struct.esas2r_sg_context* %10, %struct.esas2r_adapter* %11, %struct.esas2r_request* %12, i32 %18)
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %21 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %22 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %23 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VDA_IOCTL_HBA, align 4
  %26 = call i32 @esas2r_build_ioctl_req(%struct.esas2r_adapter* %20, %struct.esas2r_request* %21, i32 %24, i32 %25)
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %29 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %9, align 8
  %30 = call i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %27, %struct.esas2r_request* %28, %struct.esas2r_sg_context* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ATTO_STS_OUT_OF_RSRC, align 4
  %34 = load %struct.atto_ioctl*, %struct.atto_ioctl** %7, align 8
  %35 = getelementptr inbounds %struct.atto_ioctl, %struct.atto_ioctl* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %38 = load %struct.esas2r_request*, %struct.esas2r_request** %8, align 8
  %39 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %37, %struct.esas2r_request* %38)
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @esas2r_sgc_init(%struct.esas2r_sg_context*, %struct.esas2r_adapter*, %struct.esas2r_request*, i32) #1

declare dso_local i32 @esas2r_build_ioctl_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32, i32) #1

declare dso_local i32 @esas2r_build_sg_list(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

declare dso_local i32 @esas2r_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
