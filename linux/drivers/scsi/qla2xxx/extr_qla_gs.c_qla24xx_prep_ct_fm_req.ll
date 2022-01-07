; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_prep_ct_fm_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla24xx_prep_ct_fm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_sns_req = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ct_sns_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ct_sns_req }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ct_sns_req* (%struct.ct_sns_pkt*, i32, i32)* @qla24xx_prep_ct_fm_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ct_sns_req* @qla24xx_prep_ct_fm_req(%struct.ct_sns_pkt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ct_sns_pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ct_sns_pkt* %0, %struct.ct_sns_pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %8 = call i32 @memset(%struct.ct_sns_pkt* %7, i32 0, i32 32)
  %9 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %10 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %15 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 250, i32* %18, align 4
  %19 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %20 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @cpu_to_be16(i32 %24)
  %26 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %27 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 16
  %32 = sdiv i32 %31, 4
  %33 = call i8* @cpu_to_be16(i32 %32)
  %34 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %35 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %4, align 8
  %39 = getelementptr inbounds %struct.ct_sns_pkt, %struct.ct_sns_pkt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  ret %struct.ct_sns_req* %40
}

declare dso_local i32 @memset(%struct.ct_sns_pkt*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
