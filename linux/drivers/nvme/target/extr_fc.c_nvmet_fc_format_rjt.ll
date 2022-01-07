; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_format_rjt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_format_rjt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcnvme_ls_rjt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }

@FCNVME_LSDESC_RQST = common dso_local global i32 0, align 4
@FCNVME_LSDESC_RJT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*, i8*, i8*)* @nvmet_fc_format_rjt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_fc_format_rjt(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.fcnvme_ls_rjt*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.fcnvme_ls_rjt*
  store %struct.fcnvme_ls_rjt* %15, %struct.fcnvme_ls_rjt** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @FCNVME_LSDESC_RQST, align 4
  %18 = call i32 @fcnvme_lsdesc_len(i32 32)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @nvmet_fc_format_rsp_hdr(i8* %16, i32 %17, i32 %18, i8* %19)
  %21 = load i32, i32* @FCNVME_LSDESC_RJT, align 4
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %13, align 8
  %24 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = call i32 @fcnvme_lsdesc_len(i32 4)
  %27 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %13, align 8
  %28 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %13, align 8
  %32 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %13, align 8
  %36 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.fcnvme_ls_rjt*, %struct.fcnvme_ls_rjt** %13, align 8
  %40 = getelementptr inbounds %struct.fcnvme_ls_rjt, %struct.fcnvme_ls_rjt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  ret i32 32
}

declare dso_local i32 @nvmet_fc_format_rsp_hdr(i8*, i32, i32, i8*) #1

declare dso_local i32 @fcnvme_lsdesc_len(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
