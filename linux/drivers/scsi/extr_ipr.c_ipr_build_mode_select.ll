; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_build_mode_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_build_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.ipr_ioarcb }
%struct.ipr_ioarcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8**, i32, i32 }

@IPR_RQTYPE_SCSICDB = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_WRITE_NOT_READ = common dso_local global i32 0, align 4
@MODE_SELECT = common dso_local global i8* null, align 8
@IPR_IOADL_FLAGS_WRITE_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, i32, i8*, i32, i8*)* @ipr_build_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_build_mode_select(%struct.ipr_cmnd* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ipr_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ipr_ioarcb*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %6, align 8
  %13 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %12, i32 0, i32 0
  store %struct.ipr_ioarcb* %13, %struct.ipr_ioarcb** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %16 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @IPR_RQTYPE_SCSICDB, align 4
  %18 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %19 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @IPR_FLAGS_HI_WRITE_NOT_READ, align 4
  %22 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %23 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 8
  %27 = load i8*, i8** @MODE_SELECT, align 8
  %28 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %29 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %27, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %35 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %33, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %11, align 8
  %41 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 4
  store i8* %39, i8** %44, align 8
  %45 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @IPR_IOADL_FLAGS_WRITE_LAST, align 4
  %49 = call i32 @ipr_init_ioadl(%struct.ipr_cmnd* %45, i32 %46, i8* %47, i32 %48)
  ret void
}

declare dso_local i32 @ipr_init_ioadl(%struct.ipr_cmnd*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
