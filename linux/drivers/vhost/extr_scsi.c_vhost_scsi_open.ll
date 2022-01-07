; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_scsi* }
%struct.vhost_scsi = type { i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@VHOST_SCSI_MAX_VQ = common dso_local global i32 0, align 4
@vhost_scsi_complete_cmd_work = common dso_local global i32 0, align 4
@vhost_scsi_evt_work = common dso_local global i32 0, align 4
@VHOST_SCSI_VQ_CTL = common dso_local global i64 0, align 8
@VHOST_SCSI_VQ_EVT = common dso_local global i64 0, align 8
@vhost_scsi_ctl_handle_kick = common dso_local global i32 0, align 4
@vhost_scsi_evt_handle_kick = common dso_local global i32 0, align 4
@VHOST_SCSI_VQ_IO = common dso_local global i32 0, align 4
@vhost_scsi_handle_kick = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i32 0, align 4
@VHOST_SCSI_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_scsi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vhost_scsi*, align 8
  %7 = alloca %struct.vhost_virtqueue**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.vhost_scsi* @kzalloc(i32 32, i32 %16)
  store %struct.vhost_scsi* %17, %struct.vhost_scsi** %6, align 8
  %18 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %19 = icmp ne %struct.vhost_scsi* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = call %struct.vhost_scsi* @vzalloc(i32 32)
  store %struct.vhost_scsi* %21, %struct.vhost_scsi** %6, align 8
  %22 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %23 = icmp ne %struct.vhost_scsi* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %125

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.vhost_virtqueue** @kmalloc_array(i32 %27, i32 8, i32 %28)
  store %struct.vhost_virtqueue** %29, %struct.vhost_virtqueue*** %7, align 8
  %30 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %7, align 8
  %31 = icmp ne %struct.vhost_virtqueue** %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %122

33:                                               ; preds = %26
  %34 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %35 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %34, i32 0, i32 5
  %36 = load i32, i32* @vhost_scsi_complete_cmd_work, align 4
  %37 = call i32 @vhost_work_init(i32* %35, i32 %36)
  %38 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %39 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %38, i32 0, i32 4
  %40 = load i32, i32* @vhost_scsi_evt_work, align 4
  %41 = call i32 @vhost_work_init(i32* %39, i32 %40)
  %42 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %43 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %45 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %47 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* @VHOST_SCSI_VQ_CTL, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %7, align 8
  %53 = load i64, i64* @VHOST_SCSI_VQ_CTL, align 8
  %54 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %52, i64 %53
  store %struct.vhost_virtqueue* %51, %struct.vhost_virtqueue** %54, align 8
  %55 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %56 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @VHOST_SCSI_VQ_EVT, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %7, align 8
  %62 = load i64, i64* @VHOST_SCSI_VQ_EVT, align 8
  %63 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %61, i64 %62
  store %struct.vhost_virtqueue* %60, %struct.vhost_virtqueue** %63, align 8
  %64 = load i32, i32* @vhost_scsi_ctl_handle_kick, align 4
  %65 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %66 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @VHOST_SCSI_VQ_CTL, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  %72 = load i32, i32* @vhost_scsi_evt_handle_kick, align 4
  %73 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %74 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @VHOST_SCSI_VQ_EVT, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* @VHOST_SCSI_VQ_IO, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %106, %33
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %87 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %93, i64 %95
  store %struct.vhost_virtqueue* %92, %struct.vhost_virtqueue** %96, align 8
  %97 = load i32, i32* @vhost_scsi_handle_kick, align 4
  %98 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %99 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %104, i32 0, i32 0
  store i32 %97, i32* %105, align 4
  br label %106

106:                                              ; preds = %85
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %81

109:                                              ; preds = %81
  %110 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %111 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %110, i32 0, i32 1
  %112 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %7, align 8
  %113 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %114 = load i32, i32* @UIO_MAXIOV, align 4
  %115 = load i32, i32* @VHOST_SCSI_WEIGHT, align 4
  %116 = call i32 @vhost_dev_init(i32* %111, %struct.vhost_virtqueue** %112, i32 %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %118 = call i32 @vhost_scsi_init_inflight(%struct.vhost_scsi* %117, i32* null)
  %119 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 0
  store %struct.vhost_scsi* %119, %struct.vhost_scsi** %121, align 8
  store i32 0, i32* %3, align 4
  br label %127

122:                                              ; preds = %32
  %123 = load %struct.vhost_scsi*, %struct.vhost_scsi** %6, align 8
  %124 = call i32 @kvfree(%struct.vhost_scsi* %123)
  br label %125

125:                                              ; preds = %122, %24
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %109
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.vhost_scsi* @kzalloc(i32, i32) #1

declare dso_local %struct.vhost_scsi* @vzalloc(i32) #1

declare dso_local %struct.vhost_virtqueue** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @vhost_work_init(i32*, i32) #1

declare dso_local i32 @vhost_dev_init(i32*, %struct.vhost_virtqueue**, i32, i32, i32, i32) #1

declare dso_local i32 @vhost_scsi_init_inflight(%struct.vhost_scsi*, i32*) #1

declare dso_local i32 @kvfree(%struct.vhost_scsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
