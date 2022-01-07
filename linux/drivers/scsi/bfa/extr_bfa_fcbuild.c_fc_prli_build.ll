; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_prli_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fchs_s = type { i32 }
%struct.fc_prli_s = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@prli_tmpl = common dso_local global i32 0, align 4
@FC_ELS_PRLI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_prli_build(%struct.fchs_s* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fc_prli_s*, align 8
  store %struct.fchs_s* %0, %struct.fchs_s** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.fc_prli_s*
  store %struct.fc_prli_s* %13, %struct.fc_prli_s** %11, align 8
  %14 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @fc_els_req_build(%struct.fchs_s* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %20 = call i32 @memcpy(%struct.fc_prli_s* %19, i32* @prli_tmpl, i32 32)
  %21 = load i32, i32* @FC_ELS_PRLI, align 4
  %22 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %23 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %25 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %29 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %33 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %37 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.fc_prli_s*, %struct.fc_prli_s** %11, align 8
  %41 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  ret i32 32
}

declare dso_local i32 @fc_els_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fc_prli_s*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
