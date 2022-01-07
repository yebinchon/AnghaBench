; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_first_pend_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_first_pend_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_ctrl_blk = type { i64, i64, i64, %struct.scsi_ctrl_blk* }
%struct.initio_host = type { i64*, i64*, %struct.TYPE_2__*, %struct.scsi_ctrl_blk* }
%struct.TYPE_2__ = type { i32 }

@ExecSCSI = common dso_local global i64 0, align 8
@TCF_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_ctrl_blk* (%struct.initio_host*)* @initio_find_first_pend_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_ctrl_blk* @initio_find_first_pend_scb(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.scsi_ctrl_blk*, align 8
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %6 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %5, i32 0, i32 3
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %7, %struct.scsi_ctrl_blk** %4, align 8
  br label %8

8:                                                ; preds = %88, %82, %1
  %9 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %10 = icmp ne %struct.scsi_ctrl_blk* %9, null
  br i1 %10, label %11, label %92

11:                                               ; preds = %8
  %12 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ExecSCSI, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  store %struct.scsi_ctrl_blk* %18, %struct.scsi_ctrl_blk** %2, align 8
  br label %94

19:                                               ; preds = %11
  %20 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %26 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %24
  %35 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %36 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TCF_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  store %struct.scsi_ctrl_blk* %48, %struct.scsi_ctrl_blk** %2, align 8
  br label %94

49:                                               ; preds = %34, %24
  br label %88

50:                                               ; preds = %19
  %51 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %52 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %60 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %58, %66
  %68 = zext i1 %67 to i32
  %69 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %70 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TCF_BUSY, align 4
  %79 = and i32 %77, %78
  %80 = or i32 %68, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %50
  %83 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %83, i32 0, i32 3
  %85 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %84, align 8
  store %struct.scsi_ctrl_blk* %85, %struct.scsi_ctrl_blk** %4, align 8
  br label %8

86:                                               ; preds = %50
  %87 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  store %struct.scsi_ctrl_blk* %87, %struct.scsi_ctrl_blk** %2, align 8
  br label %94

88:                                               ; preds = %49
  %89 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %90 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %89, i32 0, i32 3
  %91 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %90, align 8
  store %struct.scsi_ctrl_blk* %91, %struct.scsi_ctrl_blk** %4, align 8
  br label %8

92:                                               ; preds = %8
  %93 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  store %struct.scsi_ctrl_blk* %93, %struct.scsi_ctrl_blk** %2, align 8
  br label %94

94:                                               ; preds = %92, %86, %47, %17
  %95 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %2, align 8
  ret %struct.scsi_ctrl_blk* %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
