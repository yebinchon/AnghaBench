; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_get_config_mvfrey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_get_config_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hpt_iop_request_get_config* }
%struct.hpt_iop_request_get_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@IOP_REQUEST_TYPE_GET_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, %struct.hpt_iop_request_get_config*)* @iop_get_config_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_get_config_mvfrey(%struct.hptiop_hba* %0, %struct.hpt_iop_request_get_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_get_config*, align 8
  %6 = alloca %struct.hpt_iop_request_get_config*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store %struct.hpt_iop_request_get_config* %1, %struct.hpt_iop_request_get_config** %5, align 8
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %10, align 8
  store %struct.hpt_iop_request_get_config* %11, %struct.hpt_iop_request_get_config** %6, align 8
  %12 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %13 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 56
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %20 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IOP_REQUEST_TYPE_GET_CONFIG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %31 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %36 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %41 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %43 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %46 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %48 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %51 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %53 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %56 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %58 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %61 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %63 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %66 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %6, align 8
  %68 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.hpt_iop_request_get_config*, %struct.hpt_iop_request_get_config** %5, align 8
  %71 = getelementptr inbounds %struct.hpt_iop_request_get_config, %struct.hpt_iop_request_get_config* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %26, %25
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
