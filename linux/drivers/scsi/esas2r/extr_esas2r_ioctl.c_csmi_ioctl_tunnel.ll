; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_csmi_ioctl_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_ioctl.c_csmi_ioctl_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%union.atto_ioctl_csmi = type { i32 }
%struct.esas2r_request = type { i32, i32, %union.atto_ioctl_csmi*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.atto_vda_ioctl_req }
%struct.TYPE_5__ = type { i32 }
%struct.atto_vda_ioctl_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.esas2r_sg_context = type { i32 }

@AF_DEGRADED_MODE = common dso_local global i32 0, align 4
@VDA_IOCTL_CSMI = common dso_local global i32 0, align 4
@esas2r_csmi_ioctl_tunnel_comp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %union.atto_ioctl_csmi*, %struct.esas2r_request*, %struct.esas2r_sg_context*, i32, i32)* @csmi_ioctl_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csmi_ioctl_tunnel(%struct.esas2r_adapter* %0, %union.atto_ioctl_csmi* %1, %struct.esas2r_request* %2, %struct.esas2r_sg_context* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.esas2r_adapter*, align 8
  %9 = alloca %union.atto_ioctl_csmi*, align 8
  %10 = alloca %struct.esas2r_request*, align 8
  %11 = alloca %struct.esas2r_sg_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.atto_vda_ioctl_req*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %8, align 8
  store %union.atto_ioctl_csmi* %1, %union.atto_ioctl_csmi** %9, align 8
  store %struct.esas2r_request* %2, %struct.esas2r_request** %10, align 8
  store %struct.esas2r_sg_context* %3, %struct.esas2r_sg_context** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %16 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store %struct.atto_vda_ioctl_req* %18, %struct.atto_vda_ioctl_req** %14, align 8
  %19 = load i32, i32* @AF_DEGRADED_MODE, align 4
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %84

25:                                               ; preds = %6
  %26 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %11, align 8
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %29 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %30 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.atto_vda_ioctl_req, %struct.atto_vda_ioctl_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @esas2r_sgc_init(%struct.esas2r_sg_context* %26, %struct.esas2r_adapter* %27, %struct.esas2r_request* %28, i32 %34)
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %37 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %38 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %11, align 8
  %39 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VDA_IOCTL_CSMI, align 4
  %42 = call i32 @esas2r_build_ioctl_req(%struct.esas2r_adapter* %36, %struct.esas2r_request* %37, i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.atto_vda_ioctl_req*, %struct.atto_vda_ioctl_req** %14, align 8
  %46 = getelementptr inbounds %struct.atto_vda_ioctl_req, %struct.atto_vda_ioctl_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @cpu_to_le16(i32 %48)
  %50 = load %struct.atto_vda_ioctl_req*, %struct.atto_vda_ioctl_req** %14, align 8
  %51 = getelementptr inbounds %struct.atto_vda_ioctl_req, %struct.atto_vda_ioctl_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %54 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = load %struct.atto_vda_ioctl_req*, %struct.atto_vda_ioctl_req** %14, align 8
  %61 = getelementptr inbounds %struct.atto_vda_ioctl_req, %struct.atto_vda_ioctl_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %union.atto_ioctl_csmi*, %union.atto_ioctl_csmi** %9, align 8
  %64 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %65 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %64, i32 0, i32 2
  store %union.atto_ioctl_csmi* %63, %union.atto_ioctl_csmi** %65, align 8
  %66 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %67 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %70 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @esas2r_csmi_ioctl_tunnel_comp_cb, align 4
  %72 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %73 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %75 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %76 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %11, align 8
  %77 = call i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %74, %struct.esas2r_request* %75, %struct.esas2r_sg_context* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %84

80:                                               ; preds = %25
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %8, align 8
  %82 = load %struct.esas2r_request*, %struct.esas2r_request** %10, align 8
  %83 = call i32 @esas2r_start_request(%struct.esas2r_adapter* %81, %struct.esas2r_request* %82)
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %79, %24
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_sgc_init(%struct.esas2r_sg_context*, %struct.esas2r_adapter*, %struct.esas2r_request*, i32) #1

declare dso_local i32 @esas2r_build_ioctl_req(%struct.esas2r_adapter*, %struct.esas2r_request*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @esas2r_build_sg_list(%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*) #1

declare dso_local i32 @esas2r_start_request(%struct.esas2r_adapter*, %struct.esas2r_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
