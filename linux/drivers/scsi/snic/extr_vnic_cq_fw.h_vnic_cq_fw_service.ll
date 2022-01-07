; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_cq_fw.h_vnic_cq_fw_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_vnic_cq_fw.h_vnic_cq_fw_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_cq = type { i32, i32, %struct.vnic_dev*, i32, %struct.TYPE_2__ }
%struct.vnic_dev = type opaque
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.snic_fw_req = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_cq*, i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)*, i32)* @vnic_cq_fw_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_cq_fw_service(%struct.vnic_cq* %0, i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)* %1, i32 %2) #0 {
  %4 = alloca %struct.vnic_cq*, align 8
  %5 = alloca i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snic_fw_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_cq* %0, %struct.vnic_cq** %4, align 8
  store i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)* %1, i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %11 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %16 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %20 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %14, i64 %23
  %25 = bitcast i32* %24 to %struct.snic_fw_req*
  store %struct.snic_fw_req* %25, %struct.snic_fw_req** %7, align 8
  %26 = load %struct.snic_fw_req*, %struct.snic_fw_req** %7, align 8
  %27 = call i32 @snic_color_dec(%struct.snic_fw_req* %26, i32* %9)
  br label %28

28:                                               ; preds = %95, %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %31 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %28
  %35 = load i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)*, i32 (%struct.vnic_dev*, i32, %struct.snic_fw_req*)** %5, align 8
  %36 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %37 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %36, i32 0, i32 2
  %38 = load %struct.vnic_dev*, %struct.vnic_dev** %37, align 8
  %39 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %40 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snic_fw_req*, %struct.snic_fw_req** %7, align 8
  %43 = call i32 %35(%struct.vnic_dev* %38, i32 %41, %struct.snic_fw_req* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %96

46:                                               ; preds = %34
  %47 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %48 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %52 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %55 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %46
  %60 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %61 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %63 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %69 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %46
  %71 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %72 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %77 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vnic_cq*, %struct.vnic_cq** %4, align 8
  %81 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %75, i64 %84
  %86 = bitcast i32* %85 to %struct.snic_fw_req*
  store %struct.snic_fw_req* %86, %struct.snic_fw_req** %7, align 8
  %87 = load %struct.snic_fw_req*, %struct.snic_fw_req** %7, align 8
  %88 = call i32 @snic_color_dec(%struct.snic_fw_req* %87, i32* %9)
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp uge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %96

95:                                               ; preds = %70
  br label %28

96:                                               ; preds = %94, %45, %28
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @snic_color_dec(%struct.snic_fw_req*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
