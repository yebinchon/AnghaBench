; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_smp_ioctl_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_smp_ioctl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.esas2r_sg_context = type { i32 }
%struct.atto_ioctl_smp = type { i32 }

@esas2r_buffered_ioctl = common dso_local global i64 0, align 8
@VDA_IOCTL_SMP = common dso_local global i32 0, align 4
@ATTO_STS_OUT_OF_RSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*, i8*)* @smp_ioctl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_ioctl_callback(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, %struct.esas2r_sg_context* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.esas2r_request*, align 8
  %8 = alloca %struct.esas2r_sg_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.atto_ioctl_smp*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %7, align 8
  store %struct.esas2r_sg_context* %2, %struct.esas2r_sg_context** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* @esas2r_buffered_ioctl, align 8
  %12 = inttoptr i64 %11 to %struct.atto_ioctl_smp*
  store %struct.atto_ioctl_smp* %12, %struct.atto_ioctl_smp** %10, align 8
  %13 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %8, align 8
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %15 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %17 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @esas2r_sgc_init(%struct.esas2r_sg_context* %13, %struct.esas2r_adapter* %14, %struct.esas2r_request* %15, i32 %21)
  %23 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %24 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %25 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %8, align 8
  %26 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VDA_IOCTL_SMP, align 4
  %29 = call i32 @esas2r_build_ioctl_req(%struct.esas2r_adapter* %23, %struct.esas2r_request* %24, i32 %27, i32 %28)
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %31 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %32 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %8, align 8
  %33 = call i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %30, %struct.esas2r_request* %31, %struct.esas2r_sg_context* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ATTO_STS_OUT_OF_RSRC, align 4
  %37 = load %struct.atto_ioctl_smp*, %struct.atto_ioctl_smp** %10, align 8
  %38 = getelementptr inbounds %struct.atto_ioctl_smp, %struct.atto_ioctl_smp* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %6, align 8
  %41 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %42 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %40, %struct.esas2r_request* %41)
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %5, align 4
  ret i32 %44
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
