; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_esas2r_build_cfg_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_esas2r_build_cfg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.atto_vda_cfg_req }
%struct.TYPE_3__ = type { i32 }
%struct.atto_vda_cfg_req = type { i32, i32, i32 }

@VDA_FUNC_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_build_cfg_req(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.esas2r_adapter*, align 8
  %7 = alloca %struct.esas2r_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.atto_vda_cfg_req*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %6, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %13 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.atto_vda_cfg_req* %15, %struct.atto_vda_cfg_req** %11, align 8
  %16 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %17 = call i32 @clear_vda_request(%struct.esas2r_request* %16)
  %18 = load i32, i32* @VDA_FUNC_CFG, align 4
  %19 = load %struct.esas2r_request*, %struct.esas2r_request** %7, align 8
  %20 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.atto_vda_cfg_req*, %struct.atto_vda_cfg_req** %11, align 8
  %26 = getelementptr inbounds %struct.atto_vda_cfg_req, %struct.atto_vda_cfg_req* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.atto_vda_cfg_req*, %struct.atto_vda_cfg_req** %11, align 8
  %30 = getelementptr inbounds %struct.atto_vda_cfg_req, %struct.atto_vda_cfg_req* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @esas2r_nuxi_cfg_data(i32 %34, i8* %35)
  %37 = load %struct.atto_vda_cfg_req*, %struct.atto_vda_cfg_req** %11, align 8
  %38 = getelementptr inbounds %struct.atto_vda_cfg_req, %struct.atto_vda_cfg_req* %37, i32 0, i32 0
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @memcpy(i32* %38, i8* %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @clear_vda_request(%struct.esas2r_request*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @esas2r_nuxi_cfg_data(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
